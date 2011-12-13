#!/bin/bash

date=`date +%U`

week=`date +"%B %e, %Y"`

# enter full email as an argument
email=$1

if [ ~/reports/${date}_report ]
then
	mail -s "Jason's Weekly Report - $week" $1 < ~/reports/${date}_report
fi
