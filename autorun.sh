#!/bin/bash
(ls count >> /dev/null 2>&1 && a=1) || a=0
if [ $a == 0 ]
then
	echo " firsttime"
	touch count
   ./script.sh
else
	echo " secondtime"
	git add .
	git commit -a --allow-empty-message -m ''
	filename=`cat config`
	git push https://kaushik-infosec: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@github.com/kaushik-infosec/${filename}"-.git" 
fi