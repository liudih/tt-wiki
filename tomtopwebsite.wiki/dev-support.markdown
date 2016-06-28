开发服务器
=========
* 192.168.7.13 (开发环境：SIT、UAT)
* 192.168.7.14 (Jenkins构建服务器)
* 192.168.7.15 (开发支持工具)

以上服务器都是用 CoreOS，在上面运行不同的Docker容器。登入方法：

    ssh core@192.168.7.x

有需要的请添加SSH Public Key到 
* `~core/.ssh/authorized_keys`
* `/var/lib/coreos-install/user_data`

CoreOS的配置用的是Fleet Service，每一个容器我们都有相应的一个 service 档案。
* [192.168.7.15上的服务](http://192.168.7.15:10080/devsupport/coreos-dev-infra/tree/master/services/devroot)
* [192.168.7.14上的服务](http://192.168.7.15:10080/devsupport/coreos-dev-infra/tree/master/services/build)
* [192.168.7.13上的服务](http://192.168.7.15:10080/tomtopwebsite/tomtopwebsite-fleet-units/tree/master)

针对CoreOS的使用方法，请看他们的官网：https://coreos.com


SIT/UAT环境 - 操作系统层
======================
* SIT和UAT环境都是基于Docker的镜像，这个镜像的构建是通过这个[Docker项目](http://192.168.7.15:10080/tomtopwebsite/uat-container)
* 例如：[SIT配置](http://192.168.7.15:10080/tomtopwebsite/tomtopwebsite-fleet-units/blob/master/tomtopwebsite-sit.service)
* SIT开放了8022的SSH登入端口，UAT则开放了1022
* 从配置看，如需要用root登入SIT，可以修改 `/data/sit/.ssh/authorized_keys`，因为整个`/data/sit/.ssh`目录会被映射到容器内的`/root/.ssh`
* 由于容器重启是会删掉旧的容器再重建的，故此SSH客户端在这个时候会检测到Host Key Verification Error，需忽略掉这个错误
* SIT SSH 登入: `ssh -oUserKnownHostsFile=/dev/null -oStrictHostKeyChecking=no -p8022 root@192.168.7.13`
* UAT SSH 登入: `ssh -oUserKnownHostsFile=/dev/null -oStrictHostKeyChecking=no -p1022 root@192.168.7.13`

以上步骤相当于两个服务器／操作系统（SIT 和 UAT）。操作系统里面需要做适当的配置

SIT/UAT环境 - 应用层安装
======================
* 一个干净的操作系统，如何变成一个安装好所有应用的系统，并且配置好呢？
* 一个应用需要正常运行，需要：1. 安装，和 2. 配置
* 安装一个Play应用，看看官网上[应用发布说明](https://www.playframework.com/documentation/2.3.x/ProductionDist)
* 具体我们在[Jenkins的打包任务](http://192.168.7.14:8080/job/TomtopWeb-Build/)
* 打包好的文件，通过这个[Jenkins任务](http://192.168.7.14:8080/job/TomtopWeb-Distribute/)，
  会被放在 `http://192.168.7.13:82/<build>/` 中。如 `http://192.168.7.13:82/1915/tomtopweb-1.0-SNAPSHOT.tgz` [链接](http://192.168.7.13:82/1915/tomtopweb-1.0-SNAPSHOT.tgz)
* 192.168.7.13 为什么会有 82 端口？看这个[容器定义](http://192.168.7.15:10080/tomtopwebsite/tomtopwebsite-fleet-units/blob/master/distribution.service)
* 我们使用了配置管理工具： Puppet （[教程](http://www.example42.com/tutorials/PuppetTutorial/#slide-0)）
* 看看[网站应用的Puppet模块](http://192.168.7.15:10080/tomtopwebsite/provisioning/tree/master/modules/tomtopweb) 和 [UAT的具体配置](http://192.168.7.15:10080/tomtopwebsite/uat-puppet/blob/master/manifests/default.pp)
* 由Puppet模块看，tgz包会在操作系统中的 `/deploy-9000` 和 `/deploy-9001` 为什么？看[当中的repo变量](http://192.168.7.15:10080/tomtopwebsite/provisioning/blob/master/modules/tomtopweb/manifests/instance.pp)和[UAT如何设定repo](http://192.168.7.15:10080/tomtopwebsite/uat-puppet/blob/master/manifests/default.pp)
* Puppet执行结束，应用就应该配置好并启动了

整个构建链
=========
* [http://192.168.7.14:8080/view/Website/](http://192.168.7.14:8080/view/Website/)
* [jenkins plug] (jenkins-plug)
