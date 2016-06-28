member 地址接口文档

UAT测试地址：http://192.168.220.53:8003//
---------
#### 1.添加地址
```
POST   ${website}/member/v1/address/add
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String    | 会员邮箱                               |
| atype|   int| 地址类型 1:收货地址 2:账单地址                             |
| isDef|   boolean|  是否为默认地址  true or false                        |
| fname|   String    | 姓名首                                |
| lname|   String    | 姓名尾                               |
| company|   String    | 公司                               |
| street|   String    | 街道地址                                |
| city|   String    | 城市                               |
| country|   int    | 国家id                               |
| province|   String    | 洲(省)                               |
| postalcode|   String    | 邮政编码                              |
| tel|   String    | 联系电话                               |
| website|   int    | 站点id                                |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1
}
```
#### 2.更新地址
```
POST   ${website}/member/v1/address/update
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String    | 会员邮箱                               |
| id|   int| 地址id                               |
| atype|   int| 地址类型 1:收货地址 2:账单地址                             |
| isDef|   boolean|  是否为默认地址     true or false                      |
| fname|   String    | 姓名首                                |
| lname|   String    | 姓名尾                               |
| company|   String    | 公司                               |
| street|   String    | 街道地址                                |
| city|   String    | 城市                               |
| country|   int    | 国家id                               |
| province|   String    | 洲(省)                               |
| postalcode|   String    | 邮政编码                              |
| tel|   String    | 联系电话                               |
| website|   int    | 站点id                                |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1
}
```
#### 3.删除地址
```
POST   ${website}/member/v1/address/delete
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String    | 会员邮箱                               |
| ids|   String|  id用逗号分隔 91,111                              |
| website|   int    | 站点id                                |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1
}

```
#### 4.设置默认地址
```
POST   ${website}/member/v1/address/setting
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String    | 会员邮箱                               |
| id|   int| 地址id                               |
| atype|   int| 地址类型 1:收货地址 2:账单地址                             |
| website|   int    | 站点id                                |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1
}

```
#### 5.获取地址列表
```
GET   ${website}/member/v1/address/list
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String    | 会员邮箱                               |
| atype|   int| 地址类型 1:收货地址 2:账单地址                             |
| website|   int    | 站点id                                |
| page|   int    | 当前页                                |
| size|   int    | 大小                                |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "website": 1,
            "country": 70,
            "id": 86,
            "email": "2853789707@qq.com",
            "atype": 1,
            "isDef": true,
            "fname": "tc",
            "lname": "",
            "company": "",
            "street": "15454",
            "city": "sdfsdf",
            "province": "dfsdfd",
            "postalcode": "sfda",
            "tel": "1561323545"
        },
        {
            "website": 1,
            "country": 44,
            "id": 114,
            "email": "2853789707@qq.com",
            "atype": 1,
            "isDef": false,
            "fname": "4565555",
            "lname": "",
            "company": "",
            "street": "12d55",
            "city": "5565",
            "province": "4565666",
            "postalcode": "56655",
            "tel": "4555566"
        },
        {
            "website": 1,
            "country": 29,
            "id": 115,
            "email": "2853789707@qq.com",
            "atype": 1,
            "isDef": false,
            "fname": "tony",
            "lname": "ren",
            "company": "",
            "street": "shenzhenshi",
            "city": "pinghuzhen",
            "province": "jjjj",
            "postalcode": "12313",
            "tel": "12112312312"
        },
        {
            "website": 1,
            "country": 44,
            "id": 1089,
            "email": "2853789707@qq.com",
            "atype": 1,
            "isDef": false,
            "fname": "tony1",
            "lname": "ren1",
            "company": "test2",
            "street": "test2",
            "city": "test2",
            "province": "13",
            "postalcode": "13",
            "tel": "321321321"
        }
    ],
    "page": {
        "totalRecord": 4,
        "totalPage": 1,
        "startRec": 0,
        "endRec": 4,
        "currentPage": 1,
        "pageSize": 10
    }
}

```
#### 6.根据Id邮箱获取地址
```
GET   ${website}/member/v1/address/dtl
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| id|   int| 地址id                              |
| email|   String    | 会员邮箱                               |
| atype|   int| 地址类型 1:收货地址 2:账单地址                             |
| website|   int    | 站点id                                |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "website": 1,
        "country": 70,
        "id": 86,
        "email": "2853789707@qq.com",
        "atype": 1,
        "isDef": true,
        "fname": "tc",
        "lname": "",
        "company": "",
        "street": "15454",
        "city": "sdfsdf",
        "province": "dfsdfd",
        "postalcode": "sfda",
        "tel": "1561323545"
    }
}