产品接口文档

UAT测试地址：http://loyalty.api.tomtop.com

---------
#### 1.获取用户在当前购物车可用的优惠券
```
POST   ${website}/loyalty/v1/coupon/get?email=123@qq.com&client=5&website=1&currency=USD&depotId=10(email在url参数中传递，且为必须 depotId仓库ID)
```

 Parameters
例如：[{"listingId":"0cb0e577-d914-1004-874c-d371c9ab96c0","price":5,"qty":5}]

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingId|   String| listingid  必须|
| price|   Double| 单价  必须                                |
| qty|   int    | 数量    必须                               |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
  "ret":1,
  "data":["910783667816","863662888900","669697354084","671053918943","856494989233","389042703700"]
}
```
------------------------------------------------
#### 2.应用优惠券
```
PUT   ${website}/loyalty/v1/coupon/apply/{code}?email=123@qq.com&client=5&website=1&currency=USD&depotId=10(email在url参数中传递，且为必须，depotId仓库ID)
```
 Parameters例如：[{"listingId":"0cb0e577-d914-1004-874c-d371c9ab96c0","price":5,"qty":5}]

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingId|   String| listingid  必须|
| price|   Double| 单价  必须                                |
| qty|   int    | 数量    必须                               |

Response  如果成功返回

```
Status: 200 OK
```

```
{
  "ret":1,
  "data":{
           "email":null,
           "value":-5.0, //优惠面值
           "code":"389042703700", //优惠券code
           "preferType":"coupon", //优惠券类型
           "errMsg":null,
           "extra":"cash",   //特定场景需要的额外字段，现金券为“cash”,折扣券为“discount”
           "success":true
  }
}

```


Response  如果失败返回

```
Status: 200 OK
```

```
{
  "ret":-1,
  "data":{
           "value":null,
           "code":null,
           "preferType":null,
           "errMsg":"No Rule", //错误信息
           "extra":null,
           "success":false   
 }
}
```
--------------------------------------
#### 3.发放优惠券
```
POST   ${website}/loyalty/v1/coupon/giving/{ruleid}?email=123@qq.com&website=10(email在url参数中传递，且为必须)
```

  
Response  如果成功返回

```
Status: 200 OK
```
```
{
  "ret":1,
  "data{
  "id":0,
  "websiteId":10,  // 站点id
  "email":"2853375192@qq.com", // 发放的用户邮箱
  "ruleId":9, // 规则id
  "ruleName":null,
  "codeId":24,
  "code":"338791138579",  // 优惠券code
  "type":0,
  "typeEnum":null,
  "status":3,
  "statusEnum":"SEND",
  "creator":0,
  "creatorName":null,
  "createDate":null,
  "modifierId":0,
  "modifyDate":null,
  "createDateStr":null,
  "parentId":0,
  "validStartDate":null,
  "validEndDate":null,
  "validStartDateStr":null,
  "validEndDateStr":null,
  "usedtimes":0,
  "times":0,
  "orderId":0,
  "orderNumber":null,
  "minAmount":null,
  "par":null,
  "discount":null,
  "valueType":null,
  "validDays":null,
  "currency":null,
  "value":null,
  "timeType":null,
  "currencyCode":null,
  "cash":false}
}
```
--------------------------------------
#### 4.用户中心查看自己的优惠券--未使用
```
GET   ${website}/loyalty/v1/coupon/unused/{uuid}?page=1&size=10&currency=USD
```



Response  如果成功返回

```
Status: 200 OK
```
```
{
"ret":1,"data": [{
"id":0,
"websiteId":0,
"email":null,
"ruleId":0,
"ruleName":"subscribe",  // 优惠券规则名称
"codeId":18,
"code":"389042703700",   // 号码
"type":0,
"typeEnum":null,
"status":0,
"statusEnum":null,
"creator":0,
"creatorName":null,
"createDate":1456946438942,
"modifierId":0,
"modifyDate":null,
"createDateStr":"2016-03-03 03:20:38",
"parentId":0,
"validStartDate":1456946438942,
"validEndDate":1534706438942,
"validStartDateStr":"2016-03-03 03:20:38",  // 使用开始时间
"validEndDateStr":"2018-08-20 03:20:38",    // 使用结束时间
"usedtimes":0,
"times":0,
"orderId":0,
"orderNumber":null,
"minAmount":20.0,  // 最低消费金额
"par":5.0,    // 如果为现金券则为现金券的面值
"discount":null, // 如果为折扣券，为折扣百分比
"valueType":1,
"validDays":900, // 有效时长（天数）
"currency":1,
"value":"5.0", // 如果是现金券表示数额，如果为折扣券表示折扣百分比
"timeType":"Validity",  // 时间类型
"currencyCode":"USD",  // 此张优惠券的币种code
"cash":true// 是否为现金券（true是现金券，false是折扣券）
},
{"id":0,
"websiteId":0,
"email":null,
"ruleId":0,
"ruleName":"0310",
"codeId":19,
"code":"740437313776",
"type":0,
"typeEnum":null,
"status":0,
"statusEnum":null,
"creator":0,
"creatorName":null,
"createDate":1457548351881,
"modifierId":0,
"modifyDate":null,
"createDateStr":"2016-03-10 02:32:31",
"parentId":0,
"validStartDate":1457548351881,
"validEndDate":1465237951881,
"validStartDateStr":"2016-03-10 02:32:31", // 使用开始时间
"validEndDateStr":"2016-06-07 02:32:31",  // 使用结束时间
"usedtimes":0,
"times":0,
"orderId":0,
"orderNumber":null,
"minAmount":1.0, // 最低消费金额
"par":null,
"discount":6.0, // 折扣券的折扣百分比，单位为‘%’
"valueType":2,
"validDays":89,
"currency":1,
"value":"6.0% OFF",// 折扣券的面值显示
"timeType":"Validity",
"currencyCode":"USD",// 此张优惠券的币种code
"cash":false  // 是否为现金券（true是现金券，false是折扣券）
}],
"page": {"totalRecord":2,"totalPage":0,"startRec":0,"endRec":10,"currentPage":1,"pageSize":10}
}
```
--------------------------------------
#### 5.用户中心查看自己的优惠券--已使用
```
GET   ${website}/loyalty/v1/coupon/used/{uuid}?page=1&size=10&currency=USD
```


Response  如果成功返回

```
Status: 200 OK
```
```
{
"ret":1,"data": [{
"id":0,
"websiteId":0,
"email":null,
"ruleId":0,
"ruleName":"subscribe",  // 优惠券规则名称
"codeId":18,
"code":"389042703700",   // 号码
"type":0,
"typeEnum":null,
"status":0,
"statusEnum":null,
"creator":0,
"creatorName":null,
"createDate":1456946438942,
"modifierId":0,
"modifyDate":null,
"createDateStr":"2016-03-03 03:20:38",
"parentId":0,
"validStartDate":1456946438942,
"validEndDate":1534706438942,
"validStartDateStr":"2016-03-03 03:20:38",  // 使用开始时间
"validEndDateStr":"2018-08-20 03:20:38",    // 使用结束时间
"usedtimes":0,
"times":0,
"orderId":0,
"orderNumber":null,
"minAmount":20.0,  // 最低消费金额
"par":5.0,    // 如果为现金券则为现金券的面值
"discount":null, // 如果为折扣券，为折扣百分比
"valueType":1,
"validDays":900, // 有效时长（天数）
"currency":1,
"value":"5.0", // 如果是现金券表示数额，如果为折扣券表示折扣百分比
"timeType":"Validity",  // 时间类型
"currencyCode":"USD",  // 此张优惠券的币种code
"cash":true// 是否为现金券（true是现金券，false是折扣券）
},
{"id":0,
"websiteId":0,
"email":null,
"ruleId":0,
"ruleName":"0310",
"codeId":19,
"code":"740437313776",
"type":0,
"typeEnum":null,
"status":0,
"statusEnum":null,
"creator":0,
"creatorName":null,
"createDate":1457548351881,
"modifierId":0,
"modifyDate":null,
"createDateStr":"2016-03-10 02:32:31",
"parentId":0,
"validStartDate":1457548351881,
"validEndDate":1465237951881,
"validStartDateStr":"2016-03-10 02:32:31", // 使用开始时间
"validEndDateStr":"2016-06-07 02:32:31",  // 使用结束时间
"usedtimes":0,
"times":0,
"orderId":0,
"orderNumber":null,
"minAmount":1.0, // 最低消费金额
"par":null,
"discount":6.0, // 折扣券的折扣百分比，单位为‘%’
"valueType":2,
"validDays":89,
"currency":1,
"value":"6.0% OFF",// 折扣券的面值显示
"timeType":"Validity",
"currencyCode":"USD",// 此张优惠券的币种code
"cash":false  // 是否为现金券（true是现金券，false是折扣券）
}],
"page": {"totalRecord":2,"totalPage":0,"startRec":0,"endRec":10,"currentPage":1,"pageSize":10}
}
```

--------------------------------------
#### 6.取消应用优惠券
```
PUT   ${website}/loyalty/v1/coupon/cancel
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
--------------------------------------
#### 7.获取优惠券总数
```
GET   ${website}/loyalty/v1/coupon/amount?email=123@qq.com
```

Response  如果成功返回

```
Status: 200 OK
```
```
{"ret":1,"data":6}
```

--------------------------------------
--------------------------------------
--------------------------------------
#### 7.按照指定优惠券或者积分赠送
```
POST   ${website}/loyalty/v1/coupon/sentGift
```
请求数据示例：
{
  "ruleid":6,        --优惠券规则ID

  "email":"lyf131@163.com", --赠送邮箱

  "amount":1,  --优惠券赠送数量 （不赠送优惠券该项为 0）

  "point":12, --积分赠送点数  （不赠送积分该项为 0）

  "website":1 --站点

}


Response  如果成功返回

```
Status: 200 OK
```
```
{"ret":1}
```
---------
#### 8.获取指定货币类型的金额对应的赠送积分
```
POST ${website}/loyalty/v1/event/convertMoneyToPoint
```

 Parameters
请求示例
{
"currency":"JPY",
"money":"1000"
}
 Response  如果成功返回

```
Status: 200 OK
```
```
{
  "ret":1,
  "point":8
}
```

---------
#### 8.获取可用优惠券详情接口
```
POST ${website}/loyalty/v2/coupon/get?email=123@qq.com&depotId=10&website=10
```

 Parameters
请求示例
  [{"listingId":"0cb0e577-d914-1004-874c-d371c9ab96c0","price":5,"qty":5}]

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "data":[{"code":"960079037705","createDate":"2016-03-23 08:12:49","isCash":false,"minAmount":0.01,"unit":"OFF","validDays":300,"validEndDate":"2017-01-17 08:12:49","validStartDate":"2016-03-23 08:12:49","value":"20.0%"}],"ret":1
}
```

```
  code：优惠券号码
  createDate：创建时间
  isCash：是否是现金券
  minAmount：订单最低金额
  unit：单位OFF 折扣券，现金券就是券的单位，例如USD
  validDays：有效时间（该字段是展示用，实际该优惠券的有效使用时间是看下面两个字段）
  validStartDate：券有效开始时间
  validStartDate：券有效结束时间
  value：值，现金券就是金额，折扣券就是%
```


--------------------------------------
