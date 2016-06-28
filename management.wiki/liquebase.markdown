1：项目通过liquibase管理数据变更（例如：添加表,初始化数据,修改表等）

2：执行liquibase有3个操作：检查更新，执行更新，重置初始化数据
   本地访问路径：http://localhost:9001/public/liquibase/checkLiquibase
    

3:在生产环境 为了防止liquibase  执行reset操作，需要将配置项：liquibase.reset 设置成false
eg:liquibase.reset=false