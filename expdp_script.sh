#!/bin/bash

# --- CONFIG ---
SCHEMA="system"
PASSWORD="oracle"
DB_SVC="pdb1"       
DIRECTORY="dpdump"
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
