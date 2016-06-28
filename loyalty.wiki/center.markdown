产品接口文档

UAT测试地址：http://loyalty.api.tomtop.com

---------
#### 1.获取用户在当前购物车的所有优惠（包括优惠券，推广码，积分）
```
POST   ${website}/loyalty/v1/prefercenter/allprefer?email=123@qq.com&client=5&website=10&currency=USD&depotId=10(email在url参数中传递，且为必须 &depotId=10仓库 ID)
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
"data":[{
"code":"978565287219",// 优惠券code
"isCash":true,// 是否为现金券
"value":"6.0",// 如果为现金券，则为金额
"unit":"USD"// 单位
},
{"code":
"786214862486",
"isCash":false,// false为折扣券
"value":"10.0%",// 如果为折扣券，则为折扣百分比
"unit":"OFF"// 单位
}]}
```
------------------------------------------------
#### 2.订单已经生成,保存所有优惠
```
POST   ${website}/loyalty/v1/prefercenter/saveprefer?email=123@qq.com&depotId=10(email在url参数中传递，且为必须仓库ID)
```
参数为map对象转换后的json格式，例如：
{"product":[
{
"listingId":"0cb0e577-d914-1004-874c-d371c9ab96c0","price":"5","qty":5}
],
"prefer":
[
{"code":"978565287219","orderId":879987987,"orderNumber":"jlijjef098098","preferType":"coupon"}
]}

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingId|   String| listingid  必须|
| price|   Double| 单价  必须                                |
| qty|   int    | 数量    必须                               |
| -------- | -------- | -----------------------------------------------                 |
| code|   String| 优惠code 必须|
| preferType|   String（优惠券：coupon,推广码：promo,积分：point）| 优惠类型  必须       |
| orderId|   int    | 订单id  必须   |
| orderNumber|   String| 订单号    必须    |


Response  如果成功返回


```
Status: 200 OK
```

```
{
  "ret":1
}

```
如果失败
```
{ "ret":-1,
  "data":{
          "value":null,
          "code":null,
          "preferType":null,
          "errMsg":"No Permission",
          "extra":null,
          "success":false
}}
```
--------------------------------------
