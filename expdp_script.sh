oracle@vl1118428rtp2:SPSSG11> tail -20f nohup.out
ORA-39171: Job is experiencing a resumable wait.
Resumable error: ORA-01652: unable to extend temp segment by 128 in tablespace TEMP
Resumable stmt: ALTER TABLE "SPR00DBO"."RPT_TAX_RECON_F" ADD CONSTRAINT "RPT_TAX_RECON_F_PK" PRIMARY KEY ("RPT_TAX_RECON_FACT_ID", "CLIENT_FIRST_DIM_ID") USING INDEX (CREATE UNIQUE INDEX "SPR00DBO"."RPT_TAX_RECON_F_PK" ON "SPR00DBO"."RPT_TAX_RECON_F" ("RPT_TAX_RECON_FACT_ID", "CLIENT_FIRST_DIM_ID") PCTFREE 10 INITRANS 2 MAXTRANS 255  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "SPR00DAT00_1" )  ENABLE
Resumable stmt status: SUSPENDED
Resumable stmt start: 01/24/26 11:05:11 stmt suspend: 01/24/26 12:54:25
ORA-39171: Job is experiencing a resumable wait.
Resumable error: ORA-01652: unable to extend temp segment by 128 in tablespace TEMP
Resumable stmt: ALTER TABLE "SPR00DBO"."RPT_TAX_RECON_F" ADD CONSTRAINT "RPT_TAX_RECON_F_PK" PRIMARY KEY ("RPT_TAX_RECON_FACT_ID", "CLIENT_FIRST_DIM_ID") USING INDEX (CREATE UNIQUE INDEX "SPR00DBO"."RPT_TAX_RECON_F_PK" ON "SPR00DBO"."RPT_TAX_RECON_F" ("RPT_TAX_RECON_FACT_ID", "CLIENT_FIRST_DIM_ID") PCTFREE 10 INITRANS 2 MAXTRANS 255  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "SPR00DAT00_1" )  ENABLE
Resumable stmt status: SUSPENDED
Resumable stmt start: 01/24/26 11:05:11 stmt suspend: 01/24/26 12:54:25
ORA-39171: Job is experiencing a resumable wait.
Resumable error: ORA-01652: unable to extend temp segment by 128 in tablespace TEMP
Resumable stmt: ALTER TABLE "SPR00DBO"."RPT_TAX_RECON_F" ADD CONSTRAINT "RPT_TAX_RECON_F_PK" PRIMARY KEY ("RPT_TAX_RECON_FACT_ID", "CLIENT_FIRST_DIM_ID") USING INDEX (CREATE UNIQUE INDEX "SPR00DBO"."RPT_TAX_RECON_F_PK" ON "SPR00DBO"."RPT_TAX_RECON_F" ("RPT_TAX_RECON_FACT_ID", "CLIENT_FIRST_DIM_ID") PCTFREE 10 INITRANS 2 MAXTRANS 255  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "SPR00DAT00_1" )  ENABLE
Resumable stmt status: SUSPENDED
Resumable stmt start: 01/24/26 11:05:11 stmt suspend: 01/24/26 13:46:21
ORA-39171: Job is experiencing a resumable wait.
Resumable error: ORA-01652: unable to extend temp segment by 128 in tablespace TEMP
Resumable stmt: ALTER TABLE "SPR00DBO"."RPT_TAX_RECON_F" ADD CONSTRAINT "RPT_TAX_RECON_F_PK" PRIMARY KEY ("RPT_TAX_RECON_FACT_ID", "CLIENT_FIRST_DIM_ID") USING INDEX (CREATE UNIQUE INDEX "SPR00DBO"."RPT_TAX_RECON_F_PK" ON "SPR00DBO"."RPT_TAX_RECON_F" ("RPT_TAX_RECON_FACT_ID", "CLIENT_FIRST_DIM_ID") PCTFREE 10 INITRANS 2 MAXTRANS 255  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE "SPR00DAT00_1" )  ENABLE
Resumable stmt status: SUSPENDED
Resumable stmt start: 01/24/26 11:05:11 stmt suspend: 01/24/26 13:46:21

       
       
       
       
       
       
       
       
       
       error_msg
FROM   dba_resumable;  2    3    4    5    6    7

SESSION_ID STATUS     START_TIME           SUSPEND_TIME         RESUME_TIME          ERROR_MSG
---------- ---------- -------------------- -------------------- -------------------- ------------------------------------------------------------
       680 NORMAL
        14 NORMAL
       176 NORMAL
       575 NORMAL
       627 NORMAL
       125 NORMAL
       453 NORMAL
        70 NORMAL
       740 NORMAL
       406 NORMAL
       293 NORMAL     01/24/26 11:05:11                         01/24/26 13:57:46

SESSION_ID STATUS     START_TIME           SUSPEND_TIME         RESUME_TIME          ERROR_MSG
---------- ---------- -------------------- -------------------- -------------------- ------------------------------------------------------------
        69 NORMAL
       520 NORMAL
       349 NORMAL
       179 NORMAL
       681 NORMAL
       230 NORMAL

17 rows selected.
==========================

FROM   dba_temp_free_space;  2    3    4    5

TABLESPACE_NAME                   SIZE_GB ALLOCATED_GB    FREE_GB
------------------------------ ---------- ------------ ----------
FLASH_TEMP_FOR_REP                     30   .000976563 29.9990234
FLASH_TEMP_FOR_SPS                     30   .000976563 29.9990234
FLASH_TEMP_FOR_WIDE                    30   .000976563 29.9990234
TEMP                           310.999023   256.049805 54.9580078
TEMP6                                  30   .000976563 29.9990234






















SELECT session_id,
       status,
       start_time,
       suspend_time,
       resume_time,
       error_msg
FROM   dba_resumable;

SELECT tablespace_name,
       tablespace_size / 1024 / 1024 / 1024 as size_gb,
       allocated_space / 1024 / 1024 / 1024 as allocated_gb,
       free_space / 1024 / 1024 / 1024      as free_gb
FROM   dba_temp_free_space;

col opname format a40
col message format a100
SET LINES 10000
SELECT SID, SERIAL#, opname,message, SOFAR, TOTALWORK,
ROUND(SOFAR/TOTALWORK*100,2) COMPLETE
FROM   gV$SESSION_LONGOPS
WHERE
TOTALWORK != 0
AND    SOFAR != TOTALWORK
order by 1;

alter tablespace temp add tempfile '+DATA01' SIZE 31G;
alter tablespace temp add tempfile '+DATA01' SIZE 31G;
alter tablespace temp add tempfile '+DATA01' SIZE 31G;


vi spr_86_112_tab.par

userid="comdba_id/RedSox2017"
DIRECTORY=sim_dump
DUMPFILE=spr_86_112_tab_%U.dmp
LOGFILE=spr_86_112_tab.log
TABLES=SPR00DBO.T_FPDAC_DATE_CNTL,SPR00DBO.T_FSCTS_CLIENT_TRUST_SWEEP_D,SPR00DBO.T_FSFXD_FRN_EXCH_D,SPR00DBO.T_FSPAD_END_D_ACTIVE,SPR00DBO.T_FSPAD_PARTICIPANT_D,SPR00DBO.T_FSPDD_PRTC_DIST_D,SPR00DBO.T_FSPGD_END_D_ACTIVE,SPR00DBO.T_FSPGD_PRTC_GRANT_D,SPR00DBO.T_FSPGF_PERF_GRANT_F,SPR00DBO.T_FSPID_PRICE_D,SPR00DBO.T_FSPPD_END_DT_ACTIVE,SPR00DBO.T_FSPPD_END_DT_EQ_PREV_DT,SPR00DBO.T_FSPPD_END_D_GTE_PROC_D,SPR00DBO.T_FSPPD_PERF_PERIOD_D,SPR00DBO.T_FSPPD_PERF_PERIOD_TSRU_D,SPR00DBO.T_FSPPD_START_DT_EQ_PR_DATE,SPR00DBO.T_FSPPV_END_D_ACTIVE,SPR00DBO.T_FSPPV_END_D_EQ_PREV_D,SPR00DBO.T_FSPPV_END_D_GTE_PROC_D,SPR00DBO.T_FSPPV_PERF_PERIOD_VEST_D,SPR00DBO.T_FSPPV_START_D_EQ_PROC_D,SPR00DBO.T_FSPSF_PRODUCT_STATEMENT_F,SPR00DBO.T_FSPVD_PRTC_VEST_D,SPR00DBO.T_FSPVF_END_D_ACTIVE,SPR00DBO.T_FSPVF_PERF_VEST_F,SPR00DBO.T_FSRCF_RSTC_CANCEL_F,SPR00DBO.T_FSWID_WIRE_INSN_D
QUERY="WHERE INSERT_D >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24)"
COMPRESSION=ALL
PARALLEL=16

nohup expdp parfile=spr_86_112_tab.par & 




TABLE_NAME                                   TABLE_GB
---------------------------------------- ------------
T_FSPAD_PARTICIPANT_D                         367.735
T_FSPGD_PRTC_GRANT_D                           23.645
T_FSPVF_PERF_VEST_F                             9.539
T_FSPVD_PRTC_VEST_D                             8.392
T_FSPDD_PRTC_DIST_D                             2.410
T_FSPSF_PRODUCT_STATEMENT_F                     1.919
T_FSPGF_PERF_GRANT_F                            1.143
T_FSRCF_RSTC_CANCEL_F                           0.204
T_FSPPD_PERF_PERIOD_D                           0.107
T_FSPID_PRICE_D                                 0.102
T_FSPPV_PERF_PERIOD_VEST_D                      0.062

TABLE_NAME                                   TABLE_GB
---------------------------------------- ------------
T_FSPPD_PERF_PERIOD_TSRU_D                      0.052
T_FSWID_WIRE_INSN_D                             0.000
T_FSCTS_CLIENT_TRUST_SWEEP_D                    0.000
T_FPDAC_DATE_CNTL                               0.000
T_FSFXD_FRN_EXCH_D                              0.000
SQL>










SET LINESIZE 200
COL TABLE_NAME FORMAT A40
COL TABLE_GB FORMAT 999,990.999

SELECT s.segment_name AS table_name,
       ROUND(SUM(s.bytes)/1024/1024/1024, 3) AS table_gb
FROM dba_segments s
WHERE s.owner = 'SPR00DBO'
  AND s.segment_type IN ('TABLE','TABLE PARTITION','TABLE SUBPARTITION')
  AND s.segment_name IN (
      'T_FPDAC_DATE_CNTL',
      'T_FSCTS_CLIENT_TRUST_SWEEP_D',
      'T_FSFXD_FRN_EXCH_D',
      'T_FSPAD_END_D_ACTIVE',
      'T_FSPAD_PARTICIPANT_D',
      'T_FSPDD_PRTC_DIST_D',
      'T_FSPGD_END_D_ACTIVE',
      'T_FSPGD_PRTC_GRANT_D',
      'T_FSPGF_PERF_GRANT_F',
      'T_FSPID_PRICE_D',
      'T_FSPPD_END_DT_ACTIVE',
      'T_FSPPD_END_DT_EQ_PREV_DT',
      'T_FSPPD_END_D_GTE_PROC_D',
      'T_FSPPD_PERF_PERIOD_D',
      'T_FSPPD_PERF_PERIOD_TSRU_D',
      'T_FSPPD_START_DT_EQ_PR_DATE',
      'T_FSPPV_END_D_ACTIVE',
      'T_FSPPV_END_D_EQ_PREV_D',
      'T_FSPPV_END_D_GTE_PROC_D',
      'T_FSPPV_PERF_PERIOD_VEST_D',
      'T_FSPPV_START_D_EQ_PROC_D',
      'T_FSPSF_PRODUCT_STATEMENT_F',
      'T_FSPVD_PRTC_VEST_D',
      'T_FSPVF_END_D_ACTIVE',
      'T_FSPVF_PERF_VEST_F',
      'T_FSRCF_RSTC_CANCEL_F',
      'T_FSWID_WIRE_INSN_D'
  )
GROUP BY s.segment_name
ORDER BY SUM(s.bytes) DESC;





alter system set db_recovery_file_dest_size='500G' scope=both sid='*';


FRA:

-- Utilisation (MB) du FRA
set lines 100
col name format a60
 
select
   name,
  floor(space_limit / 1024 / 1024) "Size MB",
  ceil(space_used / 1024 / 1024) "Used MB"
from v$recovery_file_dest;
 
-- FRA Occupants
SELECT * FROM V$FLASH_RECOVERY_AREA_USAGE;
 
-- Location and size of the FRA
show parameter db_recovery_file_dest
 
-- Size, used, Reclaimable 
SELECT
  ROUND((A.SPACE_LIMIT / 1024 / 1024 / 1024), 2) AS FLASH_IN_GB, 
  ROUND((A.SPACE_USED / 1024 / 1024 / 1024), 2) AS FLASH_USED_IN_GB, 
  ROUND((A.SPACE_RECLAIMABLE / 1024 / 1024 / 1024), 2) AS FLASH_RECLAIMABLE_GB,
  SUM(B.PERCENT_SPACE_USED)  AS PERCENT_OF_SPACE_USED
FROM
  V$RECOVERY_FILE_DEST A,
  V$FLASH_RECOVERY_AREA_USAGE B
GROUP BY
  SPACE_LIMIT, 
  SPACE_USED , 
  SPACE_RECLAIMABLE ;

  

target

TABLE_NAME                                ROW_COUNT
---------------------------------------- ----------
GRR00DBO.GRK_BRKR_ERROR_F                     23611
GRR00DBO.GRK_BRKR_MOBILITY_F                   2082
GRR00DBO.GRK_BRKR_MSG_TRKR_D                 239422
GRR00DBO.GRK_GRANT_ACTIVITY_F               6748540
GRR00DBO.GRK_GRANT_ACTIVITY_HIST_F         17910228
GRR00DBO.GRK_MBLT_AWD_DST_TRCK_F            1070878
GRR00DBO.GRK_PRODUCT_CONTROL_FS            19055501
GRR00DBO.GRK_PRTC_BRKR_INFO_D                279884
GRR00DBO.GRK_TAX_METH_F                     1044015
GRR00DBO.GRK_DIST_PAID_TRX_D                 531356
GRR00DBO.GRK_DIST_TAX_D                      836999

11 rows selected.

===========================================


source
==========

TABLE_NAME                                ROW_COUNT
---------------------------------------- ----------
GRR00DBO.GRK_BRKR_ERROR_F                    163768
GRR00DBO.GRK_BRKR_MOBILITY_F                   2813
GRR00DBO.GRK_BRKR_MSG_TRKR_D                 279285
GRR00DBO.GRK_GRANT_ACTIVITY_F               7429696
GRR00DBO.GRK_GRANT_ACTIVITY_HIST_F         40438136
GRR00DBO.GRK_MBLT_AWD_DST_TRCK_F            1073146
GRR00DBO.GRK_PRODUCT_CONTROL_FS            31832530
GRR00DBO.GRK_PRTC_BRKR_INFO_D                427898
GRR00DBO.GRK_TAX_METH_F                     1927435
GRR00DBO.GRK_DIST_PAID_TRX_D                 531592
GRR00DBO.GRK_DIST_TAX_D                      837821





SET LINESIZE 200
COL TABLE_NAME FORMAT A40

SELECT /*+ PARALLEL(16) */ 'GRR00DBO.GRK_BRKR_ERROR_F' AS TABLE_NAME, COUNT(*) AS ROW_COUNT FROM GRR00DBO.GRK_BRKR_ERROR_F
UNION ALL
SELECT /*+ PARALLEL(16) */ 'GRR00DBO.GRK_BRKR_MOBILITY_F', COUNT(*) FROM GRR00DBO.GRK_BRKR_MOBILITY_F
UNION ALL
SELECT /*+ PARALLEL(16) */ 'GRR00DBO.GRK_BRKR_MSG_TRKR_D', COUNT(*) FROM GRR00DBO.GRK_BRKR_MSG_TRKR_D
UNION ALL
SELECT /*+ PARALLEL(16) */ 'GRR00DBO.GRK_GRANT_ACTIVITY_F', COUNT(*) FROM GRR00DBO.GRK_GRANT_ACTIVITY_F
UNION ALL
SELECT /*+ PARALLEL(16) */ 'GRR00DBO.GRK_GRANT_ACTIVITY_HIST_F', COUNT(*) FROM GRR00DBO.GRK_GRANT_ACTIVITY_HIST_F
UNION ALL
SELECT /*+ PARALLEL(16) */ 'GRR00DBO.GRK_MBLT_AWD_DST_TRCK_F', COUNT(*) FROM GRR00DBO.GRK_MBLT_AWD_DST_TRCK_F
UNION ALL
SELECT /*+ PARALLEL(16) */ 'GRR00DBO.GRK_PRODUCT_CONTROL_FS', COUNT(*) FROM GRR00DBO.GRK_PRODUCT_CONTROL_FS
UNION ALL
SELECT /*+ PARALLEL(16) */ 'GRR00DBO.GRK_PRTC_BRKR_INFO_D', COUNT(*) FROM GRR00DBO.GRK_PRTC_BRKR_INFO_D
UNION ALL
SELECT /*+ PARALLEL(16) */ 'GRR00DBO.GRK_TAX_METH_F', COUNT(*) FROM GRR00DBO.GRK_TAX_METH_F
UNION ALL
SELECT /*+ PARALLEL(16) */ 'GRR00DBO.GRK_DIST_PAID_TRX_D', COUNT(*) FROM GRR00DBO.GRK_DIST_PAID_TRX_D
UNION ALL
SELECT /*+ PARALLEL(16) */ 'GRR00DBO.GRK_DIST_TAX_D', COUNT(*) FROM GRR00DBO.GRK_DIST_TAX_D;



CREATE BIGFILE TABLESPACE SPR00DAT00_1 DATAFILE '+DATA01' SIZE 31G AUTOEXTEND ON;  T 

create user SPR00DBO identified by Hfhhfb23n21 default tablespace SPR00DAT00_1 profile default;
grant connect,resource,dba to SPR00DBO;
alter user SPR00DBO quota unlimited on SPR00DAT00_1;






TABLESPACE_NAME
------------------------------
SPR00DAT00




SELECT DISTINCT TABLESPACE_NAME
FROM (
    SELECT TABLESPACE_NAME
    FROM DBA_TABLES
    WHERE TABLESPACE_NAME IS NOT NULL
      AND (OWNER, TABLE_NAME) IN (
          ('SPR00DBO', 'BRKR_ERROR_F'),
          ('SPR00DBO', 'BRKR_MSG_TRKR_D'),
          ('SPR00DBO', 'DIVISION_D'),
          ('SPR00DBO', 'GRANT_ACTIVITY_F'),
          ('SPR00DBO', 'GRANT_ACTIVITY_HIST_F'),
          ('SPR00DBO', 'PLAN_SPONSOR_ID_LOOKUP'),
          ('SPR00DBO', 'PRODUCT_CONTROL_FS'),
          ('SPR00DBO', 'PRTC_GRANT_CSTM_ERROR'),
          ('SPR00DBO', 'PRTC_TRANSACTIONS_F'),
          ('SPR00DBO', 'RPT_MBLT_TRCK_CTA_F'),
          ('SPR00DBO', 'RPT_TAX_RECON_F'),
          ('SPR00DBO', 'SHARE_POOL_D'),
          ('SPR00DBO', 'SPS_CYCLE_ERRORS'),
          ('SPR00DBO', 'TABBED_DIST_F'),
          ('SPR00DBO', 'TABBED_VEST_F'),
          ('SPR00DBO', 'T_FSERR_ERROR')
      )
    UNION ALL
    SELECT TABLESPACE_NAME
    FROM DBA_TAB_PARTITIONS
    WHERE (TABLE_OWNER, TABLE_NAME) IN (
          ('SPR00DBO', 'BRKR_ERROR_F'),
          ('SPR00DBO', 'BRKR_MSG_TRKR_D'),
          ('SPR00DBO', 'DIVISION_D'),
          ('SPR00DBO', 'GRANT_ACTIVITY_F'),
          ('SPR00DBO', 'GRANT_ACTIVITY_HIST_F'),
          ('SPR00DBO', 'PLAN_SPONSOR_ID_LOOKUP'),
          ('SPR00DBO', 'PRODUCT_CONTROL_FS'),
          ('SPR00DBO', 'PRTC_GRANT_CSTM_ERROR'),
          ('SPR00DBO', 'PRTC_TRANSACTIONS_F'),
          ('SPR00DBO', 'RPT_MBLT_TRCK_CTA_F'),
          ('SPR00DBO', 'RPT_TAX_RECON_F'),
          ('SPR00DBO', 'SHARE_POOL_D'),
          ('SPR00DBO', 'SPS_CYCLE_ERRORS'),
          ('SPR00DBO', 'TABBED_DIST_F'),
          ('SPR00DBO', 'TABBED_VEST_F'),
          ('SPR00DBO', 'T_FSERR_ERROR')
      )
)
ORDER BY TABLESPACE_NAME;






SQL> @ts90

TABLESPACE                       Size(MB)   Used(MB)   Free(MB) MAXBYTES(MB)     Used %
------------------------------ ---------- ---------- ---------- ------------ ----------
DCR01DAT00                            100          1         99     33554432          0
CFS00DAT00                         409600      13531     396069     33554432          0
WID00DAT00                            200         68        132       512000          0
SQLTXPLAIN                            500          5        495        33168          0
ODS00DAT00                           5120        331       4789     33554431          0
UNICADAT00                         287744       4847     282897      1536000          0
IDF00DAT00                         225280     128798      96482     33554432          0
CMF00DAT00                         227328     139678      87650     33553408          0
AAS00DAT00                           6144       5094       1050     33554432          0
INR00DAT02                        1024000       2173    1021827     33554432          0
GGR00DAT00                           1800       1652        148     33554432          0

TABLESPACE                       Size(MB)   Used(MB)   Free(MB) MAXBYTES(MB)     Used %
------------------------------ ---------- ---------- ---------- ------------ ----------
SPS00DAT00                         716800      81208     635592     33554432          0
UNDOTBS4                          3200352     120161    3080191     33554432          0
ODR00DAT00                         256000     147760     108240     33554431          0
PSS00DAT00                            100         68         32     33554432          0
INS00DAT02                            100         68         32     33554432          0
CRS00DAT00                            100         37         63     33554432          0
MSK00DAT00                            100          1         99     33554432          0
HSS00DAT00                         129024      15745     113279     33554432          0
GCE00DAT00                            100         71         29     33554432          0
CRR00DAT00                           1024        222        802     33554432          0
INS00DAT02_OLD                      10240         68      10172     33554432          0

TABLESPACE                       Size(MB)   Used(MB)   Free(MB) MAXBYTES(MB)     Used %
------------------------------ ---------- ---------- ---------- ------------ ----------
AP000DAT00                         409600     350703      58897     33554432          1
UTR00DAT00                         490496     329405     161091     33554432          1
UNDOTBS1                          4436160     273463    4162697     33554432          1
AAR00DAT00                         204800     179010      25790     33554432          1
UTS00DAT00                         409600     319914      89686     33554432          1
UNDOTBS2                          3072000     482846    2589154     33554432          1
UNDOTBS3                          3619008     283999    3335009     33554432          1
DCR00DAT01_OLD                     217720     207198      10522     33554432          1
AUDIT_DATA                            100          2         98          100          2
CFR00DAT00                         716800     616456     100344     33554432          2
HSR00DAT00                        1296384    1156450     139934     33554432          3

TABLESPACE                       Size(MB)   Used(MB)   Free(MB) MAXBYTES(MB)     Used %
------------------------------ ---------- ---------- ---------- ------------ ----------
HWS00DAT00                        1779967    1268565     511402     33554432          4
SPS_GLOBAL_DATA                   1730560    1355721     374839     33554431          4
IDS00DAT00                        1740800    1584882     155918     33554432          5
ESDF001                               100          6         94          100          6
DBS00DAT00                        3972096    2006028    1966068     33554432          6
IDR00DAT00                        4382720    2703928    1678792     33554432          8
CMR00DAT00                          24576      20593       3983       256000          8
DCF00DAT00                        5120000    3106815    2013185     33554432          9
BACKUP_TS                         3756032    3432322     323710     33554432         10
DCR00DAT01                        4310016    4104659     205357     33554432         12
HWR00DAT00                        4841472    4528243     313229     33554432         13

TABLESPACE                       Size(MB)   Used(MB)   Free(MB) MAXBYTES(MB)     Used %
------------------------------ ---------- ---------- ---------- ------------ ----------
SYSAUX                            2189312     415869    1773443      2189312         19
INS00DAT00                        1024000     837086     186914      3584000         23
DBR00DAT00                        9277440    8368090     909350     33554432         25
SPR00DAT00                       11386880    9411098    1975782     33554432         28
DCS00DAT00                       13469696   12706341     763355     33554432         38
INR00DAT00                        2662400    1549743    1112657      3584000         43
DCR00DAT00                       29352960   24256563    5096397     33554432         72
SYSTEM                             119808      98955      20853       119808         83
USERS                              275648     228088      47560       275648         83
CMS00DAT00                        2097152    1840894     256258      2097152         88
SQL>







create user GRR00DBO identified by Hfhhfb23n21 default tablespace SPS_GLOBAL_DATA_1 profile default;
grant connect,resource,dba to GRR00DBO;
alter user GRR00DBO quota unlimited on SPS_GLOBAL_DATA_1;


set verify off;
set feed off;
col program for a25
col username for a10
col TO_KILL for a15
col machine for a27
col program for a30
set lines 120
select Tablespace "TABLESPACE",CurrentSize "Size(MB)",Used "Used(MB)",Free "Free(MB)",Total "MAXBYTES(MB)",usedspace "Used %"  from
(select
   fs.tablespace_name tablespace,
   df.currentspace CurrentSize,
   (df.currentspace - nvl(fs.freespace,0)) Used,
   fs.freespace Free,
   df.totalspace Total,
   100-round(100 * ((fs.freespace+df.reservespace) / df.totalspace)) usedspace
  from
  (select
      tablespace_name,
      round(sum(decode(AUTOEXTENSIBLE,'YES',GREATEST(MAXBYTES,bytes),'NO',bytes)) / 1048576) TotalSpace,
      round(sum(bytes)/ 1048576) currentspace,
      round(sum(decode(AUTOEXTENSIBLE,'YES',greatest(maxbytes,bytes)-bytes,'NO',0))/ 1048576) reservespace
   from
      dba_data_files
   group by
      tablespace_name
   ) df,
   (select
      tablespace_name,
      round(sum(bytes) / 1048576) FreeSpace
   from
      dba_free_space
   group by
      tablespace_name
   ) fs
where
   df.tablespace_name = fs.tablespace_name)
   order by 6;



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

CREATE BIGFILE TABLESPACE SPR00DAT00_1 DATAFILE '+DATA01' SIZE 31G AUTOEXTEND ON;

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
remap_tablespace=SPS_GLOBAL_DATA:SPS_GLOBAL_DATA_1
TRANSFORM=DISABLE_ARCHIVE_LOGGING:Y
parallel=16

nohup impdp parfile=grr_5_15tab.par & 


vi spr_19_35.par

USERID="oradba/Dcd$traca1rtp"
DIRECTORY="sim_dump"
DUMPFILE="spr_19_35tab1_%U.dmp"
LOGFILE="imp_spr_19_35tab1.log"
TABLES=SPR00DBO.BRKR_ERROR_F,SPR00DBO.BRKR_MSG_TRKR_D,SPR00DBO.DIVISION_D,SPR00DBO.GRANT_ACTIVITY_F,SPR00DBO.GRANT_ACTIVITY_HIST_F,SPR00DBO.PLAN_SPONSOR_ID_LOOKUP,SPR00DBO.PRODUCT_CONTROL_FS,SPR00DBO.PRTC_GRANT_CSTM_ERROR,SPR00DBO.PRTC_TRANSACTIONS_F,SPR00DBO.RPT_MBLT_TRCK_CTA_F,SPR00DBO.RPT_TAX_RECON_F,SPR00DBO.SHARE_POOL_D,SPR00DBO.SPS_CYCLE_ERRORS,SPR00DBO.TABBED_DIST_F,SPR00DBO.TABBED_VEST_F,SPR00DBO.T_FSERR_ERROR
QUERY="WHERE INSERT_D >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -24)"
REMAP_TABLESPACE=SPR00DAT00:SPR00DAT00_1
TRANSFORM=DISABLE_ARCHIVE_LOGGING:Y
PARALLEL=16

nohup impdp parfile=spr_19_35.par & 







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


