#!/bin/bash
server_name="ruoyi-admin"

PID=$(ps -aux | grep $server_name | awk '{print $2}')

if [ x"$PID" != x"" ]; then
  kill -9 "$PID"
else
  echo 'not start...'
fi
# 切换到jar目录启动，目的配置外置
cd /home/ruoyi/jar || exit
file=$(ls)
echo "$file"
# 启动
java -jar -Duser.timezone=GMT+08 -server -XX:+HeapDumpOnOutOfMemoryError -Xms512m -Xmx512m $server_name.jar
