UAT测试地址：http://loyalty.api.tomtop.com

---------
#### 1.激活送积分事件
```
POST   /loyalty/v1/event/activate
```

 Parameters


|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String| 用户邮箱  必须|
| website|   int| 站点id  必须                                |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
  "ret":1
}
```
------------------------------------------------
#### 2.评论送积分事件
```
POST   /loyalty/v1/event/review
```
|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String| 用户邮箱  必须|
| website|   int| 站点id  必须                                |


Response  如果成功返回

```
Status: 200 OK
```

```
{
  "ret":1
}

```



#### 3.上传照片送积分
```
POST   /loyalty/v1/event/uploadphoto
```
|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String| 用户邮箱  必须|
| website|   int| 站点id  必须                                |

  
Response  如果成功返回

```
Status: 200 OK
```
```
{
  "ret":1
}
```
--------------------------------------
#### 4.订单完成送积分
```
POST   /loyalty/v1/event/order
```
|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String| 用户邮箱  必须|
| website|   int| 站点id  必须                                |
| money|   Double| 订单金额  必须|
| currency|   String| 币种  必须                                |
| orderNumber|   String| 订单号  必须|




Response  如果成功返回

```
Status: 200 OK

{
  "ret":1
}
```