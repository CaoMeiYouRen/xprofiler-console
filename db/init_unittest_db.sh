
# init unit test database script

mysql -uroot -p${MYSQL_PASSWORD} -h${MYSQL_HOST} -e 'DROP DATABASE IF EXISTS `xprofiler_console_unittest`; CREATE DATABASE `xprofiler_console_unittest`;'
mysql -uroot -p${MYSQL_PASSWORD} -h${MYSQL_HOST} -D 'xprofiler_console_unittest' < ${PWD}/db/init.sql
mysql -uroot -p${MYSQL_PASSWORD} -h${MYSQL_HOST} -D 'xprofiler_console_unittest' -e 'SHOW tables;'

mysql -uroot -p${MYSQL_PASSWORD} -h${MYSQL_HOST} -e 'DROP DATABASE IF EXISTS `xprofiler_logs_unittest`; CREATE DATABASE `xprofiler_logs_unittest`;'
