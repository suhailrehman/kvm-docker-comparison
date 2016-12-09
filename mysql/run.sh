#!/bin/bash

runId=0
while [ $runId -lt 10 ]
do
				numCli=10
				while [ $numCli -lt 180 ]
				do
								sysbench --test=oltp --oltp-table-size=2000000 --mysql-db=benchmark --mysql-host=localhost --mysql-user=$MYSQLHOST --mysql-port=3306 --mysql-password=$MYSQLPASS  --max-time=60 --oltp-read-only=on --max-requests=0 --num-threads=$numCli run
								sleep 5
								numCli=$(($numCli + 10))
				done > ~/results-2000000-native-$runId
				runId=$(($runId + 1))
done
