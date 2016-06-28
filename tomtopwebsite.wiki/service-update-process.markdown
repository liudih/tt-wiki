How to do Smooth Update
=======================

Architecture
------------

* Nginx acting as the frontend
* Docker running application containers
* Docker running databases and supporting services

Start Simple
------------
* One container is running V1
* Nginx proxing to V1
* A new version available
* Deploy another container V2, using different port
* Take V1 off
* Reconfigure Nginx, proxying to V2

It is important to know which is the active container during upgrade.

| Step         | Inside Docker       |  Configurations   |
|--------------|---------------------|-------------------|
| V1 running   | V1                  | Active = V1       |
| Deploy V2    | V1, V2              | Active = V1       |
| Takeout V1   | V2                  | Active = V2       |


Techniques Available
--------------------
* Fleet Discovery Service 
  https://www.digitalocean.com/community/tutorials/how-to-create-and-run-a-service-on-a-coreos-cluster
* Etcd and Confd
  https://www.digitalocean.com/community/tutorials/how-to-use-confd-and-etcd-to-dynamically-reconfigure-services-in-coreos

Further Extensions
------------------
V1 represents a set of units running the same version, whereas V2 represents
another set of units running another version.
