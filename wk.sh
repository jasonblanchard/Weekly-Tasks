#!/bin/bash

date=`date +%U`

week=`date +"%B %e, %Y"`

task=$@

if [ ! -e ~/reports/${date}_report ]
then
	# My name is Jason, but you can enter your name here. It will appear at the top of the email
	echo "Jason's Weekly Report - $week" >> ~/reports/${date}_report
	echo "" >> ~/reports/${date}_report
fi

if [ -n "$task" ] 
then
	echo "- $task" >> ~/reports/${date}_report
	echo "" >> ~/reports/${date}_report
fi
