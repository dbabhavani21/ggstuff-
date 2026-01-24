oradba --- username

Dcd$traca1rtp --- PASSWORD

directory:

[/vldcdsta20rtp2/backup/SPSSG1]
SQL> @nts
Enter value for tablespace_name: SPS_GLOBAL_DATA
old   4: AND FS.tablespace_name='&TABLESPACE_NAME'
new   4: AND FS.tablespace_name='SPS_GLOBAL_DATA'

TABLESPACE_NAME                FILE_NAME                                                              AUT       FREE      TOTAL
------------------------------ ---------------------------------------------------------------------- --- ---------- ----------
SPS_GLOBAL_DATA                +DATA01/SPSSG11/DATAFILE/sps_global_data.296.1222440127                NO  9.99902344         10
                                                                                                          ---------- ----------
sum                                                                                                       9.99902344         10






target asm
SQL> select name,total_mb/1024,free_mb/1024,free_mb/2/1024,usable_file_mb/1024 from v$asm_diskgroup;

NAME                           TOTAL_MB/1024 FREE_MB/1024 FREE_MB/2/1024
------------------------------ ------------- ------------ --------------
USABLE_FILE_MB/1024
-------------------
AOCRVOTE                                  16    15.640625      7.8203125
          15.640625

DATA01                                  8192   4377.32422     2188.66211
         4377.32422

FRA01                                   2048   2038.38281     1019.19141
         2038.38281


NAME                           TOTAL_MB/1024 FREE_MB/1024 FREE_MB/2/1024
------------------------------ ------------- ------------ --------------
USABLE_FILE_MB/1024
-------------------
CFS01                                   2048   47.8476563     23.9238281



SQL> @tb

TABLESPACE_NAME
------------------------------
SPS_GLOBAL_DATA

CREATE BIGFILE TABLESPACE SPS_GLOBAL_DATA_1 DATAFILE '+DATA01' SIZE 31G AUTOEXTEND ON;

--nts.sql
UNDEFINE TABLESPACE_NAME
set lines 500
COL FILE_NAME FORMAT A70
break on report
COMPUTE SUM OF FREE ON REPORT
COMPUTE SUM OF TOTAL ON REPORT
SELECT DF.TABLESPACE_NAME,DF.FILE_NAME,DF.AUTOEXTENSIBLE,SUM(FS.BYTES)/1024/1024/1024 FREE,SUM(DF.BYTES)/1024/1024/1024/COUNT(*) TOTAL
FROM DBA_FREE_SPACE  FS,DBA_dATA_FILES DF
where FS.FILE_ID=DF.FILE_ID
AND FS.tablespace_name='&TABLESPACE_NAME'
GROUP BY DF.TABLESPACE_NAME,DF.FILE_NAME,DF.AUTOEXTENSIBLE
order by 4;


select name,total_mb/1024,free_mb/1024,free_mb/2/1024,usable_file_mb/1024 from v$asm_diskgroup;


SELECT DISTINCT TABLESPACE_NAME
FROM (
    SELECT TABLESPACE_NAME
    FROM DBA_TABLES
    WHERE TABLESPACE_NAME IS NOT NULL
      AND (OWNER, TABLE_NAME) IN (
          ('GRR00DBO', 'GRK_BRKR_ERROR_F'),
          ('GRR00DBO', 'GRK_BRKR_MOBILITY_F'),
          ('GRR00DBO', 'GRK_BRKR_MSG_TRKR_D'),
          ('GRR00DBO', 'GRK_GRANT_ACTIVITY_F'),
          ('GRR00DBO', 'GRK_GRANT_ACTIVITY_HIST_F'),
          ('GRR00DBO', 'GRK_MBLT_AWD_DST_TRCK_F'),
          ('GRR00DBO', 'GRK_PRODUCT_CONTROL_FS'),
          ('GRR00DBO', 'GRK_PRTC_BRKR_INFO_D'),
          ('GRR00DBO', 'GRK_TAX_METH_F'),
          ('GRR00DBO', 'GRK_DIST_PAID_TRX_D'),
          ('GRR00DBO', 'GRK_DIST_TAX_D')
      )
    UNION ALL
    SELECT TABLESPACE_NAME
    FROM DBA_TAB_PARTITIONS
    WHERE (TABLE_OWNER, TABLE_NAME) IN (
          ('GRR00DBO', 'GRK_BRKR_ERROR_F'),
          ('GRR00DBO', 'GRK_BRKR_MOBILITY_F'),
          ('GRR00DBO', 'GRK_BRKR_MSG_TRKR_D'),
          ('GRR00DBO', 'GRK_GRANT_ACTIVITY_F'),
          ('GRR00DBO', 'GRK_GRANT_ACTIVITY_HIST_F'),
          ('GRR00DBO', 'GRK_MBLT_AWD_DST_TRCK_F'),
          ('GRR00DBO', 'GRK_PRODUCT_CONTROL_FS'),
          ('GRR00DBO', 'GRK_PRTC_BRKR_INFO_D'),
          ('GRR00DBO', 'GRK_TAX_METH_F'),
          ('GRR00DBO', 'GRK_DIST_PAID_TRX_D'),
          ('GRR00DBO', 'GRK_DIST_TAX_D')
      )
)
ORDER BY TABLESPACE_NAME;






target ip : 10.195.104.68

source ip : 10.235.162.60

cd /u02/wide/acfs/dba_work/dsdb/sim_dump && tar -cf - *.dmp | ssh oracle@10.210.16.136 "ssh oracle@10.195.104.68 'cd /vldcdsta20rtp2/backup/SPSSG1/sim_dump && tar -xf -'"
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
cd /vldcdsta20rtp2/backup/SPSSG1/sim_dump

vi grr_5_15tab.par

USERID="oradba/Dcd$traca1rtp"
DIRECTORY="sim_dump"
DUMPFILE="grr_5_15tab_%U.dmp"
LOGFILE="imp_grr_5_15tab.log"
TABLES=GRR00DBO.GRK_BRKR_ERROR_F,GRR00DBO.GRK_BRKR_MOBILITY_F,GRR00DBO.GRK_BRKR_MSG_TRKR_D,GRR00DBO.GRK_GRANT_ACTIVITY_F,GRR00DBO.GRK_GRANT_ACTIVITY_HIST_F,GRR00DBO.GRK_MBLT_AWD_DST_TRCK_F,GRR00DBO.GRK_PRODUCT_CONTROL_FS,GRR00DBO.GRK_PRTC_BRKR_INFO_D,GRR00DBO.GRK_TAX_METH_F,GRR00DBO.GRK_DIST_PAID_TRX_D,GRR00DBO.GRK_DIST_TAX_D
QUERY="WHERE INSERT_D >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24)"
remap_tablespaces=SPS_GLOBAL_DATA:SPS_GLOBAL_DATA_1
TRANSFORM=DISABLE_ARCHIVE_LOGGING:Y
parallel=16

nohup impdp parfile=grr_5_15tab.par & 









+++++++++++++++++++++++++++++++++++++++++++++++++++++
[/u02/wide/acfs/dba_work/dsdb/sim_dump]
oracle@o54oma2vc11:default> ls -lrt *.dmp
-rw-r----- 1 oracle asmdba    11476992 Jan 23 07:28 grr_5_15tab_16.dmp
-rw-r----- 1 oracle asmdba     9207808 Jan 23 07:28 grr_5_15tab_18.dmp
-rw-r----- 1 oracle asmdba    19681280 Jan 23 07:28 grr_5_15tab_17.dmp
-rw-r----- 1 oracle asmdba    20369408 Jan 23 07:29 grr_5_15tab_15.dmp
-rw-r----- 1 oracle asmdba    72060928 Jan 23 07:31 grr_5_15tab_07.dmp
-rw-r----- 1 oracle asmdba    69869568 Jan 23 07:31 grr_5_15tab_12.dmp
-rw-r----- 1 oracle asmdba    60489728 Jan 23 07:31 grr_5_15tab_09.dmp
-rw-r----- 1 oracle asmdba    99000320 Jan 23 07:31 grr_5_15tab_14.dmp
-rw-r----- 1 oracle asmdba   242536448 Jan 23 07:31 grr_5_15tab_04.dmp
-rw-r----- 1 oracle asmdba    88780800 Jan 23 07:31 grr_5_15tab_08.dmp
-rw-r----- 1 oracle asmdba    72237056 Jan 23 07:31 grr_5_15tab_01.dmp
-rw-r----- 1 oracle asmdba    99352576 Jan 23 07:31 grr_5_15tab_11.dmp
-rw-r----- 1 oracle asmdba   189026304 Jan 23 07:31 grr_5_15tab_06.dmp
-rw-r----- 1 oracle asmdba    50987008 Jan 23 07:31 grr_5_15tab_10.dmp
-rw-r----- 1 oracle asmdba    54378496 Jan 23 07:31 grr_5_15tab_13.dmp
-rw-r----- 1 oracle asmdba    95162368 Jan 23 07:31 grr_5_15tab_03.dmp
-rw-r----- 1 oracle asmdba    57585664 Jan 23 07:31 grr_5_15tab_05.dmp
-rw-r----- 1 oracle asmdba  1073922048 Jan 23 07:31 grr_5_15tab_02.dmp
-rw-r----- 1 oracle asmdba   103813120 Jan 23 07:31 grr_5_15tab_19.dmp
-rw-r----- 1 oracle asmdba 19733073920 Jan 23 08:35 spr_19_35tab1_11.dmp
-rw-r----- 1 oracle asmdba 18370482176 Jan 23 08:35 spr_19_35tab1_13.dmp
-rw-r----- 1 oracle asmdba 17914970112 Jan 23 08:35 spr_19_35tab1_09.dmp
-rw-r----- 1 oracle asmdba 20352983040 Jan 23 08:36 spr_19_35tab1_07.dmp
-rw-r----- 1 oracle asmdba 21033861120 Jan 23 08:36 spr_19_35tab1_12.dmp
-rw-r----- 1 oracle asmdba 21495992320 Jan 23 08:36 spr_19_35tab1_06.dmp
-rw-r----- 1 oracle asmdba 21721038848 Jan 23 08:36 spr_19_35tab1_08.dmp
-rw-r----- 1 oracle asmdba 21420208128 Jan 23 08:37 spr_19_35tab1_10.dmp
-rw-r----- 1 oracle asmdba  3711246336 Jan 23 08:37 spr_19_35tab1_05.dmp
-rw-r----- 1 oracle asmdba  7058755584 Jan 23 08:37 spr_19_35tab1_21.dmp
-rw-r----- 1 oracle asmdba 12553469952 Jan 23 08:37 spr_19_35tab1_16.dmp
-rw-r----- 1 oracle asmdba 12514816000 Jan 23 08:37 spr_19_35tab1_14.dmp
-rw-r----- 1 oracle asmdba 10907668480 Jan 23 08:37 spr_19_35tab1_19.dmp
-rw-r----- 1 oracle asmdba  5869748224 Jan 23 08:37 spr_19_35tab1_22.dmp
-rw-r----- 1 oracle asmdba 14226759680 Jan 23 08:37 spr_19_35tab1_15.dmp
-rw-r----- 1 oracle asmdba  3672891392 Jan 23 08:37 spr_19_35tab1_04.dmp
-rw-r----- 1 oracle asmdba  6905655296 Jan 23 08:37 spr_19_35tab1_03.dmp
-rw-r----- 1 oracle asmdba  2207940608 Jan 23 08:37 spr_19_35tab1_02.dmp
-rw-r----- 1 oracle asmdba 12135960576 Jan 23 08:37 spr_19_35tab1_17.dmp
-rw-r----- 1 oracle asmdba  7081967616 Jan 23 08:37 spr_19_35tab1_20.dmp
-rw-r----- 1 oracle asmdba  3197386752 Jan 23 08:37 spr_19_35tab1_01.dmp
-rw-r----- 1 oracle asmdba 12098797568 Jan 23 08:37 spr_19_35tab1_18.dmp


SQL> CREATE OR REPLACE DIRECTORY sim_dump AS '/vldcdsta20rtp2/backup/SPSSG1/sim_dump';

Directory created.

SQL> grant read,write on DIRECTORY sim_dump to public;

Grant succeeded.


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


