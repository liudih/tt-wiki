member接口文档

home文档已过期：查询使用用户地址的接口请到 -->http://192.168.220.58/tomtopweb/member/wikis/addressDoc
---------
#### 1.添加账单地址(过期失效)
```
POST   ${website}/member/v1/billaddress/{uuid}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| cmemberemail|   String    | 会员邮箱                               |
| bdefault|   Boolean| 是否默认                                |
| cfirstname|   String    | 姓名首                                |
| cmiddlename|   String    | 姓名中间                                |
| clastname|   String    | 姓名尾                               |
| ccompany|   String    | 公司                               |
| cstreetaddress|   String    | 街道地址                                |
| ccity|   String    | 城市                               |
| icountry|   int    | 国家id                               |
| cprovince|   String    | 洲(省)                               |
| cpostalcode|   String    | 邮政编码                              |
| ctelephone|   String    | 联系电话                               |
| cfax|   String    | 传真                         |
| cvatnumber|   String    | 税号                                |
| client|   int    | 站点id                                |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1
}
```
------------------------------------------------
#### 2.更新账单地址(过期失效)
```
PUT   ${website}/member/v1/billaddress/{id}/{uuid}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| cmemberemail|   String    | 会员邮箱                               |
| bdefault|   Boolean| 是否默认                                |
| cfirstname|   String    | 姓名首                                |
| cmiddlename|   String    | 姓名中间                                |
| clastname|   String    | 姓名尾                               |
| ccompany|   String    | 公司                               |
| cstreetaddress|   String    | 街道地址                                |
| ccity|   String    | 城市                               |
| icountry|   int    | 国家id                               |
| cprovince|   String    | 洲(省)                               |
| cpostalcode|   String    | 邮政编码                              |
| ctelephone|   String    | 联系电话                               |
| cfax|   String    | 传真                         |
| cvatnumber|   String    | 税号                                |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1
}
```
------------------------------------------------
#### 3.删除账单地址(过期失效)
```
POST  ${website}/member/v1/billaddress/del/{uuid}
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| iid|   int    | 账单id，且必须为json数组[{"iid":555},{"iid":666}]  必须|

Response  如果成功返回

```
Status: 200 OK
```

```
{
  ret: 1
}
```
--------------------------------------
------------------------------------------------
#### 4.设置默认账单地址(过期失效)
```
PUT   ${website}/member/v1/billaddress/default/{id}/{uuid}
```

Response  如果成功返回

```
Status: 200 OK
```

```
{
  ret: 1
}
```
--------------------------------------

#### 5.查询用户所有账单地址
```
GET    ${website}/member/v1/billaddress/{uuid}?website=10&page=1&size=10
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| website|   int    | 站点id  非必须|
| page|   int    | 当前页码  非必须|
| size|   int    | 每页数据数  非必须|
Response  如果成功返回

```
Status: 200 OK
```

```
{"ret":1,
"data":[{
"client":1,
"lang":1,
"currency":"",
"country":1,
"iid":765,   // 主键id
"cmemberemail":"123123123@qq.com", // 用户邮箱
"iaddressid":2,
"bdefault":true, // 是否为默认地址
"cfirstname":null, // 姓名首
"cmiddlename":null, // 姓名中
"clastname":null,  // 姓名尾
"ccompany":null,  // 公司
"cstreetaddress":null, // 街道地址
"ccity":null,  // 城市
"icountry":null,  // 国家id
"cprovince":null,  // 洲(省)
"cpostalcode":null, // 右边
"ctelephone":null,  // 电话
"cfax":null,        // 传真
"cvatnumber":null,   // 税号
"countryFullName":null,
"countryCode":null,
"ishipAddressId":null}],
"page":{"totalRecord":1,"totalPage":0,"startRec":0,"endRec":10,"currentPage":1,"pageSize":10}}
--------------------------------------

```
--------------------------------------

#### 6.根据主键id查询用户账单地址(过期失效)
```
GET    ${website}/member/v1/billaddress/{id}/{uuid}?client=5
```

Response  如果成功返回

```
Status: 200 OK
```

```
{
"ret":1,
"data{
"client":1,
"lang":1,
"currency":"",
"country":1,
"iid":239,
"cmemberemail":"2853375192@qq.com",// 用户邮箱
"iaddressid":1,
"bdefault":false,// 是否为默认账单地址
"cfirstname":"555",// 姓名首
"cmiddlename":null,// 姓名中
"clastname":null,// 姓名尾
"ccompany":null,// 公司
"cstreetaddress":"555",// 街道
"ccity":"555",// 城市
"icountry":95,// 国家id
"cprovince":"555",// 省（洲）
"cpostalcode":"555",// 邮编
"ctelephone":"55",// 电话
"cfax":null,// 传真
"cvatnumber":null,// 税号
"countryFullName":null,
"countryCode":null,
"ishipAddressId":0
}
}
```
--------------------------------------
#### ship地址
#### 1.添加ship地址(过期失效)
```
POST   ${website}/member/v1/shipaddress/{uuid}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| iid|   int    | |
| cmemberemail|   String    | 会员邮箱                               |
| bdefault|   Boolean| 是否默认                                |
| cfirstname|   String    | 姓名首                                |
| cmiddlename|   String    | 姓名中间                                |
| clastname|   String    | 姓名尾                               |
| ccompany|   String    | 公司                               |
| cstreetaddress|   String    | 街道地址                                |
| ccity|   String    | 城市                               |
| icountry|   int    | 国家id                               |
| cprovince|   String    | 洲(省)                               |
| cpostalcode|   String    | 邮政编码                              |
| ctelephone|   String    | 联系电话                               |
| cfax|   String    | 传真                         |
| cvatnumber|   String    | 税号                                |
| client|   int    | 站点id                                |


 Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1
}
```
------------------------------------------------
#### 2.更新ship地址(过期失效)
```
PUT   ${website}/member/v1/shipaddress/{id}/{uuid}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| cmemberemail|   String    | 会员邮箱                               |
| bdefault|   Boolean| 是否默认                                |
| cfirstname|   String    | 姓名首                                |
| cmiddlename|   String    | 姓名中间                                |
| clastname|   String    | 姓名尾                               |
| ccompany|   String    | 公司                               |
| cstreetaddress|   String    | 街道地址                                |
| ccity|   String    | 城市                               |
| icountry|   int    | 国家id                               |
| cprovince|   String    | 洲(省)                               |
| cpostalcode|   String    | 邮政编码                              |
| ctelephone|   String    | 联系电话                               |
| cfax|   String    | 传真                         |
| cvatnumber|   String    | 税号                                |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
  ret: 1
}
```
------------------------------------------------
#### 3.删除ship地址(过期失效)
```
POST  ${website}/member/v1/shipaddress/del/{uuid}
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| iid|   int    | 账单id，且必须为json数组[{"iid":555},{"iid":666}]  必须|

Response  如果成功返回

```
Status: 200 OK
```

```
{
  ret: 1
}
```
--------------------------------------
------------------------------------------------
#### 4.设置默认ship地址(过期失效)
```
PUT   ${website}/member/v1/shipaddress/default/{id}/{uuid}
```

Response  如果成功返回

```
Status: 200 OK
```

```
{
  ret: 1
}
```
--------------------------------------

#### 5.查询用户所有ship地址(过期失效)
```
GET    ${website}/member/v1/shipaddress/{uuid}?website=10&page=1&size=10
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int    | 站点id  非必须|
| page|   int    | 当前页码  非必须|
| size|   int    | 每页数据数  非必须|
Response  如果成功返回

```
Status: 200 OK
```

```
{"ret":1,
"data":[{
"client":1,
"lang":1,
"currency":"",
"country":1,
"iid":765,   // 主键id
"cmemberemail":"123123123@qq.com", // 用户邮箱
"iaddressid":1,
"bdefault":true, // 是否为默认地址
"cfirstname":null, // 姓名首
"cmiddlename":null, // 姓名中
"clastname":null,  // 姓名尾
"ccompany":null,  // 公司
"cstreetaddress":null, // 街道地址
"ccity":null,  // 城市
"icountry":null,  // 国家id
"cprovince":null,  // 洲(省)
"cpostalcode":null, // 右边
"ctelephone":null,  // 电话
"cfax":null,        // 传真
"cvatnumber":null,   // 税号
"countryFullName":null,
"countryCode":null,
"ishipAddressId":null}],
"page":{"totalRecord":1,"totalPage":0,"startRec":0,"endRec":10,"currentPage":1,"pageSize":10}}
```
--------------------------------------
#### 6.根据主键id查询用户ship地址(过期失效)
```
GET    ${website}/member/v1/shipaddress/{id}/{uuid}?client=5
```

Response  如果成功返回

```
Status: 200 OK
```

```
{
"ret":1,
"data{
"client":1,
"lang":1,
"currency":"",
"country":1,
"iid":239,
"cmemberemail":"2853375192@qq.com",// 用户邮箱
"iaddressid":1,
"bdefault":false,// 是否为默认ship地址
"cfirstname":"555",// 姓名首
"cmiddlename":null,// 姓名中
"clastname":null,// 姓名尾
"ccompany":null,// 公司
"cstreetaddress":"555",// 街道
"ccity":"555",// 城市
"icountry":95,// 国家id
"cprovince":"555",// 省（洲）
"cpostalcode":"555",// 邮编
"ctelephone":"55",// 电话
"cfax":null,// 传真
"cvatnumber":null,// 税号
"countryFullName":null,
"countryCode":null,
"ishipAddressId":0
}
}
--------------------------------------