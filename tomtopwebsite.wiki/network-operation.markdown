生产环境
===========
* app01 - WAN=198.11.253.50, LAN=10.109.129.7
    * Play应用
* app02 - WAN=198.11.253.51, LAN=10.109.129.8
    * ElasticSearch + Redis
* db01 - WAN=169.54.12.100, LAN=10.124.57.220
    * PostgreSQL

Rate Limit
===========

* 防止过量访问：http://sentry.readthedocs.org/en/latest/throttling/


Puppet
======
* http://www.example42.com/tutorials/PuppetTutorial/#slide-0