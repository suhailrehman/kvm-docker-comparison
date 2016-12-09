#!/bin/bash

$SYSBENCH --test=$TEST --oltp-table-size=2000000 --mysql-db=benchmark --mysql-host=$MYSQLHOST --mysql-user=root --mysql-port=3306 --mysql-password=$MYSQLPASS cleanup
$SYSBENCH --test=$TEST --oltp-table-size=2000000 --mysql-db=benchmark --mysql-host=$MYSQLHOST --mysql-user=root --mysql-port=3306 --mysql-password=$MYSQLPASS prepare


