产品接口文档

UAT测试地址：http://loyalty.api.tomtop.com

---------
#### 1.获取用户全部积分
```
GET   ${website}/loyalty/v1/point?email=123@qq.com&client=5&website=10&currency=USD(email在url参数中传递，且为必须)
```

 Parameters

 Response  如果成功返回

```
Status: 200 OK
```
```
{
  "ret":1,
  "data":100
}
```
------------------------------------------------
#### 2.应用积分
```
PUT   ${website}/loyalty/v1/point/apply/{point}?email=123@qq.com&client=5&website=1&currency=USD(email在url参数中传递，且为必须)
```

Response  如果成功返回

```
Status: 200 OK
```

```
{
  "ret":1,
  "data":{
    "value":-0.05,// 优惠金额
    "code":null,
    "preferType":"point",// 优惠类型
    "errMsg":null,
    "extra":null,
    "success":true}
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
------------------------------------------------
#### 3.获取用户已使用积分的历史记录
```
GET   ${website}/loyalty/v1/point/used/{uuid}?website=10&page=1&size=10
```

Response  如果成功返回

```
Status: 200 OK
```

```
{
  "ret":1,
  "data":[
           {
             "id":13,
             "website":10,
             "email":"2853375192@qq.com",
             "dotype":"cost",
             "integral":-10,// 积分
             "remark":"Pay for order.No.US-07231215-064710",
             "status":1,
             "createdate":1437605230515,
             "source":"cost",// 积分来源
             "createDateStr":"2015-07-23 06:47:10"// 日期
}],
"page":{"totalRecord":1,"totalPage":0,"startRec":0,"endRec":10,"currentPage":1,"pageSize":10}}

```
--------------------------------------
#### 4.获取用户未使用积分的历史记录
```
GET   ${website}/loyalty/v1/point/unused/{uuid}?website=10&page=1&size=10
```

Response  如果成功返回

```
Status: 200 OK
```

```
{
  "ret":1,
  "data":[
           {
             "id":71,
             "website":10,
             "email":"2853375192@qq.com",
             "dotype":"signup",
             "integral":50000,// 积分
             "remark":"signup-points",
             "status":1,
             "createdate":1438297003353,
             "source":"register",// 来源
             "createDateStr":"2015-07-31 06:56:43"// 日期
            },{
             "id":60,
             "website":10,
             "email":"2853375192@qq.com",
             "dotype":"signup",
             "integral":50,
             "remark":"signup-points",
             "status":1,
             "createdate":1438229798774,
             "source":"register",
             "createDateStr":"2015-07-30 12:16:38"
}],
"page":{"totalRecord":2,"totalPage":0,"startRec":0,"endRec":10,"currentPage":1,"pageSize":10}}
```




```
```
#### 5.获取用户总积分，可用积分，锁定积分

GET   ${website}/loyalty/v1/userPointInfo?email=2853375192@qq.com&website=1
```

Response  如果成功返回

```
Status: 200 OK
```

```
  {
    "ret": 1,
    "AvailablePoints": 5938,     ---可用积分
    "PendingPoints": -509,     ---锁定积分
    "TotalPoints": 5958            ---总积分
  }
```
--------------------------------------
