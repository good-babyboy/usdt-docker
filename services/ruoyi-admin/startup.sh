#!/bin/bash
server_name="tom"

# 启动
java -jar -Duser.timezone=GMT+08 -server -XX:+HeapDumpOnOutOfMemoryError -Xms512m -Xmx512m $server_name.jar
