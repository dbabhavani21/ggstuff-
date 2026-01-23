
condition : INSERT_D > ADD_MONTHS(TRUNC(SYSDATE,''MM''),-24)


SPR00DBO.BRKR_MSG_TRKR_D
SPR00DBO.DIVISION_D		                  
SPR00DBO.GRANT_ACTIVITY_F	
SPR00DBO.GRANT_ACTIVITY_HIST_F	
SPR00DBO.PLAN_SPONSOR_ID_LOOKUP	
SPR00DBO.PRODUCT_CONTROL_FS	.	
SPR00DBO.PRTC_GRANT_CSTM_ERROR	
SPR00DBO.PRTC_TRANSACTIONS_F	
SPR00DBO.RPT_MBLT_TRCK_CTA_F	
SPR00DBO.RPT_TAX_RECON_F
SPR00DBO.SHARE_POOL_D		    
SPR00DBO.SPS_CYCLE_ERRORS	

SPR00DBO.TABBED_DIST_F	
SPR00DBO.TABBED_VEST_F	
SPR00DBO.T_DILU_BAL_RPT	
SPR00DBO.T_DILU_TXN_RPT	
SPR00DBO.T_FASE_FAS_ERROR

SPR00DBO.T_FSERR_ERROR	       
GRR00DBO.GRK_DIST_PAID_TRX_D   
GRR00DBO.GRK_DIST_TAX_D        
SPR00DBO.T_FPDAC_DATE_CNTL		
SPR00DBO.T_FSCTS_CLIENT_TRUST_SWEEP_D		
SPR00DBO.T_FSFXD_FRN_EXCH_D	
SPR00DBO.T_FSPAD_END_D_ACTIVE	
SPR00DBO.T_FSPAD_PARTICIPANT_D	
SPR00DBO.T_FSPDD_PRTC_DIST_D	
SPR00DBO.T_FSPGD_END_D_ACTIVE	
SPR00DBO.T_FSPGD_PRTC_GRANT_D	
SPR00DBO.T_FSPGF_PERF_GRANT_F	
SPR00DBO.T_FSPID_PRICE_D	
SPR00DBO.T_FSPPD_END_DT_ACTIVE	
SPR00DBO.T_FSPPD_END_DT_EQ_PREV_DT	
SPR00DBO.T_FSPPD_END_D_GTE_PROC_D
SPR00DBO.T_FSPPD_PERF_PERIOD_D	
SPR00DBO.T_FSPPD_PERF_PERIOD_TSRU_D	
SPR00DBO.T_FSPPD_START_DT_EQ_PR_DATE	
SPR00DBO.T_FSPPV_END_D_ACTIVE	
SPR00DBO.T_FSPPV_END_D_EQ_PREV_D	
SPR00DBO.T_FSPPV_END_D_GTE_PROC_D	
SPR00DBO.T_FSPPV_PERF_PERIOD_VEST_D	
SPR00DBO.T_FSPPV_START_D_EQ_PROC_D	
SPR00DBO	T_FSPSF_PRODUCT_STATEMENT_F

SPR00DBO	T_FSPVD_PRTC_VEST_D	
SPR00DBO	T_FSPVF_END_D_ACTIVE	
SPR00DBO	T_FSPVF_PERF_VEST_F	
SPR00DBO	T_FSRCF_RSTC_CANCEL_F	
SPR00DBO	T_FSWID_WIRE_INSN_D

TABLES=SPR00DBO.BRKR_MSG_TRKR_D, SPR00DBO.DIVISION_D, SPR00DBO.GRANT_ACTIVITY_F, SPR00DBO.GRANT_ACTIVITY_HIST_F, SPR00DBO.PLAN_SPONSOR_ID_LOOKUP, SPR00DBO.PRODUCT_CONTROL_FS, SPR00DBO.PRTC_GRANT_CSTM_ERROR, SPR00DBO.PRTC_TRANSACTIONS_F, SPR00DBO.RPT_MBLT_TRCK_CTA_F, 
SPR00DBO.RPT_TAX_RECON_F, SPR00DBO.SHARE_POOL_D, SPR00DBO.SPS_CYCLE_ERRORS, SPR00DBO.TABBED_DIST_F, SPR00DBO.TABBED_VEST_F, SPR00DBO.T_DILU_BAL_RPT, SPR00DBO.T_DILU_TXN_RPT, SPR00DBO.T_FASE_FAS_ERROR, SPR00DBO.T_FSERR_ERROR, 
GRR00DBO.GRK_DIST_PAID_TRX_D, GRR00DBO.GRK_DIST_TAX_D, SPR00DBO.T_FPDAC_DATE_CNTL, SPR00DBO.T_FSCTS_CLIENT_TRUST_SWEEP_D, SPR00DBO.T_FSFXD_FRN_EXCH_D, 
SPR00DBO.T_FSPAD_END_D_ACTIVE, SPR00DBO.T_FSPAD_PARTICIPANT_D, SPR00DBO.T_FSPDD_PRTC_DIST_D, SPR00DBO.T_FSPGD_END_D_ACTIVE, SPR00DBO.T_FSPGD_PRTC_GRANT_D, 
SPR00DBO.T_FSPGF_PERF_GRANT_F, SPR00DBO.T_FSPID_PRICE_D, SPR00DBO.T_FSPPD_END_DT_ACTIVE, SPR00DBO.T_FSPPD_END_DT_EQ_PREV_DT, SPR00DBO.T_FSPPD_END_D_GTE_PROC_D, 
SPR00DBO.T_FSPPD_PERF_PERIOD_D, SPR00DBO.T_FSPPD_PERF_PERIOD_TSRU_D, SPR00DBO.T_FSPPD_START_DT_EQ_PR_DATE, SPR00DBO.T_FSPPV_END_D_ACTIVE, SPR00DBO.T_FSPPV_END_D_EQ_PREV_D, 
SPR00DBO.T_FSPPV_END_D_GTE_PROC_D, SPR00DBO.T_FSPPV_PERF_PERIOD_VEST_D, SPR00DBO.T_FSPPV_START_D_EQ_PROC_D, SPR00DBO.T_FSPSF_PRODUCT_STATEMENT_F, 
SPR00DBO.T_FSPVD_PRTC_VEST_D, SPR00DBO.T_FSPVF_END_D_ACTIVE, SPR00DBO.T_FSPVF_PERF_VEST_F, SPR00DBO.T_FSRCF_RSTC_CANCEL_F, SPR00DBO.T_FSWID_WIRE_INSN_D



























vi 1st10.sh 

#!/bin/bash

# --- CONFIG ---
SCHEMA="comdba_id"
PASSWORD="RedSox2017"
DIRECTORY="sim_dump"
DUMPFILE="sim_1st10_%U.dmp" 
LOGFILE="sim_1st10.log"
PARFILE="export_cmd_1st10.par"

cat > ${PARFILE} <<EOF
USERID="${SCHEMA}/${PASSWORD}"
DIRECTORY=${DIRECTORY}
DUMPFILE=${DUMPFILE}
LOGFILE=${LOGFILE}
TABLES=GRR00DBO.GRK_BRKR_ERROR_F,GRR00DBO.GRK_BRKR_MOBILITY_F,GRR00DBO.GRK_BRKR_MSG_TRKR_D,GRR00DBO.GRK_GRANT_ACTIVITY_F,GRR00DBO.GRK_GRANT_ACTIVITY_HIST_F,
GRR00DBO.GRK_MBLT_AWD_DST_TRCK_F,GRR00DBO.GRK_PRODUCT_CONTROL_FS,GRR00DBO.GRK_PRTC_BRKR_INFO_D,GRR00DBO.GRK_TAX_METH_F,SPR00DBO.BRKR_ERROR_F
QUERY="WHERE insert_d >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24)"
CONTENT=ALL
PARALLEL=16
EOF

# Run Data Pump using the parfile
expdp parfile=${PARFILE}

# Check status
if [ $? -eq 0 ]; then
    echo "Export Success."
else
    echo "Export Failed. Check ${LOGFILE}"
fi

chmod +x 1st10.sh 

nohup sh 1st10.sh & 

tail -50f nohup.out 

+++++++++++++++++++











SQL> select /*+ parallel(20) */ count(*) from GRR00DBO.GRK_BRKR_ERROR_F
where insert_d >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24);  2

  COUNT(*)
----------
     23610

SQL>
SQL> select /*+ parallel(20) */ count(*) from GRR00DBO.GRK_BRKR_MOBILITY_F
where insert_d >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24);  2

  COUNT(*)
----------
      2080

SQL> select /*+ parallel(20) */ count(*) from GRR00DBO.GRK_BRKR_MSG_TRKR_D
where insert_d >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24);  2

  COUNT(*)
----------
    239422

SQL> select /*+ parallel(20) */ count(*) from GRR00DBO.GRK_GRANT_ACTIVITY_F
where insert_d >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24);
  2
  COUNT(*)
----------
   6698487

SQL>
SQL> select /*+ parallel(20) */ count(*) from GRR00DBO.GRK_GRANT_ACTIVITY_HIST_F
where insert_d >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24);  2

  COUNT(*)
----------
  17906129

SQL> select /*+ parallel(20) */ count(*) from GRR00DBO.GRK_MBLT_AWD_DST_TRCK_F
where insert_d >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24);
  2
  COUNT(*)
----------
   1070878

SQL>
SQL>
SQL> select /*+ parallel(20) */ count(*) from GRR00DBO.GRK_PRODUCT_CONTROL_FS
where insert_d >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24);  2

  COUNT(*)
----------
  19020937

SQL> select /*+ parallel(20) */ count(*) from GRR00DBO.GRK_PRTC_BRKR_INFO_D
where insert_d >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24);  2

  COUNT(*)
----------
    279883

SQL> select /*+ parallel(20) */ count(*) from GRR00DBO.GRK_TAX_METH_F
where insert_d >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24);  2

  COUNT(*)
----------
   1044015

SQL> select /*+ parallel(20) */ count(*) from GRR00DBO.BRKR_ERROR_F
where insert_d >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24);  2
select /*+ parallel(20) */ count(*) from GRR00DBO.BRKR_ERROR_F
                                                  *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select /*+ parallel(20) */ count(*) from GRR00DBO.GRK_TAX_METH_F
where insert_d >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24);  2

  COUNT(*)
----------
   1044015


























GRR00DBO.GRK_BRKR_ERROR_F

select /*+ parallel(20) */ count(*) from GRR00DBO.GRK_BRKR_ERROR_F
where insert_d >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24);



SQL> conn comdba_id/RedSox2017
Connected.



create or replace directory sim_dump as '/u02/wide/acfs/dba_work/dsdb/sim_dump';
grant read,write on directory sim_dump to public;


#!/bin/bash

# --- CONFIG ---
SCHEMA="comdba_id"
PASSWORD="RedSox2017"
DIRECTORY="sim_dump"
DUMPFILE="filtered_export_%U.dmp" 
LOGFILE="filtered_export.log"
PARFILE="export_cmd.par"

# Calculate date cutoff: 2 years ago from today
CUTOFF_DATE=$(date -d "2 years ago" +"%Y-%m-%d")

echo "----------------------------------------------------"
echo "Exporting data older than ${CUTOFF_DATE}"
echo "----------------------------------------------------"

# Generate the Parameter File
# We use a Here-Doc (EOF) to write the file.
# Note how clean the QUERY line is—no crazy escaping needed!
cat > ${PARFILE} <<EOF
USERID="${SCHEMA}/${PASSWORD}@${DB_SVC}"
DIRECTORY=${DIRECTORY}
DUMPFILE=${DUMPFILE}
LOGFILE=${LOGFILE}
TABLES=dbtune.TBL_1,dbtune.TBL_2,dbtune.TBL_3,dbtune.TBL_4,dbtune.TBL_5
QUERY="WHERE created_date >= TO_DATE('${CUTOFF_DATE}', 'YYYY-MM-DD')"
PARALLEL=8
EOF

# Run Data Pump using the parfile
expdp parfile=${PARFILE}

# Check status
if [ $? -eq 0 ]; then
    echo "Export Success."
else
    echo "Export Failed. Check ${LOGFILE}"
fi

DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
SPSSIM_TEST
/u02/wide/acfs/dba_work/DPUMP/spssim_testing

DPUMP_WIORDA
/u02/wide/acfs/dba_work/DPUMP

XTTS_DUMP
/u02/wide/acfs/dba_work/Wendell/Refresh_A1_XTTS


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
TL_LOCAL
/u02/wide/acfs/dba_work/DPUMP/msk

A619336
/u02/wide/acfs/dba_work/DPUMP/CM222972334

CM212542057
/u02/wide/acfs/dba_work/CM212542057


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
XSDDIR
/u01/app/oracle/product/19.0.0.0/1910_JAN2021/rdbms/xml/schema

MY_TCB_DIR_EXP
/tmp

DATAPUMP
/dbfs_direct/dbfs2/Dpump


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
XMLDIR
/u01/app/oracle/product/19.0.0.0/1910_JAN2021/rdbms/xml

DPUMP_NEW
/u02/wide/acfs/dba_work/DPUMP_NEW

DIR_PPMC6848829
/dbfs_direct/dbfs2/PPMC6848829


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
OPATCH_INST_DIR
/u02/app/oracle/product/DB_1925/DBRU1925_241015/OPatch

OPATCH_SCRIPT_DIR
/u02/app/oracle/product/DB_1925/DBRU1925_241015/QOpatch

OPATCH_LOG_DIR
/u02/app/oracle/product/DB_1925/DBRU1925_241015/rdbms/log


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
CAPTURE_DIR_OBI
/dbfs_direct/dbfs4/capture_obi_c

CAPTURE_DIR_ETL
/dbfs_direct/dbfs4/capture_etl_c

ORACLE_OCM_CONFIG_DIR2
/u01/app/oracle/product/19.0.0.0/1910_JAN2021/ccr/state


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
TIMEZDIF_DIR
/u01/app/oracle/product/12.1.0.2/WIORDP12102/oracore/zoneinfo

SQLT$DIAG
/u01/app/oracle/diag/rdbms/wiorda1_o34oma2/WIORDA11/trace

DBFS2_DIR
/tmp


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
CAPTURE_DIR
/u02/wide/acfs/dba_work/cap_20200725

EXP_DR
/dbfs_direct/dbfs1/backup/expdp

DBFS4_DIR
/dbfs_direct/dbfs4/exports


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
DBFS3_DUMP
/dbfs_direct/dbfs3/dump

TEST1
/home/oracle/

EXP_TEMP
/tmp


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
EXP_DBA
/dbfs_direct/dbfs1/backup/dmp

TOAD_BDUMP_DIR_4
/u01/app/oracle/diag/rdbms/wiordp1_dal/WIORDP14/trace

TRCA$INPUT2
/u01/app/oracle/diag/rdbms/wiorda1_o34oma2/WIORDA11/trace


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
TRCA$INPUT1
/u01/app/oracle/diag/rdbms/wiorda1_o34oma2/WIORDA11/trace

SQLT$BDUMP
/u01/app/oracle/diag/rdbms/wiorda1_o34oma2/WIORDA11/trace

SQLT$UDUMP
/u01/app/oracle/diag/rdbms/wiorda1_o34oma2/WIORDA11/trace


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
TOAD_BDUMP_DIR_2
/u01/app/oracle/diag/rdbms/wiordp1_dal/WIORDP12/trace

TRCA$STAGE
/u01/app/oracle/diag/rdbms/wiorda1_o34oma2/WIORDA11/trace

SQLT$STAGE
/u01/app/oracle/diag/rdbms/wiorda1_o34oma2/WIORDA11/trace


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
DATA_PUMP_DIR
/u01/app/oracle/product/19.0.0.0/DBRU1914_220118_TST/rdbms/log/

ORACLE_OCM_CONFIG_DIR
/u01/app/oracle/product/19.0.0.0/1910_JAN2021/ccr/state

DPUMP_DBFS2
/dbfs_direct/dbfs2


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
TEMP_COPY_TABLE
/z24oma2/pwirat1/backup01/table_exp

PREUPGRADE_DIR
/u01/app/oracle/product/19.0.0.0/1910_JAN2021/rdbms/admin

JAVA$JOX$CUJS$DIRECTORY$
/u02/app/oracle/product/DB_1925/DBRU1925_241015/javavm/admin/


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
TTS_DUMP
/fisc/oracle/admin/WIORDP11/TTS

EXPORT
/dbfs_direct/dbfs1/export

DPUMP_TEMP
/u02/wide/acfs/dba_work/DPUMP


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
DBMS_OPTIM_LOGDIR
/u01/app/oracle/product/19.0.0.0/DBRU1919_230418_TST/cfgtoollogs

DBMS_OPTIM_ADMINDIR
/u01/app/oracle/product/19.0.0.0/DBRU1919_230418_TST/rdbms/admin

DPUMP
/dbfs_direct/dbfs2/exports


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
ORACLE_BASE
/fisc/oracle

ORACLE_HOME
/u01/app/oracle/product/19.0.0.0/1910_JAN2021

CAW_EXTR
/u02/wide/acfs/dba_work/CAW_EXTR


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
DOL_GG
/dbfs_direct/dbfs1/DOL_GG/DUMP

TNSLOG
/dbfs_direct/dbfs2/listener_logs/ortp14_node1_listener

TRACE_DIR_SRC_4_TCB
/u01/app/oracle/diag/rdbms/wiordp1_ortp24/WIORDP11/trace


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
REFRESH
/zrtp05/wi-wiordp1/archivelog01/Refresh

AWR_DATA
/dbfs_direct/dbfs2/exports

DBFS5_DIR
/dbfs_direct/dbfs5/exports


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
WIORDP1RAT_20150117_0
/dbfs_direct/dbfs4/WIORDP1RAT_20150117_0

SPSNGR
/dbfs_direct/dbfs3/dump/SPS-NGR

DBFS2_DUMP
/dbfs_direct/dbfs2/dump


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
DBFS3_DIR
/dbfs_direct/dbfs3

SEG_IO_FILE_DIR
/tmp

TOAD_BDUMP_DIR
/u01/app/oracle/diag/rdbms/wiordp1_ortp14/WIORDP12/trace/


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
DUMP_DIR
/u02/wide/acfs/dba_work/DPUMP/WIORDA1

EXPDIR
/dbfs_direct/dbfs1/backup/expdp

EXP_DIR
/tmp


DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------
AWR_DATA_TMP
/u02/wide/acfs/dba_work/adr_dump

EXPDP
/u02/wide/acfs/dba_work/DPUMP

SRDC_EXP_TC
/u01/app/grid/oracle.ahf/data/repository/suptools/srdc/user_oracle/1654807082_sr
dc_dbsqlperf

DIRECTORY_NAME
--------------------------------------------------------------------------------
DIRECTORY_PATH
--------------------------------------------------------------------------------

SR3_26672559861
/u02/wide/acfs/dba_work/3_26672559861


70 rows selected.


oracle@o54oma2vc11:WIORDA11> ls -lrt
total 38721204
drwxr-xr-x 2 ggadmin dba            65536 Mar 20  2025 lost+found
-rw-r--r-- 1 ggadmin dba      28235939840 Mar 21  2025 DBRU1923_240416_TST.tar
-rw-r--r-- 1 ggadmin dba          2078720 Mar 26  2025 oracle_tools_sql.tar
-rw-r--r-- 1 ggadmin dba         11929600 Mar 26  2025 oracle_tools_bin.tar
drwxr-xr-x 3 oracle  oinstall       20480 Mar 29  2025 dsdb
drwxr-xr-x 2 root    root           20480 Apr  8  2025 AHF
drwxr-xr-x 2 oracle  oinstall       20480 Apr 11  2025 dba_onboarding
drwxr-xr-x 2 root    root           20480 Apr 21  2025 stage
drwxr-xr-x 3 oracle  oinstall       20480 May 18  2025 WIORDI1
drwxr-xr-x 3 grid    oinstall       20480 May 20  2025 xag
-rw-r----- 1 root    root        80239258 Jul 24 15:43 sundiag_o54oma2celadm01_2450XLJ07N_2025_07_24_15_28.tar.bz2
-rw-r----- 1 root    root        84595750 Jul 24 17:00 sundiag_o54oma2celadm02_2450XLJ085_2025_07_24_15_44.tar.bz2
drwxr-xr-x 2 root    root           20480 Jul 25 09:39 new
-rw-r--r-- 1 root    root     11223095808 Aug 13 10:13 Oracle_Home_DBRU1925_241015.cpio
drwxr-xr-x 2 oracle  oinstall       20480 Aug 17 01:19 oracle
drwxrwxrwx 5 oradba  adba           20480 Sep 22 12:57 appdba
drwxr-xr-x 4 oracle  oinstall       20480 Nov 14 15:17 patches_oneoff
drwxrwxrwx 3 ggadmin dba            20480 Jan 13 17:02 DPUMP




oracle@o54oma2vc11:WIORDA11> ls -lrt
total 76
drwxr-xr-x  4 ggadmin dba      33 Mar 20  2025 goldengate
-rw-r-----  1 ggadmin ggdba 43277 Apr 15  2025 golde
drwxr-xr-x 15 root    root  32768 Aug 13 10:15 dba_work


/u02/wide/acfs/dba_work/dsdb/sim.dmp
