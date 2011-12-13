#!/bin/bash

# Add a link or sym link to this file called wk in ~/bin. Once you refresh $PATH (log out and log back in), you can just type wk and your task in quotes from the command line.

date=`date +%U`

week=`date +"%B %e, %Y"`

# This pulls all the arguments from the command line.
task=$@

# Check if the report exists. If it doesn't, create it and add a header:
if [ ! -e ~/reports/${date}_report ]
then
	# My name is Jason, but you can enter your name here. It will appear at the top of the email
	echo "Jason's Weekly Report - $week" >> ~/reports/${date}_report
	echo "" >> ~/reports/${date}_report
fi

# Only add an entry if you include content as an argument
if [ -n "$task" ] 
then
	echo "- $task" >> ~/reports/${date}_report
	echo "" >> ~/reports/${date}_report
fi
