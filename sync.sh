#!/bin/bash

export PATH=$PATH:/usr/local/bin

status=`git status --porcelain`

if [ ${#status} -ne 0 ]
then
	git add .
	git commit -m "Automated commit: ${status}"
	git pull --rebase
	git push
fi
