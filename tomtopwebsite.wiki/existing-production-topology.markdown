生产系统现状
==========

1. ttwww (8 Core, 2.66GHz)
    * IP = 10.12.167.130, 74.86.127.114, 74.86.141.128-135
    * RAM = 15G
    * Disk1 = 500G, Disk2 = 500G
    * Major Processes: redis-server, varnishd, php-fpm, nginx

2. ttwww2 (16 Core, 2.4GHz)
    * IP = 10.37.60.208, 173.193.39.187
    * RAM = 47G
    * Disk1 = 500G, Disk2 = 1000G
    * Major Processes: php-fpm, nginx

3. ttmysql (8 Core, 2.5GHz)
    * IP = 10.12.167.132, 74.86.127.115, 67.228.17.208-215
    * RAM = 15G
    * Disk1 = 500G, Disk2 = 500G
    * Major Processes: mongod, mysqld

4. ttimg (16 Core, 2.4GHz Xeon)
    * IP = 10.37.60.206, 173.193.39.186, 173.192.59.0-7
    * RAM = 94G
    * Disk1 = 500G, Disk2 = 3000G
    * Major Processes: varnishd

