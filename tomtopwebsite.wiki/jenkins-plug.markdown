# 使用的jenkins插件
* GitHub plugin
* sbt plugin 在.sbt添加配置文件repositories

```java
[repositories]
  local
  ivy-proxy-releases: http://192.168.7.15:8080/artifactory/ivy-releases/, [organization]/[module]/(scala_[scalaVersion]/)(sbt_[sbtVersion]/)[revision]/[type]s/[artifact](-[classifier]).[ext]  
  maven-proxy-releases: http://192.168.7.15:8080/artifactory/repo/
```

# sbt build command
```
-Dsbt.log.noformat=true -Dsbt.override.build.repos=true -Dsbt.repository.config=artifactory/repositories
clean universal:package-zip-tarball
```