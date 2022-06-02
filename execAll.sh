#!/bin/bash

BASEDIR=$(dirname "$0")
#BASEDIR=/Users/robertw/Workspace/pam/Database/postgresql
TABLEDIR=$BASEDIR/objects/pam/tables
VIEWDIR=$BASEDIR/objects/pam/views
PROCDIR=$BASEDIR/objects/pam/programming
TRIGGERDIR=$BASEDIR/objects/pam/trigger
SCRIPTDIR=$BASEDIR/scripts
TESTDATADIR=$BASEDIR/testDataScripts
LOGSUBDIR="sqllogs"
LOGDIR=$BASEDIR/$LOGSUBDIR

HOST=localhost
PORT=5432
DATABASE=pam
USER=robertw
PGPASSWORD=Melissa01

export PGPASSWORD





function execScript() {
    basename="$(basename $1)"
    extension="${basename##*.}"
    fileroot="${basename%%.*}"
    logfile="$fileroot.log"
    logfilerelpath="$LOGDIR/$logfile"
    logpath="$LOGDIR/$fileroot.log"

    printf "psql -host $SERVER -port ${PORT} -dbname $DATABASE --username $USER  [PGPASSWORD ${PGPASSWORD}] --file $1"
    psql --host=${HOST} --port=${PORT} --username=${USER}  --dbname=${DATABASE} --file "$1" | tee  $logfilerelpath
    return ${PIPESTATUS[0]}
}
export rv=0
printf "\n\nProcessing all SQL files in $BASEDIR. log files are being outputted to $LOGDIR...\n"
#execScript $BASEDIR/drop_pk_fk_relationships.sql

printf "Running scripts to create tables...\n";
for script in `ls $TABLEDIR/0*.sql | sort -V`; do
    printf "   $script\n"
    execScript "$script";
done;

printf "Running scripts to create views...\n";
for script in `ls $VIEWDIR/0*.sql | sort -V`; do
    printf "   $script\n"
    execScript "$script";
done;

# printf "Running scripts to create procedures...\n";
# for script in `ls $PROCDIR/0*.sql | sort -V`; do
#     printf "   $script\n"
#     execScript "$script";
# done;

# printf "Running scripts to create trigger...\n";
# for script in `ls $TRIGGERDIR/0*.sql | sort -V`; do
#     printf "   $script\n"
#     execScript "$script";
# done;


printf "Running scripts to create data...\n";
for script in `ls $SCRIPTDIR/0*.sql | sort -V`; do
    printf "   $script\n"
    execScript "$script";
done;

printf "Running scripts to create test data...\n";
for script in `ls $TESTDATADIR/0*.sql | sort -V`; do
    printf "   $script\n"
    execScript "$script";
done;


exit $rv


