#!/usr/bin/env bash
date=$(date)
echo -n "Push Message： "
read  message
if [ "$message"x != ""x ];then
	message="$message;　"
fi

git pull origin master:master
git add -A
git commit -m "${message}${USER} 更新于 ${date}."
git push -u origin master

echo "更新并推送成功！"
exit 0;
