用户接口文档
UAT测试地址：http://192.168.220.53:8003/
需用代理地址：member.api.tomtop.com host: http://192.168.220.56
------------------------------------------------
#### 1.查询用户评论列表  (add by Tony 20160413)
```
GET member/v1/review/list
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   String    | 客户端Id  保留 可不传|
| website|   String    | 站点ID   必须                            |
| email|   int    | 邮箱                       |
| page|   int    | 页数                   |
| size|   int    | 记录大小                           |
| status|   int    | 状态   审核状态(0未审、1通过、2未通过) 不传递默认为-1查询所有                        |
| dateType|   int    | 时间 3=Last 3 Mohths 6 12 不传递默认为0 查询所有                            |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
          {
            "rid": 2563,
            "comment": "review..........",
            "ps": 4,
            "qs": 2,
            "ss": 5,
            "us": 5,
            "fs": 4,
            "videoUrl": "www.youku.com",
            "videoTitle": "youk",
            "status": 0,
            "createDate": 1457920301000,
            "listingId": "b9a4a83c-4af6-4ef3-a4a8-3c4af6aef374",
            "sku": "LC41637S",
            "url": "short-sleeve/p_105362",
            "imgUrl": "",
            "photosUrl": []
        },
        {
            "rid": 2562,
            "comment": "thank you",
            "ps": 4,
            "qs": 4,
            "ss": 5,
            "us": 5,
            "fs": 4.5,
            "videoUrl": "",
            "videoTitle": "",
            "status": 2,
            "createDate": 1457920301000,
            "listingId": "b9a4a83c-4af6-4ef3-a4a8-3c4af6aef374",
            "sku": "LC41637S",
            "url": "short-sleeve/p_105362",
            "imgUrl": "",
            "photosUrl": []
        }
    ],
    "page": {
        "totalRecord": 84,
        "totalPage": 42,
        "startRec": 0,
        "endRec": 2,
        "currentPage": 1,
        "pageSize": 2
    }
}
```
#### 2.用户删除评论 (add by Tony 20160413)
```
POST member/v1/review/delete/{rid}
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| rid|   int | 评论Id |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}

```
#### 3.用户添加评论  (add by Tony 20160413)
```
POST member/v1/review/add
```
|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingId |   String|  |
| sku |   String|  |
| email |   String| 邮箱 |
| comment |   String| 评论内容 |
| ps |   int| 价格评分 |
| qs |   int| 质量评分 |
| ss |   int| 物流评分 |
| us |   int| 使用评分 |
| videoUrl |   int| 视频url 可为空 |
| videoTitle |   int| 视频标题 可为空 |
| website |   int| 站点Id |
| countryName|   String| 国家名字简称 |
| pform|   String| 来源  |
| oid|   int| 订单的iid  |
| files|   file | 图片  |
备注：form表单提交
Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}

```
#### 4.用户更新评论  (add by Tony 20160413)
```
POST member/v1/review/update
```
|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| commentId |   int| 评论Id|
| listingId |   String|  |
| sku |   String|  |
| email |   String| 邮箱 |
| comment |   String| 评论内容 |
| ps |   int| 价格评分 |
| qs |   int| 质量评分 |
| ss |   int| 物流评分 |
| us |   int| 使用评分 |
| videoUrl |   int| 视频url 可为空 |
| videoTitle |   int| 视频标题 可为空 |
| website |   int| 站点Id |
| countryName|   String| 国家名字简称 |
| pform|   String| 来源  |
| files|   file | 图片  |
| imageUrls|   String| 图片地址用逗号分隔  |

备注：form表单提交
Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}