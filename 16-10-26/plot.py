import numpy as np
import matplotlib.pyplot as plt

# Wall times in ms
times = {
    "Baseline":   [190, 180, 130, 110, 110, 180, 110, 120, 110, 180],
    "Cache hit":  [110, 60, 60, 70, 120, 50, 70, 70, 100, 110],
    "Cache miss": [210, 210, 130, 200, 120, 120, 130, 130, 120, 200],
}

# (abc %, read_verilog %) per run
pct = {
    "Baseline": [(60,28),(61,27),(61,28),(61,28),(60,29),(60,28),(60,29),(61,28),(61,28),(60,28)],
    "Cache hit": [(19,56),(17,61),(17,61),(17,61),(19,57),(19,59),(16,61),(17,61),(17,58),(17,59)],
    "Cache miss": [(64,25),(63,26),(63,27),(63,25),(63,27),(63,26),(63,27),(63,27),(64,26),(63,25)],
}

labels = list(times)
colors = ["#888888", "#2a9d8f", "#e76f51"]

fig, (ax2, ax3) = plt.subplots(1, 2, figsize=(12, 5))

# 1) Wall time: box plot + individual runs
# data = [times[k] for k in labels]
# ax1.boxplot(data, label=labels, showmeans=True, widths=0.5)
# rng = np.random.default_rng(0)
# for i, (k, c) in enumerate(zip(labels, colors), start=1):
#     x = rng.normal(i, 0.05, len(times[k]))
#     ax1.scatter(x, times[k], color=c, alpha=0.8, zorder=3)
# ax1.set_ylabel("Wall time (ms)")
# ax1.set_title("Wall time per run (n=10)")
# ax1.grid(axis="y", alpha=0.3)

# 2) Mean wall time with std error bars
means = [np.mean(times[k]) for k in labels]
stds = [np.std(times[k], ddof=1) for k in labels]
bars = ax2.bar(labels, means, yerr=stds, capsize=6, color=colors)
for b, m in zip(bars, means):
    ax2.text(b.get_x() + b.get_width()/2, m + 3, f"{m:.0f} ms", ha="center", va="bottom")
ax2.set_ylabel("Mean wall time (ms)")
ax2.set_title("Mean ± std dev")
ax2.grid(axis="y", alpha=0.3)

# 3) Average % breakdown by command
abc = [np.mean([a for a, _ in pct[k]]) for k in labels]
rv  = [np.mean([r for _, r in pct[k]]) for k in labels]
other = [100 - a - r for a, r in zip(abc, rv)]
ax3.bar(labels, abc, label="abc", color="#e9c46a")
ax3.bar(labels, rv, bottom=abc, label="read_verilog", color="#264653")
ax3.bar(labels, other, bottom=[a + r for a, r in zip(abc, rv)], label="other", color="#cccccc")
ax3.set_ylabel("% of runtime")
ax3.set_title("Average time breakdown")
ax3.legend()

plt.tight_layout()
plt.savefig("yosys_cache_benchmark.png", dpi=150)
plt.show()

# Summary
base = np.mean(times["Baseline"])
for k in labels:
    m = np.mean(times[k])
    print(f"{k:11s} mean={m:6.1f} ms  median={np.median(times[k]):6.1f} ms  "
          f"vs baseline: {100*(m-base)/base:+.1f}%")
