#########################################################################
# File    : gitCommitScript.sh
# Abstract    :
# Author: WR
# mail: 791314247@qq.com
# <h2><center>&copy; COPYRIGHT(c) 2020 Ac6</center></h2>>>)>>
# Created Time:2020年12月01日 星期二 14时46分49秒
#########################################################################
#!/bin/bash

result=$(git status | grep "git pull")

if test "$result" != ""
then
    echo "Need to do \"git pull\""
    exit 0
fi

git add .
read -p "Please input git commit explain:" explain
if test -z "$explain"
then 
    explain="Daily development submission"
fi
git commit -m "$explain"
git push
git status

