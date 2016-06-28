产品评论页API
------------
UAT测试地址：http://192.168.220.53:8004/
反向代理地址: http://product.api.tomtop.com
---------
#### 1.获取商品 的评论列表
```
GET   ${website}/v1/product/review/list
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingId|   String | listingId 必须                               |
| website|   int    | 站点ID  不是必须,默认为=1                                |
| page|   int    | 当前页  默认为1              |
| size|   int    | 大小 默认为10                            |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "email": "2853789707@qq.com",
            "overall": 1,
            "usefulness": 1,
            "shipping": 1,
            "price": 1,
            "quality": 1,
            "commentDate": "2015-08-03 10:24:17",
            "comment": "%E9%9D%9E%E5%B8%B8%E5%B7%AE",
            "imgUrls": [
                "/mobile/api/member/photo2?iid=47"
            ],
            "videos": null
        },
        {
            "email": "2853789707@qq.com",
            "overall": 1,
            "usefulness": 1,
            "shipping": 1,
            "price": 1,
            "quality": 1,
            "commentDate": "2015-08-03 10:26:10",
            "comment": "%E9%9D%9E%E5%B8%B8%E5%B7%AE",
            "imgUrls": null,
            "videos": null
        },
        {
            "email": "2853789707@qq.com",
            "overall": 1,
            "usefulness": 1,
            "shipping": 1,
            "price": 1,
            "quality": 1,
            "commentDate": "2015-08-03 10:29:45",
            "comment": "%E9%9D%9E%E5%B8%B8%E5%B7%AE",
            "imgUrls": null,
            "videos": null
        },
        {
            "email": "2853789707@qq.com",
            "overall": 1,
            "usefulness": 1,
            "shipping": 1,
            "price": 1,
            "quality": 1,
            "commentDate": "2015-08-03 11:09:16",
            "comment": "%E9%9D%9E%E5%B8%B8%E5%B7%AE",
            "imgUrls": [
                "/mobile/api/member/photo2?iid=48"
            ],
            "videos": null
        },
        {
            "email": "2853789707@qq.com",
            "overall": 1,
            "usefulness": 1,
            "shipping": 1,
            "price": 1,
            "quality": 1,
            "commentDate": "2015-08-03 11:15:32",
            "comment": "%E9%9D%9E%E5%B8%B8%E5%B7%AE",
            "imgUrls": [
                "/mobile/api/member/photo2?iid=49"
            ],
            "videos": null
        },
        {
            "email": "2853789707@qq.com",
            "overall": 1,
            "usefulness": 1,
            "shipping": 1,
            "price": 1,
            "quality": 1,
            "commentDate": "2015-08-03 11:23:42",
            "comment": "ok",
            "imgUrls": [
                "/mobile/api/member/photo2?iid=50"
            ],
            "videos": null
        },
        {
            "email": "2853789707@qq.com",
            "overall": 1,
            "usefulness": 1,
            "shipping": 1,
            "price": 1,
            "quality": 1,
            "commentDate": "2015-08-03 11:26:57",
            "comment": "ok",
            "imgUrls": [
                "/mobile/api/member/photo2?iid=51",
                "/mobile/api/member/photo2?iid=52"
            ],
            "videos": null
        },
        {
            "email": "2853789707@qq.com",
            "overall": 1,
            "usefulness": 1,
            "shipping": 1,
            "price": 1,
            "quality": 1,
            "commentDate": "2015-08-03 11:27:50",
            "comment": "ok-%E5%BE%88%E5%A5%BD",
            "imgUrls": [
                "/mobile/api/member/photo2?iid=53",
                "/mobile/api/member/photo2?iid=54"
            ],
            "videos": null
        },
        {
            "email": "2853789707@qq.com",
            "overall": 1,
            "usefulness": 1,
            "shipping": 1,
            "price": 1,
            "quality": 1,
            "commentDate": "2015-08-03 11:28:45",
            "comment": "ok-很好",
            "imgUrls": [
                "/mobile/api/member/photo2?iid=55",
                "/mobile/api/member/photo2?iid=56"
            ],
            "videos": null
        },
        {
            "email": "2853789707@qq.com",
            "overall": 1,
            "usefulness": 1,
            "shipping": 1,
            "price": 1,
            "quality": 1,
            "commentDate": "2015-08-11 02:31:35",
            "comment": "ok-dddddddd",
            "imgUrls": null,
            "videos": null
        }
    ],
    "page": {
        "totalRecord": 65,
        "totalPage": 7,
        "startRec": 0,
        "endRec": 10,
        "currentPage": 1,
        "pageSize": 10
    }
}