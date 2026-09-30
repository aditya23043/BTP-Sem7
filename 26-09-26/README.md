# Grepping in ABC directory to find useful functions

```bash
<<<

~/D/R/abc ❯❯❯                                                         yosys-experimental ✱
              grep -R "Nf_" src/map/mapper src/map/scl src/map/if
              grep -R "nf" src/map/mapper src/map/scl | head -100
              grep -R "Map_.*Best" src/map/mapper
              grep -R "Map_.*Area" src/map/mapper
              grep -R "Map_.*Delay" src/map/mapper
src/map/mapper/mapperMatch.c:    are set to be +infinity. So when we recover area, we try to find the
src/map/mapper/mapperMatch.c:    arrival times are less than the required times (+infinity) can be used.
src/map/mapper/mapperMatch.c:  the matching information is written into pMatch.]
src/map/mapper/mapperLib.c:  contains descriptions of supergates along with some relevant information.
src/map/mapper/mapperLib.c:        // prepare the info about the library
src/map/mapper/mapperLib.c:        Status = Map_LibraryDeriveGateInfo( p, NULL );
src/map/mapper/mapperSuper.c:    RetValue = fscanf( pFile, "%d\n", &pLib->nVarsMax );
src/map/mapper/mapperSuper.c:    RetValue = fscanf( pFile, "%d\n", &nGatesTotal );
Binary file src/map/mapper/mapperUtils.o matches
src/map/mapper/mapperTable.c:  accessible through its unfolded function (uTruth).]
Binary file src/map/mapper/mapperVec.o matches
Binary file src/map/mapper/mapperCutUtils.o matches
Binary file src/map/mapper/mapperRefs.o matches
Binary file src/map/mapper/mapperSwitch.o matches
Binary file src/map/mapper/mapperCut.o matches
Binary file src/map/mapper/.mapperMatch.c.swp matches
src/map/mapper/mapperTree.c:    RetValue = fscanf( pFile, "%d\n", &pLib->nVarsMax );
src/map/mapper/mapperTree.c:    RetValue = fscanf( pFile, "%d\n", &pLib->nSupersReal );
src/map/mapper/mapperTree.c:    RetValue = fscanf( pFile, "%d\n", &pLib->nLines );
src/map/mapper/mapperTree.c:    // prepare the info about the library
src/map/mapper/mapperTree.c:    return Map_LibraryDeriveGateInfo( pLib, tExcludeGate );
src/map/mapper/mapperTree.c:    RetValue = sscanf( pBuffer, "%d\n", &pLib->nVarsMax );
src/map/mapper/mapperTree.c:    RetValue = sscanf( pBuffer, "%d\n", &pLib->nSupersReal );
src/map/mapper/mapperTree.c:    RetValue = sscanf( pBuffer, "%d\n", &pLib->nLines );
src/map/mapper/mapperTree.c:    // prepare the info about the library
src/map/mapper/mapperTree.c:    return Map_LibraryDeriveGateInfo( pLib, tExcludeGate );
src/map/mapper/mapperTree.c:  Synopsis    [Derives information about the library.]
src/map/mapper/mapperTree.c:int Map_LibraryDeriveGateInfo( Map_SuperLib_t * pLib, st__table * tExcludeGate )
src/map/mapper/mapperTree.c:    // set all the derivable info related to the supergates
src/map/mapper/mapperTree.c:        // update the initial delay of the supergate using info from the corresponding pin
src/map/mapper/mapperTree.c:            // update the delay information of k-th fanins info from the corresponding pin
src/map/mapper/mapperTree.c:  it has been read into the mapper by "read_super" and all the information
src/map/mapper/mapperTree.c:    // print all the info related to the supergates
src/map/mapper/mapperTree.c:        // write the gate's fanin info and formula
src/map/mapper/mapperTree.c:        // write the gate's derived info
Binary file src/map/mapper/mapper.o matches
src/map/mapper/mapperInt.h:// macros to get hold of the bits in the support info
src/map/mapper/mapperInt.h:#define Map_InfoSetVar(p,i)     (p[(i)>>5] |=  (1<<((i) & 31)))
src/map/mapper/mapperInt.h:#define Map_InfoRemVar(p,i)     (p[(i)>>5] &= ~(1<<((i) & 31)))
src/map/mapper/mapperInt.h:#define Map_InfoFlipVar(p,i)    (p[(i)>>5] ^=  (1<<((i) & 31)))
src/map/mapper/mapperInt.h:#define Map_InfoReadVar(p,i)   ((p[(i)>>5]  &  (1<<((i) & 31))) > 0)
src/map/mapper/mapperInt.h:    // info about the original circuit
src/map/mapper/mapperInt.h:    // general info
src/map/mapper/mapperInt.h:    // other info
src/map/mapper/mapperInt.h:    // general information about the node
src/map/mapper/mapperInt.h:    // the delay information
src/map/mapper/mapperInt.h:    // misc information
src/map/mapper/mapperInt.h:    // information used for matching
src/map/mapper/mapperInt.h:    // information about the best selected match
src/map/mapper/mapperInt.h:    unsigned            uPhase;        // the phase to tranform it into the canonical form
src/map/mapper/mapperInt.h:extern int               Map_LibraryDeriveGateInfo( Map_SuperLib_t * pLib, st__table * tExcludeGate );
src/map/mapper/mapperInt.h:extern void              Map_MappingSetPlacementInfo( Map_Man_t * p );
Binary file src/map/mapper/mapperCreate.o matches
src/map/mapper/mapperUtils.c:    // extend this info for the rest of the first 5 variables
src/map/mapper/mapperUtils.c:            if ( Map_InfoReadVar( uTruths[v], m ) )
Binary file src/map/mapper/mapperCanon.o matches
Binary file src/map/mapper/mapperLib.o matches
Binary file src/map/mapper/mapperMatch.o matches
Binary file src/map/mapper/mapperSuper.o matches
Binary file src/map/mapper/mapperTime.o matches
Binary file src/map/mapper/mapperTable.o matches
Binary file src/map/mapper/mapperTruth.o matches
Binary file src/map/mapper/mapperCore.o matches
Binary file src/map/mapper/mapperTree.o matches
src/map/mapper/mapperCut.c:  cut is infeasible. Returns the resulting nodes in the array ppNodes[].]
src/map/mapper/mapperCut.c:  Description [Restarts the table by cleaning the info about cuts stored
src/map/mapper/mapperCreate.c:  information needed for mapping.]
src/map/mapper/mapperCreate.c:        // create the fanout info
src/map/scl/sclSize.c:  Synopsis    [Printing timing information for the node/network.]
src/map/scl/sclSize.c://        printf( "Timing information for all nodes: \n" );
src/map/scl/sclSize.c:  Synopsis    [Printing out timing information for the network.]
src/map/scl/sclSize.c:  Synopsis    [Printing out power information for the network.]
src/map/scl/sclSize.c:  Synopsis    [Printing out fanin information.]
src/map/scl/sclSize.c:  Synopsis    [Printing out buffer information.]
Binary file src/map/scl/sclBuffer.o matches
Binary file src/map/scl/scl.o matches
src/map/scl/sclLibUtil.c:  Synopsis    [Returns 1 if the library has delay info.]
src/map/scl/sclLibUtil.c:int Abc_SclHasDelayInfo( void * pScl )
Binary file src/map/scl/sclUtil.o matches
Binary file src/map/scl/sclUpsize.o matches
Binary file src/map/scl/sclLiberty.o matches
src/map/scl/sclLib.h:    int            unsupp;         // -- set to TRUE by parser if cell contains information we cannot handle
src/map/scl/sclLib.h:extern int           Abc_SclHasDelayInfo( void * pScl );
src/map/scl/sclBufSize.c:void Abc_NtkComputeFanoutInfo( Abc_Obj_t * pObj, float Slew )
src/map/scl/sclBufSize.c:    // set fanout info for the inverter
src/map/scl/sclBufSize.c:        Abc_NtkComputeFanoutInfo( pObj, p->pPars->Slew );
Binary file src/map/scl/sclLibUtil.o matches
src/map/scl/sclBuffer.c:    Diff = (*pp1)->Id - (*pp2)->Id; // needed to make qsort() platform-infependent
src/map/scl/scl.c:    fprintf( pAbc->Err, "\t-v       : toggle writing verbose information [default = %s]\n", fVerbose? "yes": "no" );
src/map/scl/scl.c:    fprintf( pAbc->Err, "\t-w       : toggle writing information about skipped gates [default = %s]\n", fVeryVerbose? "yes": "no" );
src/map/scl/scl.c:    fprintf( pAbc->Err, "\t-v       : toggle printing verbose information [default = %s]\n", fVerbose? "yes": "no" );
src/map/scl/scl.c:    fprintf( pAbc->Err, "\t-v       : toggle printing verbose information [default = %s]\n", fVerbose? "yes": "no" );
src/map/scl/scl.c:    fprintf( pAbc->Err, "\t-a     : display timing information for all nodes [default = %s]\n", fShowAll? "yes": "no" );
src/map/scl/scl.c:    fprintf( pAbc->Err, "\t-p     : display timing information for critical path [default = %s]\n", fPrintPath? "yes": "no" );
src/map/scl/scl.c:    fprintf( pAbc->Err, "\t-v       : toggle printing verbose information [default = %s]\n", fVerbose? "yes": "no" );
src/map/scl/scl.c:    fprintf( pAbc->Err, "\t-v       : toggle printing verbose information [default = %s]\n", fVerbose? "yes": "no" );
src/map/scl/scl.c:        Abc_Print( -1, "Fanin phase information is not available.\n" );
src/map/scl/scl.c:    if ( !pAbc->pLibScl || !Abc_SclHasDelayInfo(pAbc->pLibScl) )
src/map/scl/scl.c:        Abc_Print( -1, "Library delay info is not available.\n" );
src/map/scl/scl.c:    fprintf( pAbc->Err, "\t-v       : toggle printing verbose information [default = %s]\n", pPars->fVerbose? "yes": "no" );
src/map/mapper/mapperMatch.c:    Map_Match_t MatchBest, * pMatch = pCut->M + fPhase;
src/map/mapper/mapperMatch.c:            if ( Map_MatchCompare( p, &MatchBest, pMatch, p->fMappingMode ) )
src/map/mapper/mapperMatch.c:    Map_Match_t MatchBest, * pMatch;
src/map/mapper/mapperMatch.c:    Map_Cut_t * pCut, * pCutBest;
src/map/mapper/mapperMatch.c:        Map_TimeCutComputeArrival( pNode, pCutBest, fPhase, MAP_FLOAT_LARGE );
src/map/mapper/mapperMatch.c:            pMatch->AreaFlow = Area1 = Map_CutDeref( pCutBest, fPhase, p->fUseProfile );
src/map/mapper/mapperMatch.c:            pMatch->AreaFlow = Area1 = Map_CutGetAreaDerefed( pCutBest, fPhase );
src/map/mapper/mapperMatch.c:            pMatch->AreaFlow = Area1 = Map_SwitchCutDeref( pNode, pCutBest, fPhase );
src/map/mapper/mapperMatch.c:            pMatch->AreaFlow = Area1 = Map_SwitchCutGetDerefed( pNode, pCutBest, fPhase );
src/map/mapper/mapperMatch.c:        Map_MatchClean( &MatchBest );
src/map/mapper/mapperMatch.c:        if ( Map_MatchCompare( p, &MatchBest, pMatch, p->fMappingMode ) )
src/map/mapper/mapperMatch.c:            Area2 = Map_CutRef( pNode->pCutBest[fPhase], fPhase, p->fUseProfile );
src/map/mapper/mapperMatch.c:            Area2 = Map_SwitchCutRef( pNode, pNode->pCutBest[fPhase], fPhase );
src/map/mapper/mapperMatch.c:    Map_Match_t * pMatchBest0, * pMatchBest1;
src/map/mapper/mapperMatch.c:    tWorst0Using1 = Map_TimeMatchWithInverter( p, pMatchBest1 );
src/map/mapper/mapperMatch.c:    tWorst1Using0 = Map_TimeMatchWithInverter( p, pMatchBest0 );
src/map/mapper/mapperMatch.c:            Map_CutDeref( pNode->pCutBest[1], 1, p->fUseProfile );
src/map/mapper/mapperMatch.c:            Map_CutRef( pNode->pCutBest[0], 0, p->fUseProfile );
src/map/mapper/mapperMatch.c:            Map_CutDeref( pNode->pCutBest[0], 0, p->fUseProfile );
src/map/mapper/mapperMatch.c:            Map_CutRef( pNode->pCutBest[1], 1, p->fUseProfile );
Binary file src/map/mapper/mapperUtils.o matches
src/map/mapper/mapperTruth.c:            uTruth1[0] = ~Map_CutRegular(pTemp->pOne)->M[0].uPhaseBest;
src/map/mapper/mapperTruth.c:            uTruth1[1] = ~Map_CutRegular(pTemp->pOne)->M[1].uPhaseBest;
src/map/mapper/mapperTruth.c:            uTruth1[0] = Map_CutRegular(pTemp->pOne)->M[0].uPhaseBest;
src/map/mapper/mapperTruth.c:            uTruth1[1] = Map_CutRegular(pTemp->pOne)->M[1].uPhaseBest;
src/map/mapper/mapperTruth.c:            uTruth2[0] = ~Map_CutRegular(pTemp->pTwo)->M[0].uPhaseBest;
src/map/mapper/mapperTruth.c:            uTruth2[1] = ~Map_CutRegular(pTemp->pTwo)->M[1].uPhaseBest;
src/map/mapper/mapperTruth.c:            uTruth2[0] = Map_CutRegular(pTemp->pTwo)->M[0].uPhaseBest;
src/map/mapper/mapperTruth.c:            uTruth2[1] = Map_CutRegular(pTemp->pTwo)->M[1].uPhaseBest;
Binary file src/map/mapper/mapperVec.o matches
src/map/mapper/mapperTime.c:    Map_Super_t * pSuper = pM->pSuperBest;
src/map/mapper/mapperTime.c:            Map_MatchComputeReqTimes( pNode->pCutBest[0], 0, ptReqOutTest );
src/map/mapper/mapperTime.c:            Map_MatchComputeReqTimes( pNode->pCutBest[1], 1, ptReqOutTest );
Binary file src/map/mapper/mapperCutUtils.o matches
Binary file src/map/mapper/mapperRefs.o matches
Binary file src/map/mapper/mapperSwitch.o matches
Binary file src/map/mapper/mapperCut.o matches
Binary file src/map/mapper/.mapperMatch.c.swp matches
src/map/mapper/mapper.h:extern Map_Cut_t *     Map_NodeReadCutBest( Map_Node_t * p, int fPhase );
src/map/mapper/mapper.h:extern Map_Super_t *   Map_CutReadSuperBest( Map_Cut_t * p, int fPhase );
src/map/mapper/mapper.h:extern unsigned        Map_CutReadPhaseBest( Map_Cut_t * p, int fPhase );
Binary file src/map/mapper/mapper.o matches
src/map/mapper/mapperInt.h:    Map_Cut_t *         pCutBest[2];   // the best mapping for neg and pos phase
src/map/mapper/mapperInt.h:    Map_Super_t *       pSuperBest;    // the best supergate matched
Binary file src/map/mapper/mapperCreate.o matches
src/map/mapper/mapperUtils.c:            Map_TimeCutComputeArrival( pNode, pNode->pCutBest[0], 0, MAP_FLOAT_LARGE );
src/map/mapper/mapperUtils.c:            Map_TimeCutComputeArrival( pNode, pNode->pCutBest[1], 1, MAP_FLOAT_LARGE );
Binary file src/map/mapper/mapperCanon.o matches
Binary file src/map/mapper/mapperMatch.o matches
Binary file src/map/mapper/mapperTime.o matches
Binary file src/map/mapper/mapperTruth.o matches
Binary file src/map/mapper/mapperCore.o matches
src/map/mapper/mapperRefs.c:    Map_Super_t * pSuper = pM->pSuperBest;
src/map/mapper/mapperCreate.c:Map_Cut_t *     Map_NodeReadCutBest( Map_Node_t * p, int fPhase )     { return p->pCutBest[fPhase];   }
src/map/mapper/mapperCreate.c:Map_Super_t *   Map_CutReadSuperBest( Map_Cut_t * p, int fPhase ) { return p->M[fPhase].pSuperBest;}
src/map/mapper/mapperCreate.c:Map_Super_t *   Map_CutReadSuper0( Map_Cut_t * p )                { return p->M[0].pSuperBest;}
src/map/mapper/mapperCreate.c:Map_Super_t *   Map_CutReadSuper1( Map_Cut_t * p )                { return p->M[1].pSuperBest;}
src/map/mapper/mapperCreate.c:unsigned        Map_CutReadPhaseBest( Map_Cut_t * p, int fPhase ) { return p->M[fPhase].uPhaseBest;}
src/map/mapper/mapperCreate.c:unsigned        Map_CutReadPhase0( Map_Cut_t * p )                { return p->M[0].uPhaseBest;}
src/map/mapper/mapperCreate.c:unsigned        Map_CutReadPhase1( Map_Cut_t * p )                { return p->M[1].uPhaseBest;}
src/map/mapper/mapperMatch.c:int Map_MatchCompare( Map_Man_t * pMan, Map_Match_t * pM1, Map_Match_t * pM2, int fDoingArea )
src/map/mapper/mapperMatch.c:                pMatch->AreaFlow = Map_CutGetAreaFlow( pCut, fPhase );
src/map/mapper/mapperMatch.c:                    pMatch->AreaFlow = Map_CutGetAreaDerefed( pCut, fPhase );
src/map/mapper/mapperMatch.c:                    pMatch->AreaFlow = Map_CutGetAreaFlow( pCut, fPhase );
src/map/mapper/mapperMatch.c:            pMatch->AreaFlow = Map_CutGetAreaDerefed( pCut, fPhase );
src/map/mapper/mapperMatch.c:            pMatch->AreaFlow = Map_CutGetAreaFlow( pCut, fPhase );
src/map/mapper/mapperMatch.c:            pMatch->AreaFlow = Area1 = Map_CutGetAreaDerefed( pCutBest, fPhase );
Binary file src/map/mapper/mapperUtils.o matches
Binary file src/map/mapper/mapperVec.o matches
src/map/mapper/mapperCore.c:    p->AreaBase = Map_MappingGetArea( p );
src/map/mapper/mapperCore.c:                    Map_MappingGetAreaFlow(p), p->AreaBase, 0.0 );
src/map/mapper/mapperCore.c:        p->AreaFinal = Map_MappingGetArea( p );
src/map/mapper/mapperCore.c:                    Map_MappingGetAreaFlow(p), p->AreaFinal,
src/map/mapper/mapperCore.c:        p->AreaFinal = Map_MappingGetArea( p );
src/map/mapper/mapperCore.c:        p->AreaFinal = Map_MappingGetArea( p );
src/map/mapper/mapperCore.c:        p->AreaFinal = Map_MappingGetArea( p );
src/map/mapper/mapperCore.c:        p->AreaFinal = Map_MappingGetArea( p );
Binary file src/map/mapper/mapperCutUtils.o matches
Binary file src/map/mapper/mapperRefs.o matches
Binary file src/map/mapper/mapperSwitch.o matches
Binary file src/map/mapper/mapperCut.o matches
Binary file src/map/mapper/.mapperMatch.c.swp matches
src/map/mapper/mapper.h:extern void            Map_ManPrintStatsToFile( char * pName, float Area, float Delay, abctime Time );
src/map/mapper/mapper.h:extern float           Map_ManReadAreaFinal( Map_Man_t * p );
src/map/mapper/mapper.h:extern void            Map_ManSetAreaRecovery( Map_Man_t * p, int fAreaRecovery );
src/map/mapper/mapper.h:extern float           Map_SuperLibReadAreaInv( Map_SuperLib_t * p );
Binary file src/map/mapper/mapper.o matches
src/map/mapper/mapperInt.h:extern float             Map_CutGetRootArea( Map_Cut_t * pCut, int fPhase );
src/map/mapper/mapperInt.h:extern float             Map_CutGetAreaFlow( Map_Cut_t * pCut, int fPhase );
src/map/mapper/mapperInt.h:extern float             Map_CutGetAreaRefed( Map_Cut_t * pCut, int fPhase );
src/map/mapper/mapperInt.h:extern float             Map_CutGetAreaDerefed( Map_Cut_t * pCut, int fPhase );
src/map/mapper/mapperInt.h:extern float             Map_MappingGetArea( Map_Man_t * pMan );
src/map/mapper/mapperInt.h:extern float             Map_MappingGetAreaFlow( Map_Man_t * p );
Binary file src/map/mapper/mapperCreate.o matches
src/map/mapper/mapperUtils.c:static float Map_MappingSetRefsAndArea_rec( Map_Man_t * pMan, Map_Node_t * pNode );
src/map/mapper/mapperUtils.c:static float Map_MappingArea_rec( Map_Man_t * pMan, Map_Node_t * pNode, Map_NodeVec_t * vNodes );
src/map/mapper/mapperUtils.c:float Map_MappingGetAreaFlow( Map_Man_t * p )
Binary file src/map/mapper/mapperCanon.o matches
Binary file src/map/mapper/mapperLib.o matches
Binary file src/map/mapper/mapperMatch.o matches
Binary file src/map/mapper/mapperSuper.o matches
Binary file src/map/mapper/mapperTime.o matches
src/map/mapper/mapperCutUtils.c:float Map_CutGetRootArea( Map_Cut_t * pCut, int fPhase )
Binary file src/map/mapper/mapperTable.o matches
Binary file src/map/mapper/mapperTruth.o matches
Binary file src/map/mapper/mapperCore.o matches
Binary file src/map/mapper/mapperTree.o matches
src/map/mapper/mapperRefs.c:float Map_CutGetAreaFlow( Map_Cut_t * pCut, int fPhase )
src/map/mapper/mapperRefs.c:    aArea = Map_CutGetRootArea( pCut, fPhase );
src/map/mapper/mapperRefs.c:float Map_CutGetAreaRefed( Map_Cut_t * pCut, int fPhase )
src/map/mapper/mapperRefs.c:float Map_CutGetAreaDerefed( Map_Cut_t * pCut, int fPhase )
src/map/mapper/mapperRefs.c:float Map_MappingGetArea( Map_Man_t * pMan )
src/map/mapper/mapperCreate.c:float           Map_ManReadAreaFinal( Map_Man_t * p )                   { return p->AreaFinal;  }
src/map/mapper/mapperCreate.c:void            Map_ManSetAreaRecovery( Map_Man_t * p, int fAreaRecovery ) { p->fAreaRecovery = fAreaRecovery;}
src/map/mapper/mapperCreate.c:float           Map_SuperLibReadAreaInv( Map_SuperLib_t * p )    {  return p->AreaInv;  }
src/map/mapper/mapperCreate.c:void Map_ManPrintStatsToFile( char * pName, float Area, float Delay, abctime Time )
Binary file src/map/mapper/mapperUtils.o matches
src/map/mapper/mapperTable.c:void Map_SuperTableSortSupergatesByDelay( Map_HashTable_t * p, int nSupersMax )
Binary file src/map/mapper/mapperVec.o matches
Binary file src/map/mapper/mapperCutUtils.o matches
Binary file src/map/mapper/mapperRefs.o matches
Binary file src/map/mapper/mapperSwitch.o matches
Binary file src/map/mapper/mapperCut.o matches
Binary file src/map/mapper/.mapperMatch.c.swp matches
src/map/mapper/mapperTree.c:static void      Map_LibraryAddFaninDelays( Map_SuperLib_t * pLib, Map_Super_t * pGate, Map_Super_t * pFanin, Mio_Pin_t * pPin );
src/map/mapper/mapperTree.c:            Map_LibraryAddFaninDelays( pLib, pGate, pGate->pFanins[k], pPin );
src/map/mapper/mapperTree.c:    Map_SuperTableSortSupergatesByDelay( pLib->tTableC, pLib->nSupersAll );
src/map/mapper/mapperTree.c:void Map_LibraryAddFaninDelays( Map_SuperLib_t * pLib, Map_Super_t * pGate, Map_Super_t * pFanin, Mio_Pin_t * pPin )
src/map/mapper/mapper.h:extern void            Map_ManCreateNodeDelays( Map_Man_t * p, int LogFan );
src/map/mapper/mapper.h:extern void            Map_ManPrintStatsToFile( char * pName, float Area, float Delay, abctime Time );
src/map/mapper/mapper.h:extern void            Map_ManSetDelayTarget( Map_Man_t * p, float DelayTarget );
src/map/mapper/mapper.h:extern Map_Time_t      Map_SuperLibReadDelayInv( Map_SuperLib_t * p );
Binary file src/map/mapper/mapper.o matches
src/map/mapper/mapperInt.h:    Map_Time_t          tDelayInv;     // the delay of the inverter
src/map/mapper/mapperInt.h:    Map_Time_t          tDelaysR[6];   // the pin-to-pin delay constraints for the rise of the output
src/map/mapper/mapperInt.h:    Map_Time_t          tDelaysF[6];   // the pin-to-pin delay constraints for the rise of the output
src/map/mapper/mapperInt.h:    Map_Time_t          tDelayMax;     // the maximum delay
src/map/mapper/mapperInt.h:extern void              Map_SuperTableSortSupergatesByDelay( Map_HashTable_t * p, int nSupersMax );
src/map/mapper/mapperInt.h:extern float             Map_MappingComputeDelayWithFanouts( Map_Man_t * p );
Binary file src/map/mapper/mapperCreate.o matches
src/map/mapper/mapperUtils.c:static int   Map_MappingCompareOutputDelay( Map_Node_t ** ppNode1, Map_Node_t ** ppNode2 );
src/map/mapper/mapperUtils.c:int Map_MappingCompareOutputDelay( Map_Node_t ** ppNode1, Map_Node_t ** ppNode2 )
src/map/mapper/mapperUtils.c:            if ( Map_MappingCompareOutputDelay( &p->pOutputs[pNodes[k]], &p->pOutputs[i] ) >= 0 )
src/map/mapper/mapperUtils.c:float Map_MappingComputeDelayWithFanouts( Map_Man_t * p )
Binary file src/map/mapper/mapperCanon.o matches
Binary file src/map/mapper/mapperLib.o matches
Binary file src/map/mapper/mapperMatch.o matches
Binary file src/map/mapper/mapperSuper.o matches
Binary file src/map/mapper/mapperTime.o matches
Binary file src/map/mapper/mapperTable.o matches
Binary file src/map/mapper/mapperTruth.o matches
Binary file src/map/mapper/mapperCore.o matches
Binary file src/map/mapper/mapperTree.o matches
src/map/mapper/mapperCreate.c:void            Map_ManSetDelayTarget( Map_Man_t * p, float DelayTarget ) { p->DelayTarget = DelayTarget;}
src/map/mapper/mapperCreate.c:Map_Time_t      Map_SuperLibReadDelayInv( Map_SuperLib_t * p )   {  return p->tDelayInv;}
src/map/mapper/mapperCreate.c:void Map_ManCreateNodeDelays( Map_Man_t * p, int LogFan )
src/map/mapper/mapperCreate.c:void Map_ManPrintStatsToFile( char * pName, float Area, float Delay, abctime Time )

>>>
```

## Useful lines

```
src/map/mapper/mapperMatch.c:            if ( Map_MatchCompare( p, &MatchBest, pMatch, p->fMappingMode ) )
```
