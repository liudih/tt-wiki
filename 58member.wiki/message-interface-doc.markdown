站内信接口 
message status 状态说明：0:删除 1:已读 2:编辑 3: 推送发布 4:未读

UAT测试地址：http://192.168.220.53:8003/
---------
#### 1.获取站内信列表(update by tony 20160414)

GET   message/v1/list

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String| 会员邮箱                                  |
| website|   String    | 站点ID
| page|   int| 页码，默认为1                                |
| size|   int| 每页数量，默认10                               |
 Response  如果成功返回
status 状态说明：0:删除 1:已读 2:编辑 3: 推送发布 4:未读
```
Status: 200 OK
```
```

{
    "ret": 1,
    "data": {
        "list": [
            {
                "id": 196,
                "from": "TOMTOP team",
                "subject": "Congratulations! You win a 40",
                "createDate": 1457288125689,
                "tab": "i",
                "status": 1
            },
            {
                "id": 194,
                "from": "TOMTOP team",
                "subject": "Congratulations! You win a 1",
                "createDate": 1457287984810,
                "tab": "i",
                "status": 1
            },
            {
                "id": 193,
                "from": "TOMTOP team",
                "subject": "Congratulations! You win a 40",
                "createDate": 1457287979244,
                "tab": "i",
                "status": 1
            },
            {
                "id": 192,
                "from": "TOMTOP team",
                "subject": "Congratulations! You win a 40",
                "createDate": 1457287076523,
                "tab": "i",
                "status": 1
            }
        ],
        "total": 48,
        "page": 1,
        "recordPerPage": 10
    }
}
```
#### 2.站内信批量设置已读(update by tony 20160414)

POST   message/v1/batch/read

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String| 会员邮箱                                  |
| website|   int | 站点ID                               |
| ids|   String    |i表示个人信息，b表示广播信息  字符串格式为 196:i,194:i,193:b 用id:tab 逗号分隔                              |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}

```
#### 3.站内信详细信息(update by tony 20160414)

 
GET message/v1/dtl/{id}
 

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| id|   数组    | id:站内信流水号                                |
| website|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |
| tab|   String    | tab表示哪一种信息，i表示个人信息，b表示广播信息                                |
| status|   String    | status 状态说明：0:删除 1:已读 2:编辑 3: 推送发布 4:未读                             |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "from": "CHICUU team",
        "subject": "Congratulations! You win a 1",
        "content": "Congratulations! You win a 1,coupon code:812370965894",
        "createDate": 1457893033000
    }
}

```
#### 4.站内信删除(update by tony 20160414)

DELETE   message/v1/batch/delete

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String| 会员邮箱                                  |
| website|   int | 站点ID                               |
| ids|   String    |i表示个人信息，b表示广播信息  字符串格式为 196:i,194:i,193:b 用id:tab 逗号分隔                              |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}

```
#### 5.获取未读取消息数量(update by tony 20160513)

GET message/v1/unMsg/count

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String| 会员邮箱                                  |
| website|   int | 站点ID                               |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": 15
}
```