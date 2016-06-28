模块分类
-------

### 第一类：单纯对象（POJO、Utils）
```
+--------------+
| POJO Classes |
| Utilities    |
+--------------+
```

### 第二类：依赖基础设施的（如Database，ElasticSearch等）
```
+----------------+
| Infrastructure |
| Dependent Code |
+----------------+
        |
        V
     +-----+
     | DB  |
     +-----+
```

### 第三类：开放服务接口，可以依赖基础设施的（如Database，ElasticSearch等），也可以不依赖
```
+-------------------------------+     +---------------------+
|         Export Services       |     | Services API Client |  
+----------------+--------------+     +---------------------+
| Infrastructure | POJO Classes |
| Dependent Code | Utilities    |
+----------------+--------------+
        |
        V
     +-----+
     | DB  |
     +-----+
```

所谓基础设施，是指比较重量的服务（如数据库服务），需要环境提供的、预先配置好的服务。


