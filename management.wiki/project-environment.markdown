数据库
---------------
mysql,postgresql


所用技术
* [spring boot](http://docs.spring.io/spring-boot/docs/current-SNAPSHOT/reference/htmlsingle/)
* [ebean orm](http://ebean-orm.github.io/)
* [free market](http://freemarker.incubator.apache.org/)
* [Metronic]这个找其他同事要文档；
* [异步事件处理EventBus](EventBusDoc)

maven配置文件 
--------------------
settings.xml 文件放到 {用户目录}/.m/ 目录下
```
<?xml version="1.0" encoding="UTF-8"?>
<settings xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.1.0 http://maven.apache.org/xsd/settings-1.1.0.xsd" xmlns="http://maven.apache.org/SETTINGS/1.1.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <servers>
    <server>
      <id>7670cfa95def</id>
      <username>deploy</username>
      <password>AP5zC2mZguhjcoW7</password>
    </server>
  </servers>
  <mirrors>
    <mirror>
      <mirrorOf>*</mirrorOf>
      <name>repo</name>
      <url>http://192.168.220.54:8080/artifactory/repo</url>
      <id>repo</id>
    </mirror>
	 <mirror>
        <id>nexus-osc</id>
        <mirrorOf>central</mirrorOf>
        <name>Nexus osc</name>
        <url>http://maven.oschina.net/content/groups/public/</url>
    </mirror>
    <mirror>
        <id>nexus-osc-thirdparty</id>
        <mirrorOf>thirdparty</mirrorOf>
        <name>Nexus osc thirdparty</name>
        <url>http://maven.oschina.net/content/repositories/thirdparty/</url>
    </mirror>  
	<mirror>
	  <id>repo2</id>
	  <mirrorOf>central</mirrorOf>
	  <name>Human Readable Name for this Mirror.</name>
	  <url>http://repo2.maven.org/maven2/</url>
	</mirror>	
	<mirror>
	  <id>ui</id>
	  <mirrorOf>central</mirrorOf>
	  <name>Human Readable Name for this Mirror.</name>
	 <url>http://uk.maven.org/maven2/</url>
	</mirror>
	<mirror>  
	  <id>jboss-public-repository-group</id>  
	  <mirrorOf>central</mirrorOf>  
	  <name>JBoss Public Repository Group</name>  
	  <url>http://repository.jboss.org/nexus/content/groups/public</url>  
	</mirror>
	<mirror>  
	  <id>ibiblio</id>  
	  <mirrorOf>central</mirrorOf>  
	  <name>ibiblio Mirror of http://repo1.maven.org/maven2/</name>  
	  <url>http://mirrors.ibiblio.org/pub/mirrors/maven2/</url>  
	</mirror>  
  </mirrors>
  <profiles>
    <profile>
      <repositories>
        <repository>
          <snapshots>
            <enabled>false</enabled>
          </snapshots>
          <id>central</id>
          <name>repo</name>
          <url>http://192.168.220.54:8080/artifactory/repo</url>
        </repository>
        <repository>
          <snapshots />
          <id>snapshots</id>
          <name>repo</name>
          <url>http://192.168.220.54:8080/artifactory/repo</url>
        </repository>
      </repositories>
      <pluginRepositories>
        <pluginRepository>
          <snapshots>
            <enabled>false</enabled>
          </snapshots>
          <id>central</id>
          <name>plugins-release</name>
          <url>http://192.168.220.54:8080/artifactory/plugins-release</url>
        </pluginRepository>
        <pluginRepository>
          <snapshots />
          <id>snapshots</id>
          <name>plugins-snapshot</name>
          <url>http://192.168.220.54:8080/artifactory/plugins-snapshot</url>
        </pluginRepository>
      </pluginRepositories>
      <id>artifactory</id>
    </profile>
  </profiles>
  <activeProfiles>
    <activeProfile>artifactory</activeProfile>
  </activeProfiles>
</settings>
```