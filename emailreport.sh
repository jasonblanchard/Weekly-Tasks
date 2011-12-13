#!/bin/bash
#Add this script to your crontab file to email your report automatically

date=`date +%U`

week=`date +"%B %e, %Y"`

# enter full email as an argument
email=$1

# Only send the email if the current week's reports list exists
if [ ~/reports/${date}_report ]
then
	# Jason is my name, but you can change it here. It will appear in the subject line.
	mail -s "Jason's Weekly Report - $week" $1 < ~/reports/${date}_report
fi
