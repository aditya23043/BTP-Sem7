#include <stdio.h>
#include <sys/dir.h>
#include <string.h>
#include <stdlib.h>

void modify_yosys_tcl(char* libs, char* ckt, char* topmodule);
void run_yosys(char* topname, char* lib);

int main(void)
{
	DIR* circuits_dir = opendir("circuits");
	struct dirent *ckt_entry;
	if(circuits_dir == NULL)
	{
		perror("Circuits dir not found");
		return 1;
	}

	DIR* libs_dir = opendir("libs");
	struct dirent *libs_entry;
	if(libs_dir == NULL)
	{
		perror("Circuits dir not found");
		return 1;
	}

	while((libs_entry = readdir(libs_dir)) != NULL)
	{
		char* libs = libs_entry->d_name;

		if(strcmp(libs, ".") == 0 || strcmp(libs, "..") == 0) continue;

		rewinddir(circuits_dir);
		while((ckt_entry = readdir(circuits_dir)) != NULL)
		{
			char* ckt = ckt_entry->d_name;
			// foreach ckt
			if(strcmp(ckt, ".") == 0 || strcmp(ckt, "..") == 0) continue;

			char *ckt_top_module = strdup(ckt);
			*strchr(ckt_top_module, '.') = '\0';

			modify_yosys_tcl(libs, ckt, ckt_top_module);

			run_yosys(ckt_top_module, libs);

			free(ckt_top_module);
		}
	}

	return 0;
}

void modify_yosys_tcl(char* libs, char* ckt, char* topmodule)
{
	FILE* yosys_tcl_file = fopen("yosys.tcl", "r");
	FILE* temp_file = fopen(".tmp", "w");
	char buf[1024];

	while(fgets(buf, sizeof(buf), yosys_tcl_file) != NULL)
	{
		if(strstr(buf, "read_verilog") != NULL)
		{
			fprintf(temp_file, "read_verilog circuits/%s\n", ckt);
		}
		else if(strstr(buf, "hierarchy -check -top") != NULL)
		{
			fprintf(temp_file, "hierarchy -check -top %s\n", topmodule);
		}
		else if(strstr(buf, "dfflibmap -liberty") != NULL)
		{
			fprintf(temp_file, "dfflibmap -liberty libs/%s\n", libs);
		}
		else if(strstr(buf, "abc -liberty") != NULL)
		{
			fprintf(temp_file, "abc -liberty libs/%s -constr constraints.sdc\n", libs);
		}
		else if(strstr(buf, "write_verilog") != NULL)
		{
			fprintf(temp_file, "write_verilog -noattr output/mapped_%s_%s\n", libs, ckt);
		}
		else
		{
			fputs(buf, temp_file);
		}
	}

	fclose(yosys_tcl_file);
	fclose(temp_file);

	if(rename(".tmp", "yosys.tcl") != 0)
	{
		perror("Rename from .tmp -> yosys.tcl failed");
		return;
	}
}

void run_yosys(char* topname, char* lib)
{
	FILE* yosys_cmd = popen("yosys -s yosys.tcl 2>&1", "r");
	char log_file_name[128];
	sprintf(log_file_name, "log/%s_%s", topname, lib);
	FILE* log_file = fopen(log_file_name, "w");

	int bufsz = 1024;
	char buf[bufsz];
	char* p;
	while(fgets(buf, bufsz, yosys_cmd) != NULL)
	{
		if((p = strstr(buf, "Area")) != NULL)
		{
			printf("Circuit: %s | Library: %s\n%s\n", topname, lib, p);
		}
		fputs(buf, log_file);
	}

	pclose(yosys_cmd);
	fclose(log_file);
}
