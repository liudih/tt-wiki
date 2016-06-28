会员基本信息接口文档


UAT测试地址：http://192.168.220.53:8003/
---------
#### 1.获取会员基本信息

GET   member/v1/memberbase

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| uuid|   String    | |  UUID
| client|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
         "iid": 75,
        "iwebsiteid": 1,
        "caccount": "9999测试",
        "cpasswd": "",
        "igroupid": 1,
        "cfirstname": "f",
        "clastname": "q",
        "cemail": "bladefy@gmail.com",
        "dbirth": 1440000000000,
        "dbirthStr":"2016-03-05",
        "igender": 1,
        "bactivated": false,
        "ccountry": "US",
        "bnewsletter": true,
        "caboutme": "",
        "cvhost": "192.168.7.13",
        "dcreatedate": 1441846800118,
        "cuuid": "39c5d9cf-175e-47f6-85d9-cf175e97f6d4",
       "ccontenttype": "image/jpeg",//头像图片类型
        "bfile": "/9j/4AAQSkZJRgAB", //会员头像数据
        "cimageurl":"http://cdn.image.tomtop.com/image/test.jpg" //会员头像url，如果此路径不为空，则用此显示头像，否则用bfile显示
    }
}


```
#### 2.获取会员头像
GET     /member/v1/memberphoto

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| uuid|   String    | |  UUID
| client|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "iid": 13,
        "cemail": "2853105188@qq.com",
        "ccontenttype": "image/jpeg",
        "bfile": "/9j/4AAQSkZJRgABAQEAYABgAAD",
        "cmd5": "4183fdad981f0394b617668f8e9fd4fc"
    }
}
```
#### 3.修改会员基本信息

POST   /member/v1/memberbase/update

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   Integer    | |  站点ID
| caccount|   String    | 昵称                               |
| cemail|   String| 会员邮箱   
| cprefix|   String| 前缀
| csuffix|   String| 后缀
| cfirstname|   String| 姓名首
| cmiddlename|   String| 姓名中
| clastname|   String| 姓名后
| dbirth|   Date| 生日
| igender|   Integer| 性别  1男性 0女性	 
| ccountry|   String| 会员国家	            
| caboutme|   String| 介绍
| cuuid|   String| UUID
	 
 

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": true
}

```
#### 4.获取会员评论列表
GET     review/v1/reviews

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| uuid|   String    | |  UUID
| client|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |
| page|   Integer    | 页码                               |
| limit|   Integer    | 每页显示数量                               |
| status|   Integer    | 审核状态(0未审、1通过、2未通过)   不传递默认为-1查询所有                            |
| dateType|   Integer    | 时间 3=Last 3 Mohths 6 12    不传递默认为0 查询所有                            |
 

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
               "ccomment": "tes",
            "foverallratingStarWidth": 90,
            "productSmallImageUrl": "p/gu1/H/H15585/H15585-4-4df7.jpg",
            "commentVideoUrl": "",
            "ipriceStarWidth": 100,
            "listingId": "ddefc959-664c-4c41-afc9-59664cac41e4",
            "iusefulness": 80,
            "videoTitle": "",
            "iqualityStarWidth": 100,
            "commentPhotosUrl": [
                "http://img.api.tomtop.com/file/fast/group1/M00/00/65/wKjcN1box4mAOIW0AACq-pZ5SmY460.jpg",
                "http://img.api.tomtop.com/file/fast/group1/M00/00/65/wKjcN1box4mAZfJ6AACWdafeCr0948.jpg"
            ],
            "dcreatedate": 1458096186941,
            "commentid": 2547,
            "ishippingStarWidth": 60,
            "productUrl": "20pcs-romantic-mini-heart-diy-candy-cookie-gift-box-for-wedding-party-with-purple-ribbon-h15585",
            "sku": "ddd",
            "istate": "Pending"
        },{}],
    "page": {
        "totalRecord": 7,
        "totalPage": 1,
        "startRec": 0,
        "endRec": 7,
        "currentPage": 1,
        "pageSize": 10
    }
}
```

#### 5.删除会员评论

POST   review/v1/reviews/_delete/{iid}/{uuid}

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| iid|   Integer    |   评论流水号|
| uuid|   String    |   UUID|

备注：单个评论删除，已经审核的和正在审核通过的，不允许删除

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}
```
#### 6.更新会员评论

POST   review/v1/review/_update

有图片操作，需要用form提交方式

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| clistingid|   String    |   产品流水ID
| csku|   String    |   SKU
| email|   String  |     会员邮箱 | 
| ccomment|   String    |   评论内容 | 
| ipriceStarWidth|   Integer    |   价格评分 | 
| iqualityStarWidth|   Integer    |  质量评分 | 
| ishippingStarWidth|   Integer    |   物流评分 | 
| iusefulness|   Integer    |  有用评级 | 
| foverallratingStarWidth|   Integer    | 不需要传递 经过以上评分计算出来  综合评级 | 
| client|   Integer    |   站点编号 | 
| commentid|   Integer    |   评论编号 | 
| commentVideoUrl|   String  |     视频url ，不是必填| 
| videoTitle|   String  |     视频标题，不是必填 | 
| uuid|   String  |     uuid | 
| files|   MultipartFile[]|     评论图片文件，不是必填 | 
| commentPhotosUrl|   String  |     图片url 用逗号分隔| 

 
 
备注: 审核核状态(0未审、1通过、2未通过)
正在审核的和已经审核通过了的，不能编辑


 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}
```

#### 7.添加会员评论

POST（Form提交方式）   review/v1/reviews

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| clistingid|   String    |   产品流水ID
| csku|   String    |   SKU
| email|   String  |     会员邮箱 | 
| ccomment|   String    |   评论内容 | 
| ipriceStarWidth|   Integer    |   价格评分 | 
| iqualityStarWidth|   Integer    |  质量评分 | 
| ishippingStarWidth|   Integer    |   物流评分 | 
| iusefulness|   Integer    |  有用评级 | 
| foverallratingStarWidth|   Integer    | 不需要传递 经过以上评分计算出来  综合评级 | 
| client|   Integer    |   站点编号 | 
| istate|   Integer    |   审核状态 | 
| commentVideoUrl|   String  |     视频url ，不是必填| 
| videoTitle|   String  |     视频标题，不是必填 | 
| ccountry|   String  |     评论国家 | 
| cplatform|   String  |     平台 | 
| uuid|   String  |     uuid | 
| files|   MultipartFile[]|     评论图片文件，不是必填 | 
 
备注: 审核状态(0未审、1通过、2未通过)
 


 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}
```

#### 8.获取会员评论统计

GET   review/v1/reviews/statistics

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| uuid|   String    | |  UUID
| client|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |
 
 


 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret":1,
    "data":"{"pendingReviewsCount":15,"pointsTotal":542519,"totalReviewsCount":23,"approvedReviewsCount":8,"failedReviewsCount":0}"
}
备注：

pendingReviewsCount: 用户评论未审核数	
approvedReviewsCount: 用户评论已经通过数
failedReviewsCount: 用户评论审核未通过数
totalReviewsCount: 用户评论总数
pointsTotal:会员可用总积分
```

#### 9.会员添加收藏

POST   /collect/v1/collects

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| uuid|   String    | |  UUID
| client|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |
| listingIds|   数组| 产品listingId数组                         |


{"uuid":"434086a1-8523-4432-8086-a185230432c6","client":1,"email":"295974816@qq.com","listingIds":["006d904f-d914-1004-874c-d371c9ab96c0"]}

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}
```

#### 10.会员删除收藏

POST   /collect/v1/collects/_delete/_ids

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| uuid|   String    | |  UUID
| client|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |
| ids|   数组| 产品收藏流水号                         |


{"uuid":"434086a1-8523-4432-8086-a185230432c6","client":1,"email":"295974816@qq.com","ids":[1604,1605]}

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}
```

#### 11.获取会员登录上下文

GET member/v1/login_context

cookie信息:uuid token
 
Response 如果成功返回

{
    "ret":1,
    "data":"{"groupId":1,"currencyCode":"USD","email":"123123123@qq.com"}"
}

#### 12.获取会员中心统计数据

GET   /member/v1/member_center_statistics

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| uuid|   String    | |  UUID
| client|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |
 
 


 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret":1,
    "data":"{"collectCount":15,"reviewsCount":23,"pointCount":8,"couponCount":0}"
}
备注：

collectCount: 用户评论总数	
reviewsCount: 用户评论总数
pointCount: 用户积分总数
couponCount: 用户coupon总数

  
```

 
#### 13.修改、添加会员头像
POST    /image/v1/upload_cdn

因为有图片，所以用Form提交方式
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| uuid|   String    | |  UUID
| client|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |
| file|   MultipartFile| 上传的文件                                |
| csku|   String| 评论图片上传才需要传递  type=reviewPhoto    |
| clistingId|   String| 评论图片上传才需要传递    type=reviewPhoto  |
| type|   String| 此字段为了标识上传的图片成功以后保存到哪张表，例如：会员头像=memberHead，评论单独添加图片="reviewPhoto"|                                


 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "succeed": true,
        "path": "http://192.168.215.29:8080/file/fast/group1/M00/00/56/wKjcN1bhKw6AGkYjAACq-pZ5SmY323.jpg"
    }
}
```
#### 14.会员删除收藏-By email and listingIds

POST   /collect/v1/collects/_delete/_listingIds

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| uuid|   String    | |  UUID
| client|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |
| listingIds|   数组| listingIds                         |


{"uuid":"434086a1-8523-4432-8086-a185230432c6","client":1,"email":"295974816@qq.com","ids":["listing1","listing2"]}

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}
```
 #### 15.评论图片删除-By email and listingIds

POST   /review/v1/reviews/photos

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| uuid|   String    | |  UUID
| client|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |
| listingIds|   数组| listingIds                         |


{"uuid":"434086a1-8523-4432-8086-a185230432c6","client":1,"email":"295974816@qq.com","ids":["listing1","listing2"]}

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}
```
  #### 16.评论视频删除-By email and listingIds

POST   /review/v1/reviews/videos

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| uuid|   String    | |  UUID
| client|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |
| listingIds|   数组| listingIds                         |


{"uuid":"434086a1-8523-4432-8086-a185230432c6","client":1,"email":"295974816@qq.com","ids":["listing1","listing2"]}

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}
```
 

#### 17.获取评论视频列表列表
GET     review/v1/reviews/videos

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| uuid|   String    | |  UUID
| client|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |
| page|   Integer    | 页码                               |
| limit|   Integer    | 每页显示数量                               |
| status|   Integer    | 审核状态(0未审、1通过、2未通过)   不传递默认为-1查询所有                            |
| dateType|   Integer    | 时间 3=Last 3 Mohths 6 12    不传递默认为0 查询所有                            |
 

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "dcreatedate": 1457996317298,
            "istate": "Pending",
            "productSmallImageUrl": "p/gu1/H/H15585/H15585-4-4df7.jpg",
            "videos": [
                {
                    "iid": 68,
                    "cvideourl": "www.baidu.com", //视频url
                    "clabel": "videoTitle",//视频title
                    "iauditorstatus": 0, //视频审核状态
                    "iwebsiteid": 1
                },{}
            ],
            "productUrl": "20pcs-romantic-mini-heart-diy-candy-cookie-gift-box-for-wedding-party-with-purple-ribbon-h15585"
        }
    ],
    "page": {
        "totalRecord": 1,
        "totalPage": 1,
        "startRec": 0,
        "endRec": 1,
        "currentPage": 1,
        "pageSize": 2
    }
}
```


#### 18.获取评论图片列表列表
GET     review/v1/reviews/photos

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| uuid|   String    | |  UUID
| client|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |
| page|   Integer    | 页码                               |
| limit|   Integer    | 每页显示数量                               |
| status|   Integer    | 审核状态(0未审、1通过、2未通过)   不传递默认为-1查询所有                            |
| dateType|   Integer    | 时间 3=Last 3 Mohths 6 12    不传递默认为0 查询所有                            |
 

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "dcreatedate": 1451209848236,
            "istate": "Approved",
            "productSmallImageUrl": "http://test.com/1.jpg",
            "photosUrl": [
                "http://test.com/1.jpg"
            ],
            "productUrl": "n111mix-colorfree-shipping-fashion-shambala-necklaceheart-pendant-n"
        }
    ],
    "page": {
        "totalRecord": 1,
        "totalPage": 1,
        "startRec": 0,
        "endRec": 1,
        "currentPage": 1,
        "pageSize": 2
    }
}
```

#### 19.获取会员单个评论 by iid
GET     review/v1/review

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| uuid|   String    | |  UUID
| client|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |
| iid|   Integer    | 评论流水id                              |

 
 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "commentid": 1,
        "ccomment": "it is very beautiful",
        "iusefulness": 0,
        "dcreatedate": 1419470460000,
        "istate": "Approved",
        "productSmallImageUrl": null,
        "commentPhotosUrl": [
            "http://img2.tomtop.com/media/catalog/product/cache/1/small_image/160x160/915.jpg",
       "http://img2.tomtop.com/media/catalog/product/cache/1/small_image/160x160/6.jpg"
 
        ],
        "commentVideoUrl": "",
        "productUrl": "",
        "videoTitle": "",
        "sku": "H001-TEST",
        "listingId": "12341",
        "foverallratingStarWidth": 40,
        "ishippingStarWidth": 0,
        "iqualityStarWidth": 0,
        "ipriceStarWidth": 0
    }
}
```


------------------------------------------------
#### 20. 会员激活
```
GET   /member/v1/activate
```
member/v1/activate?client=1&code=ddd6555d


|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |
| client|   Integer| 站点ID |
| code|   String | UUID |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}

```


------------------------------------------------
#### 21. 会员中心发送激活邮件 
```
GET   /member/v1/activate/email
```
member/v1/activate/email?client=1&email=ddd6555d


|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |
| client|   Integer| 站点ID |
| email|   String | email|


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}

```

------------------------------------------------
#### 22. 会员中心会员订阅
```
POST /member/v1/subscribe
```
Form提交方式


|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |
| website|   Integer| 站点ID |
| email|   String | email|
| categoryArr|   String[] | 类目cpach数组|
| lang|   Integer| 语言ID |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}

```
#### 23.修改会员基本信息 v2

POST   /member/v2/memberbase/update

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| website|   Integer    | |  站点ID
| account|   String    | 昵称                               |
| fname|   String| 姓名首   
| lname|   String| 姓名后
| gender|   String|  性别  1男性 0女性	 
| dbirth|   Date| 生日
| countryName|   Integer| 会员国家 简写 不能超3位|         
| about|   String| 介绍|
| email|   String| 邮箱|
	 
 

 Response  如果成功返回
请求数据例子：
{
"account":"tony",
"fname":"ss",
"lname":"ss",
"gender":1,
"countryName":"US",
"about":"sdfasdf",
"email":"2853789707@qq.com",
"birth":"1988-01-01 00:00:00",
"website":10

}
```
Status: 200 OK
```
```
{
    "ret": 1
}
```

#### 24.获取会员单个评论.V2
GET    review/v2/review

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| uuid|   String    | |  UUID
| website|   Integer    | 站点ID                               |
| email|   String| 会员邮箱                                  |
| iid|   Integer    | 评论流水id                              |

 
 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "commentid": 1,
        "ccomment": "it is very beautiful",
        "iusefulness": 0,
        "dcreatedate": 1419470460000,
        "istate": "Approved",
        "productSmallImageUrl": null,
        "commentPhotosUrl": [
            "http://img2.tomtop.com/media/catalog/product/cache/1/small_image/160x160/915.jpg",
       "http://img2.tomtop.com/media/catalog/product/cache/1/small_image/160x160/6.jpg"
 
        ],
        "commentVideoUrl": "",
        "productUrl": "",
        "videoTitle": "",
        "sku": "H001-TEST",
        "listingId": "12341",
        "foverallratingStarWidth": 40,
        "ishippingStarWidth": 0,
        "iqualityStarWidth": 0,
        "ipriceStarWidth": 0
    }
}