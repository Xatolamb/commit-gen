#!/bin/bash

arr[0]="bot: 👋 Hello Github!"
arr[1]="bot: 🥳 Yeayyy!"
arr[2]="bot: 😬 Working from github."
arr[3]="bot: 👨‍💻 Work, work, work!"
arr[4]="bot: 😪 Hufft..."
arr[5]="bot: 😎 I'm working for my master!"
arr[6]="bot: 🙄 Running task, again."
arr[7]="bot: 👻 Thanks master."

d=`date '+%Y-%m-%dT%H:%M:%SZ'`
rand=$[$RANDOM % ${#arr[@]}]
echo "## 🤔 LAST UPDATED AT: ${d}" > update.md

size=$((days*24*60))
git config --local user.email "xatolamb@gmail.com"
git config --local user.name "xatolamb"
git commit --amend --allow-empty --no-edit --date "$(date -d "-$i minutes")"
git commit -am "${arr[$rand]} (at ${d})"

days=200
total_commit=600
size=$((days*24*60))
a=$(shuf -i 1-$size -n $total_commit | sort -r -n)
git checkout -b gh-pages
for i in ${a}
do 
git commit --allow-empty -m "Success"
git commit --amend --allow-empty --no-edit --date "$(date -d "-$i minutes")"
done 
git push origin gh-pages
git checkout master
