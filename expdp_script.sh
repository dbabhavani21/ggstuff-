SQL> create or replace dirtectory sim_dump as '/vldcdsta20rtp2/backup/SPSSG1/sim_dump' ;
create or replace dirtectory sim_dump as '/vldcdsta20rtp2/backup/SPSSG1/sim_dump'
                  *
ERROR at line 1:
ORA-00922: missing or invalid option
TABLE_NAME
--------------------------------------------------------------------------------
  TABLE_GB
----------
T_FASE_FAS_ERROR
  1131.875

RPT_TAX_RECON_F
    605.87

T_FSERR_ERROR
    43.355


TABLE_NAME
--------------------------------------------------------------------------------
  TABLE_GB
----------
PRTC_GRANT_CSTM_ERROR
    38.302

PRODUCT_CONTROL_FS
    33.241

GRANT_ACTIVITY_HIST_F
    23.271


TABLE_NAME
--------------------------------------------------------------------------------
  TABLE_GB
----------
GRANT_ACTIVITY_F
    11.723

TABBED_VEST_F
     7.601

RPT_MBLT_TRCK_CTA_F
     4.845


TABLE_NAME
--------------------------------------------------------------------------------
  TABLE_GB
----------
TABBED_DIST_F
     2.305

BRKR_MSG_TRKR_D
      .013

DIVISION_D
      .006


TABLE_NAME
--------------------------------------------------------------------------------
  TABLE_GB
----------
SPS_CYCLE_ERRORS
      .004

BRKR_ERROR_F
      .002

SHARE_POOL_D
         0


TABLE_NAME
--------------------------------------------------------------------------------
  TABLE_GB
----------
PLAN_SPONSOR_ID_LOOKUP
         0

PRTC_TRANSACTIONS_F
         0


17 rows selected.

























SELECT   s.segment_name AS table_name,
    ROUND(SUM(s.bytes)/1024/1024/1024, 3) AS table_gb
    FROM dba_segments s
WHERE s.owner = 'SPR00DBO'
  AND s.segment_type IN ('TABLE','TABLE PARTITION','TABLE SUBPARTITION')
  AND s.segment_name IN (
    'BRKR_ERROR_F',
    'BRKR_MSG_TRKR_D',
    'DIVISION_D',
    'GRANT_ACTIVITY_F',
    'GRANT_ACTIVITY_HIST_F',
    'PLAN_SPONSOR_ID_LOOKUP',
    'PRODUCT_CONTROL_FS',
    'PRTC_GRANT_CSTM_ERROR',
    'PRTC_TRANSACTIONS_F',
    'RPT_MBLT_TRCK_CTA_F',
    'RPT_TAX_RECON_F',
    'SHARE_POOL_D',
    'SPS_CYCLE_ERRORS',
    'TABBED_DIST_F',
    'TABBED_VEST_F',
    'T_FASE_FAS_ERROR',
    'T_FSERR_ERROR'
  )
GROUP BY s.segment_name
ORDER BY SUM(s.bytes) DESC;





+++++++++++++++++++++++++++++++++++++++++++
vi grr_5_15.sh 

#!/bin/bash

# --- CONFIG ---
SCHEMA="comdba_id"
PASSWORD="RedSox2017"
DIRECTORY="sim_dump"
DUMPFILE="grr_5_15tab_%U.dmp"
LOGFILE="grr_5_15tab.log"
PARFILE="grr_5_15tab.par"

# Generate the Parameter File
cat > ${PARFILE} <<EOF
USERID="${SCHEMA}/${PASSWORD}"
DIRECTORY=${DIRECTORY}
DUMPFILE=${DUMPFILE}
LOGFILE=${LOGFILE}
TABLES=GRR00DBO.GRK_BRKR_ERROR_F,GRR00DBO.GRK_BRKR_MOBILITY_F,GRR00DBO.GRK_BRKR_MSG_TRKR_D,GRR00DBO.GRK_GRANT_ACTIVITY_F,GRR00DBO.GRK_GRANT_ACTIVITY_HIST_F,GRR00DBO.GRK_MBLT_AWD_DST_TRCK_F,GRR00DBO.GRK_PRODUCT_CONTROL_FS,GRR00DBO.GRK_PRTC_BRKR_INFO_D,GRR00DBO.GRK_TAX_METH_F,GRR00DBO.GRK_DIST_PAID_TRX_D,GRR00DBO.GRK_DIST_TAX_D
QUERY="WHERE INSERT_D >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24)"
compression=all
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

chmod +x grr_5_15.sh

nohup sh grr_5_15.sh & 

++++++++++++++++++++++++++++
vi spr_19_35.sh 

#!/bin/bash

# --- CONFIG ---
SCHEMA="comdba_id"
PASSWORD="RedSox2017"
DIRECTORY="sim_dump"
DUMPFILE="spr_19_35tab1_%U.dmp"
LOGFILE="spr_19_35tab1.log"
PARFILE="spr_19_35tab1.par"

# Generate the Parameter File
cat > ${PARFILE} <<EOF
USERID="${SCHEMA}/${PASSWORD}"
DIRECTORY=${DIRECTORY}
DUMPFILE=${DUMPFILE}
LOGFILE=${LOGFILE}
TABLES=SPR00DBO.BRKR_ERROR_F,SPR00DBO.BRKR_MSG_TRKR_D,SPR00DBO.DIVISION_D,SPR00DBO.GRANT_ACTIVITY_F,SPR00DBO.GRANT_ACTIVITY_HIST_F,SPR00DBO.PLAN_SPONSOR_ID_LOOKUP,SPR00DBO.PRODUCT_CONTROL_FS,SPR00DBO.PRTC_GRANT_CSTM_ERROR,SPR00DBO.PRTC_TRANSACTIONS_F,SPR00DBO.RPT_MBLT_TRCK_CTA_F,SPR00DBO.RPT_TAX_RECON_F,SPR00DBO.SHARE_POOL_D,SPR00DBO.SPS_CYCLE_ERRORS,SPR00DBO.TABBED_DIST_F,SPR00DBO.TABBED_VEST_F,SPR00DBO.T_FSERR_ERROR
QUERY="WHERE INSERT_D >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24)"
compression=all
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

chmod +x spr_19_35.sh 

nohup sh spr_19_35.sh & 

tail -50f nohup.out


