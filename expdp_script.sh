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

    SELECT  TABLESPACE_NAME 
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



Filesystem                                                         Size  Used Avail Use% Mounted on
devtmpfs                                                            63G     0   63G   0% /dev
tmpfs                                                               63G  465M   63G   1% /dev/shm
tmpfs                                                               63G  4.0G   59G   7% /run
tmpfs                                                               63G     0   63G   0% /sys/fs/cgroup
/dev/mapper/vglocal-root                                            20G  4.9G   16G  25% /
tmpfs                                                               63G  440K   63G   1% /tmp
/dev/sda3                                                           15G  140M   15G   1% /var/crash
/dev/mapper/vglocal-opt                                             12G  1.5G   11G  13% /opt
/dev/sda2                                                         1014M  214M  801M  22% /boot
/dev/mapper/vglocal-log                                             15G  1.4G   14G   9% /var/log
/dev/sda1                                                         1022M  5.9M 1017M   1% /boot/efi
/dev/mapper/appsvg_vl1118428rtp2-lv_grid_base                       50G  3.6G   47G   8% /grid/base
/dev/mapper/appsvg_vl1118428rtp2-lv_grid_oracle_product             50G   13G   38G  25% /grid/oracle/product
/dev/mapper/appsvg_vl1118428rtp2-lv_vldcdsta20rtp2                1014M   40M  975M   4% /vldcdsta20rtp2
/dev/mapper/appsvg_vl1118428rtp2-lv_vldcdsta20rtp2_oracle          6.0G  270M  5.8G   5% /vldcdsta20rtp2/oracle
/dev/mapper/appsvg_vl1118428rtp2-lv_vldcdsta20rtp2_oracle_dba       25G  211M   25G   1% /vldcdsta20rtp2/oracle/dba
/dev/mapper/appsvg_vl1118428rtp2-lv_vldcdsta20rtp2_oracle_product   60G   13G   48G  21% /vldcdsta20rtp2/oracle/product
/dev/mapper/appsvg_vl1118428rtp2-lv_support_tools_oracle            25G  1.8G   24G   7% /support_tools/oracle
/dev/mapper/appsvg_vl1118428rtp2-lv_home_oracle                    8.0G  175M  7.9G   3% /home/oracle
tmpfs                                                               13G     0   13G   0% /run/user/103
/dev/mapper/appsvg_vl1118428rtp2-lv_home_oemagent                  6.0G  1.8G  4.3G  29% /home/oemagent
tmpfs                                                               13G     0   13G   0% /run/user/142264
/dev/asm/volume1-478                                               2.0T  4.7G  2.0T   1% /vldcdsta20rtp2/backup
tmpfs                                                               13G     0   13G   0% /run/user/143074





target ip : 10.195.104.68

source ip : 10.235.162.60

cd /u02/wide/acfs/dba_work/dsdb/sim_dump && tar -cf - *.dmp | ssh oracle@10.210.16.136 "ssh oracle@10.195.104.68 'cd /vldcdsta20rtp2/backup/SPSSG1/sim_dump && tar -xf -'"



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

[/u02/wide/acfs/dba_work/dsdb/sim_dump]
oracle@o54oma2vc11:default> du -sh
260G    .

[/u02/wide/acfs/dba_work/dsdb/sim_dump]
oracle@o54oma2vc11:default>















SQL> CREATE OR REPLACE DIRECTORY sim_dump AS '/vldcdsta20rtp2/backup/SPSSG1/sim_dump';

Directory created.

SQL> grant read,write on DIRECTORY sim_dump to public;

Grant succeeded.

[/vldcdsta20rtp2/backup/SPSSG1]
oracle@vl1118428rtp2:SPSSG11> mkdir sim_dump

[/vldcdsta20rtp2/backup/SPSSG1]
oracle@vl1118428rtp2:SPSSG11> cd sim_dump/

[/vldcdsta20rtp2/backup/SPSSG1/sim_dump]
oracle@vl1118428rtp2:SPSSG11> pwd
/vldcdsta20rtp2/backup/SPSSG1/sim_dump

[/vldcdsta20rtp2/backup/SPSSG1/sim_dump]





CREATE OR REPLACE DIRECTORY sim_dump AS '/vldcdsta20rtp2/backup/SPSSG1/sim_dump';


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


