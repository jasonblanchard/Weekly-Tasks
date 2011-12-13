#!/bin/bash

date=`date +%U`

week=`date +"%B %e, %Y"`

# enter full email as an argument
email=$1

if [ ~/reports/${date}_report ]
then
	# Jason is my name, but you can change it here. It will appear in the subject line.
	mail -s "Jason's Weekly Report - $week" $1 < ~/reports/${date}_report
fi
