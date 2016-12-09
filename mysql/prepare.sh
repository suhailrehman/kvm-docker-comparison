#!/bin/bash

sysbench --test=oltp --oltp-table-size=2000000 --mysql-db=benchmark --mysql-host=localhost --mysql-user=root --mysql-port=3306 --mysql-password=$MYSQLPASS cleanup
sysbench --test=oltp --oltp-table-size=2000000 --mysql-db=benchmark --mysql-host=localhost --mysql-user=root --mysql-port=3306 --mysql-password=$MYSQLPASS prepare


