用户接口文档
UAT测试地址：http://192.168.220.53:8003/
需用代理地址：member.api.tomtop.com host: http://192.168.220.56
------------------------------------------------
#### 1.个人中心获取统计数量  (add by Tony 20160413)
```
GET /member/v1/center/count
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| website|   String    | 站点ID   必须                            |
| email|   int    | 邮箱                       |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "name": "collect",//收藏数
            "qty": 6
        },
        {
            "name": "review",//评论数
            "qty": 15
        },
        {
            "name": "coupon",//优惠卷数
            "qty": 0
        },
        {
            "name": "integral",//积分数
            "qty": 0
        }
    ]
}
```
#### 2.获取会员信息  (add by wul 20160614)
```
GET /member/v1/center/base
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| website|   Integer    | 站点ID   必须                            |
| email|   String    | 邮箱                       |

Response  如果成功返回

```
Status: 200 OK
```
```
{
  "ret": 1,
  "data": {
    "iid": null,
    "client": null,
    "iwebsiteid": 10,
    "caccount": "大亮哥",
    "cpasswd": null,
    "igroupid": null,
    "cprefix": null,
    "csuffix": null,
    "cfirstname": "wuliang2016",
    "cmiddlename": null,
    "clastname": "lianggggg",
    "cemail": "2853105188@qq.com",
    "dbirth": 689472000000,
    "ctaxnumber": null,
    "igender": 5,
    "cforumsnickname": null,
    "bactivated": false,
    "ccountry": "AG",
    "bnewsletter": false,
    "caboutme": "fuck",
    "cvhost": null,
    "dcreatedate": null,
    "cuuid": null,
    "cimageurl": null,
    "hobby_years": null,
    "experience_level": null
  }
}
```
#### 3.修改更新会员信息  (add by wul 20160614)
```
POST /member/v1/center/base/update
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| website|   Integer    | 站点ID   必须                            |
| email|   Stirng    | 邮箱                       |
| account|   Stirng    | 全名                  |
| fname|   Stirng    | 首位名字                       |
| lname|   Stirng    | 末尾名字                       |
| birthday|   date     | 生日                       |
| gender|   Integer    |                        |
| countryName|   Stirng    | 国家归属                       |
| about|   Stirng    | 关于                       |
| hobby_years|   Integer    | 爱好时间                       |
| experience_level|   Integer    | 经验水平                       |


Response  如果成功返回

```
Status: 200 OK
```
```
{
  "ret": 1,
  "data": {
    "iid": null,
    "client": null,
    "iwebsiteid": 10,
    "caccount": "大亮哥",
    "cpasswd": null,
    "igroupid": null,
    "cprefix": null,
    "csuffix": null,
    "cfirstname": "1111111111",
    "cmiddlename": null,
    "clastname": "lianggggg",
    "cemail": "2853105188@qq.com",
    "dbirth": 689472000000,
    "ctaxnumber": null,
    "igender": 5,
    "cforumsnickname": null,
    "bactivated": false,
    "ccountry": "AG",
    "bnewsletter": false,
    "caboutme": "fuck",
    "cvhost": null,
    "dcreatedate": null,
    "cuuid": null,
    "cimageurl": null,
    "hobby_years": null,
    "experience_level": null
  }
}
```
#### 4.根据必要参数获取会员附属信息（如：爱好时长，经验水平）   (add by wul 20160614)
```
GET /member/v1/center/base/attache
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| website|   Integer    | 站点ID   必须                            |
| lang|   Integer    | 语言                       |
| type|   Integer    | 类型(1:爱好时长，2：经验水平)                  |


Response  如果成功返回

```
Status: 200 OK
```
```
{
  "ret": 1,
  "data": [
    {
      "id": 5,
      "name": "Beginner"
    },
    {
      "id": 6,
      "name": "Intermediate"
    },
    {
      "id": 7,
      "name": "Recreational"
    },
    {
      "id": 8,
      "name": "Competitive"
    },
    {
      "id": 9,
      "name": "Advanced"
    },
    {
      "id": 10,
      "name": "Professional"
    }
  ]
}