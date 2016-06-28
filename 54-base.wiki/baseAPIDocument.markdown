基本接口文档

UAT测试地址：http://192.168.220.53:8000/
反向代理地址：http://base.api.tomtop.com
------------------------------------------------
#### 1.获取所有客户端
```
GET   ${website}/base/client/v1
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "name": "TOMTOP-PC",
            "type": "web",
            "siteId": 1
        },
        {
            "id": 2,
            "name": "TOMTOP-Mobile",
            "type": "mobile",
            "siteId": 1
        }
    ]
}

```
------------------------------------------------
#### 2.根据Id获取客户端
```
GET   ${website}/base/client/v1/:clientId
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "id": 1,
        "name": "TOMTOP-PC",
        "type": "web",
        "siteId": 1
    }
}
```
------------------------------------------------
#### 3.根据name获取客户端
```
GET   ${website}/base/client/v1/name/:clientName
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "name": "TOMTOP-PC",
            "type": "web",
            "siteId": 1
        }
    ]
}

```
------------------------------------------------
#### 4.获取所有国家
```
GET   ${website}/base/country/v1
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "name": "en",
            "nationalFlagImgUrl": "http://img",
            "isoCodeTwo": "en123",
            "isoCodeThree": "en1231",
            "currency": "USD",
            "officialLanguageId": 1,
            "languageId": 1
        }
    ]
}

```
------------------------------------------------
#### 5.根据Id获取国家
```
GET   ${website}/base/country/v1/:countryId
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "id": 1,
        "name": "en",
        "nationalFlagImgUrl": "http://img",
        "isoCodeTwo": "en123",
        "isoCodeThree": "en1231",
        "currency": "USD",
        "officialLanguageId": 1,
        "languageId": 1
    }
}

```
------------------------------------------------
#### 6.根据name获取国家
```
GET   ${website}/base/country/v1/:countryName
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "name": "en",
            "nationalFlagImgUrl": "http://img",
            "isoCodeTwo": "en123",
            "isoCodeThree": "en1231",
            "currency": "USD",
            "officialLanguageId": 1,
            "languageId": 1
        }
    ]
}

```
------------------------------------------------
#### 7.获取所有货币
```
GET   ${website}/base/currency/v1/
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "name": "United States",
            "code": "USD",
            "symbolPositions": 1,
            "symbolCode": "$",
            "currentRate": 1
        }
    ]
}

```
------------------------------------------------
#### 8.根据ID获取货币
```
GET   ${website}/base/currency/v1/:currencyId
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "id": 1,
        "name": "United States",
        "code": "USD",
        "symbolPositions": 1,
        "symbolCode": "$",
        "currentRate": 0.7777
    }
}

```
------------------------------------------------
#### 9.根据 name/code 获取货币
```
GET   ${website}/base/currency/v1/where
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| name    |   String    | 货币名称 不是必须|
| code |   String    | 货币标识 不是必须                               |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "name": "United States",
            "code": "USD",
            "symbolPositions": 1,
            "symbolCode": "$",
            "currentRate": 1
        }
    ]
}

```
------------------------------------------------
#### 10.获取所有语言
```
GET   ${website}/base/language/v1
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "name": "English",
            "code": "en"
        },
        {
            "id": 2,
            "name": "español",
            "code": "es"
        },
        {
            "id": 3,
            "name": "русский",
            "code": "ru"
        },
        {
            "id": 4,
            "name": "deutsch",
            "code": "de"
        },
        {
            "id": 5,
            "name": "français",
            "code": "fr"
        },
        {
            "id": 6,
            "name": "italiano",
            "code": "it"
        },
        {
            "id": 7,
            "name": "日本語",
            "code": "jp"
        },
        {
            "id": 8,
            "name": "portuguêsportuguês",
            "code": "pt"
        }
    ]
}

```
------------------------------------------------
#### 11.根据Id获取语言
```
GET   ${website}/base/language/v1/:langId
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "id": 1,
        "name": "English",
        "code": "en"
    }
}

```
------------------------------------------------
#### 12.根据 name/code 获取语言
```
GET   ${website}/base/language/v1/where
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| name    |   String    | 语言名称 不是必须|
| code |   String    | 语言标识 不是必须                               |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "name": "English",
            "code": "en"
        }
    ]
}

```
------------------------------------------------
#### 13.获取所有参数
```
GET   ${website}/base/parameter/v1
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "languageId": 1,
            "clientId": 1,
            "type": "STATUS",
            "value": 1,
            "name": "COM"
        }
    ]
}

```
------------------------------------------------
#### 14.根据ID获取参数
```
GET   ${website}/base/parameter/v1/id
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "id": 1,
        "languageId": 1,
        "clientId": 1,
        "type": "STATUS",
        "value": 1,
        "name": "COM"
    }
}

```
------------------------------------------------
#### 15.根据lang/client/type获取参数
```
GET   ${website}/base/parameter/v1/where
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| lang |   int    | 语言id 不是必须|
| client |   int    | 客户端id 不是必须                               |
| type |   String    | 参数类型,为大写字母组成 不是必须                               |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "languageId": 1,
            "clientId": 1,
            "type": "STATUS",
            "value": 1,
            "name": "COM"
        }
    ]
}

```
------------------------------------------------
#### 16.获取所有资源
```
GET   ${website}/base/resource/v1
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "languageId": 1,
            "clientId": 1,
            "key": "www.tomtop.com",
            "value": "desc"
        }
    ]
}

```
------------------------------------------------
#### 17.根据Id获取资源
```
GET   ${website}/base/resource/v1/:id
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "languageId": 1,
            "clientId": 1,
            "key": "www.tomtop.com",
            "value": "desc"
        }
    ]
}

```
------------------------------------------------
#### 18.根据条件获取资源
```
GET   ${website}/base/resource/v1/where
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| lang |   int    | 语言id 不是必须|
| client |   int    | 客户端id 不是必须                               |
| key|   String    | key                               |
| value|   String    | value                               |
| isEnabled|   int    | 是否启用,是:1 否:0                               |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "languageId": 1,
            "clientId": 1,
            "key": "www.tomtop.com",
            "value": "desc"
        }
    ]
}

```
------------------------------------------------
#### 19.获取所有站点
```
GET   ${website}/base/site/v1
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "name": "www.tomtop.com"
        }
    ]
}

```
------------------------------------------------
#### 20.根据Id获取站点
```
GET   ${website}/base/site/v1/:id
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "id": 1,
        "name": "www.tomtop.com"
    }
}


```
------------------------------------------------
#### 21.根据name获取站点
```
GET   ${website}/base/site/v1/name/:name
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "name": "www.tomtop.com"
        }
    ]
}

```
------------------------------------------------
#### 22.获取所有来源信息
```
GET   ${website}/base/vhost/v1
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "vhost": "fr.tomtop.com",
            "languageId": 5,
            "clientId": 1,
            "currencyId": 1,
            "orderPlaceholder": "aa"
        }
    ]
}
```
------------------------------------------------
#### 23.根据vhost获取来源信息
```
GET   ${website}/base/vhost/v1/{vhost}
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "vhost": "fr.tomtop.com",
            "languageId": 5,
            "clientId": 1,
            "currencyId": 1,
            "orderPlaceholder": "aa"
        }
    ]
}

```
------------------------------------------------
#### 24.获取所有资源的Map
```
GET   ${website}/base/resource/v1/map
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "tomtop.common.myCoupons": "My Coupons",
    "tomtop.home.customersVoices": "Customers Voices",
    "tomtop.common.membersOnlyService4": "4.Parmanent Shopping Cart",
    "tomtop.common.policiesService": "Policies & Service",
    "tomtop.product.saleEndsIn": "Sale Ends in"
}


```
------------------------------------------------
#### 25.根据code获取国家信息
```
GET   ${website}/base/country/v1/code/:code
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| code |   String| 国家两位code 不是必须|

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "name": "United States",
            "nationalFlagImgUrl": "",
            "isoCodeTwo": "US",
            "isoCodeThree": "",
            "currency": "USD",
            "officialLanguageId": 1,
            "languageId": 1
        }
    ]
}
```
------------------------------------------------
#### 清理base缓存
```
GET   ${website}/cache/v1/clean/{baseTable}
```

参数替换 {baseTable}

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
  baseTable |   String  |参数： client,country,currency,language,parameter,resource,site,vhost,labelAttribute,shippingMethod|

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}
```
------------------------------------------------
#### 添加访问记录
```
POST    ${website}/base/visitLog/v1
```
参数以json格式传送

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
|ip        |   String | ip地址           |
|url       |   String | url全路径地址    |
|client    |   int    | 客户端id         |

```
示例
{
   "ip":"192.168.0.22",
   "url":"http://www.tomtop.com/?aid=OOO",
   "client":1
}
```

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}
```
------------------------------------------------
#### 获取仓库运输方式
```
GET    ${website}/base/shippingMethod/v1
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| storageName |  String  | 仓库名称         |
|storageId    |   int    | 仓库id           |
|lang         |   int    | 语言id 默认1 英文|

```
*当前语言storageName 和 storageId为空时查所有的结果，返回一个Map<String,List<ResutObj>>的对象
ResutObj就是下面
{
   storageid:string, //仓库id
   languageid:int ,//语言id
   title:string,
   code:string,//物流代码
   imageurl:string,//
   groupid:int //分组编号
}
如果同时写了storageId和storageName ，只根具storageId来查结果，除以上参数情况外都返回如下结果
{
    "ret": 1,
    [{
     storageid:string, //仓库id
     languageid:int ,//语言id
     title:string,
     code:string,//物流代码
     imageurl:string,//
    groupid:int //分组编号
  }]
}

```
#### 属性标签管理接口
```
GET ${website}/base/labelAttribute/v1
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
|lang|   int| 语言id|
|client|   int| 客户端id|


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
     data:[{
       parentId:int ,//标签父Id
       labelId:int ,//标签id
       languageId:int ,//语言id
       clientId:int ,//客户端id
       isChange:int,//是否是动态属性0 不是，1是
       level：int,//等级
       categoryId:int,//类目id
       attributeKey:string,//属性key
       attributeValue:string,属性value
       sort:int//排序号
     }]
}
```
------------------------------------------------
#### 属性标签管理接口，根具类目id返回map
```
GET ${website}/base/labelAttribute/v1/getListByCategoryId/:categoryId
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
|categoryId|   int| 类目id|


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
     data:{
       '': //key值,标签key
       [{
       parentId:int ,//标签父Id
       labelId:int ,//标签id
       languageId:int ,//语言id
       clientId:int ,//客户端id
       isChange:int,//是否是动态属性0 不是，1是
       level：int,//等级
       categoryId:int,//类目id
       attributeKey:string,//属性key
       attributeValue:string,属性value
       sort:int//排序号
     }]
   }
}
```
------------------------------------------------
------------------------------------------------
#### 属性标签管理接口，根具标签key返回map
```
GET ${website}/base/labelAttribute/v1/getListByKey/:key
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
|key|   string| 标签key|


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
     data:{
       1: //类目id
       [{
       parentId:int ,//标签父Id
       labelId:int ,//标签id
       languageId:int ,//语言id
       clientId:int ,//客户端id
       isChange:int,//是否是动态属性0 不是，1是
       level：int,//等级
       categoryId:int,//类目id
       attributeKey:string,//属性key
       attributeValue:string,属性value
       sort:int//排序号
     }]
   }
}
```
------------------------------------------------
------------------------------------------------
#### 获取仓库运输方式
```
GET    ${website}/base/shippingMethod/v1
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| storageName |  String  | 仓库名称         |
|storageId    |   int    | 仓库id           |
|lang         |   int    | 语言id 默认1 英文|

```
*当前语言storageName 和 storageId为空时查所有的结果，返回一个Map<String,List<ResutObj>>的对象
ResutObj就是下面
{
   storageid:string, //仓库id
   languageid:int ,//语言id
   title:string,
   code:string,//物流代码
   imageurl:string,//
   groupid:int //分组编号
}
如果同时写了storageId和storageName ，只根具storageId来查结果，除以上参数情况外都返回如下结果
{
    "ret": 1,
    [{
     storageid:string, //仓库id
     languageid:int ,//语言id
     title:string,
     code:string,//物流代码
     imageurl:string,//
    groupid:int //分组编号
  }]
}

```
#### 获取服务器系统utc时间
```
GET ${website}/base/systemTime/v1
```

Response  如果成功返回

```
Status: 200 OK
```
```
{"ret":1,"data":"2016-01-17 15:19:22"}