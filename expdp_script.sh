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
