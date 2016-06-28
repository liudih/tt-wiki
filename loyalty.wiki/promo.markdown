产品接口文档

UAT测试地址：http://loyalty.api.tomtop.com

---------

------------------------------------------------
#### 1.应用推广码
```
PUT   ${website}/loyalty/v1/promo/apply/{code}?email=123@qq.com&client=5&website=1&currency=USD&depotId=10(email不是必须 &depotId=10仓库 ID)
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
  "data":{
           "email":null,
           "value":-5.0, //优惠面值
           "code":"389042703700", //推广码code
           "preferType":"promo", //优惠类型
           "errMsg":null,
           "extra":"cash",   //特定场景需要的额外字段，现金优惠为“cash”,折扣折扣为“discount”
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

#### 2.取消应用推广码
```
PUT   ${website}/loyalty/v1/promo/cancel
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
