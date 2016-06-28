基本接口文档

UAT测试地址：http://192.168.220.53:8000/
反向代理地址：http://base.api.tomtop.com
------------------------------------------------
#### 1.添加服务事件
```
POST   /base/event/v1/add
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| code | String | 标识  不能为空   code规则 EVENT_CODE_{自定义}：EVENT_CODE_REGISTER  不能重复          |
| name | String | 名字   不能为空              |
| type | String | 类型   不能为空               |
| paramRemark | String | 参数说明   不是必须              |
| remark | String | 备注 不是必须                 |

注意：请求的headers 为Content-type=application/json
请求格式为Json 如：
{
"code":"SONGJIFEN",
"name":"songjifen",
"type":"jifen",
"paramRemark":"email",
"remark": "email"

}
Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}

```
```
事件code：
{"code":"EVENT_CODE_ACTIVATE","remark":"用户注册完成后发送激活邮件"}
{"code":"EVENT_CODE_REVIEW","remark":"用户评论"}
{"code":"EVENT_CODE_UPLOAD_MEMBER_PHOTO","remark":"上传会员头像"}
{"code":"EVENT_CODE_ORDER_COMPLETE","remark":"订单完成"}
{"code":"EVENT_CODE_REVIEW_SHARE","remark":"评论分享"}
{"code":"EVENT_CODE_SUBSCRIBE","remark":"用户订阅"}

```
#### 2.添加订阅服务事件
```
POST   /base/event/v1/add/sub
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| code | String | 标识    不能为空             |
| name | String | 名字    不能为空             |
| type | String | 类型    不能为空             |
| url | String | 参数说明  必须             |
| method| String | 请求方式    不是必须 默认为GET            |
| param| String | 请求参数    不是必须             |

注意：请求的headers 为Content-type=application/json
请求格式为Json 如：
{
"code":"SONGJIFEN",
"name":"songjifen",
"type":"jifen",
"url":"http://www.baidu.com",
"method": "GET",
"param": "["a":"b","c":"d"]"
}
Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}
```
#### 3.获取服务事件
```
GET   /base/event/v1
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| code | String | 标识                 |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "code": "SONGJIFEN",
            "name": "songjifen",
            "type": "jifen",
            "paramRemark": "email",
            "remark": "email"
        }
    ]
}

```
#### 4.获取订阅服务事件
```
GET   /base/event/v1/sub
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| code | String | 标识                 |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "code": "SONGJIFEN",
            "name": "songjifen",
            "type": "jifen",
            "url": "http://www.baidu.com",
            "method": "email",
            "param": "email=22@qq.com"
        }
    ]
}

```
#### 5.获取全部服务事件
```
GET   /base/event/v1/all
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "code": "EVENT_CODE_ACTIVATE",
            "name": "activate",
            "type": "activate",
            "paramRemark": "",
            "remark": "用户注册完成后发送激活邮件"
        },
        {
            "code": "EVENT_CODE_REVIEW",
            "name": "review",
            "type": "review",
            "paramRemark": "",
            "remark": "用户评论"
        },
        {
            "code": "EVENT_CODE_UPLOAD_MEMBER_PHOTO",
            "name": "upload-member-photo",
            "type": "upload-member-photo",
            "paramRemark": "",
            "remark": "上传会员头像"
        },
        {
            "code": "EVENT_CODE_ORDER_COMPLETE",
            "name": "order-complete",
            "type": "order-complete",
            "paramRemark": "",
            "remark": "订单完成"
        },
        {
            "code": "EVENT_CODE_REVIEW_SHARE",
            "name": "review-share",
            "type": "review-share",
            "paramRemark": "",
            "remark": "评论分享"
        }
    ]
}

```
#### 6.获取cms目录 list
```
GET   /base/cms/v1/list
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
|  name       | String  | 默认为：Footer |
|  client     | int  | 客户端Id |
|  lang       | int  | 语言Id |
Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 103,
            "title": "test",
            "url": "http://www.tomtop.com",
            "level": 2,
            "parentId": 1,
            "sort": null,
            "status":1
        },
        {
            "id": 155,
            "title": null,
            "url": null,
            "level": 2,
            "parentId": 1,
            "sort": 1,
            "status":1
        },
        {
            "id": 151,
            "title": "CMS-ENCMS-ENCMS-EN",
            "url": "HTTP://CMS-ENCMS-ENCMS-EN.COM",
            "level": 3,
            "parentId": 103,
            "sort": 1,
            "status":1
        },
        {
            "id": 153,
            "title": "CMS-en-1-10000",
            "url": "http://CMS-en-1-10000.com",
            "level": 3,
            "parentId": 103,
            "sort": 3,
            "status":1
        }
    ]
}

```
#### 7.获取cms目录map (2级title对3级object)
```
GET   /base/cms/v1/map
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
|  name       | String  | 默认为：Footer |
|  client     | int  | 客户端Id |
|  lang       | int  | 语言Id |
Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "test": [
            {
                "id": 151,
                "title": "CMS-ENCMS-ENCMS-EN",
                "url": "HTTP://CMS-ENCMS-ENCMS-EN.COM",
                "level": 3,
                "parentId": 103,
                "sort": 1
            },
            {
                "id": 153,
                "title": "CMS-en-1-10000",
                "url": "http://CMS-en-1-10000.com",
                "level": 3,
                "parentId": 103,
                "sort": 3
            }
        ]
    }
}
```
#### 8.获取cms详情(根据cid)
```
GET   /base/cms/v1/deails/{cid}
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
|  cid  | int  | 必须 {cid} 替换成对应的Id |
|  client     | int  | 客户端Id |
|  lang       | int  | 语言Id |
Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "title": "Footer",
            "url": "http://FooterFooterFooter.com",
            "content": "<span style=\"line-height: 18.5714px;\">FooterFooterFooterFooter</span><span style=\"line-height: 18.5714px;\">FooterFooterFooterFooter</span><span style=\"line-height: 18.5714px;\">FooterFooterFooterFooter</span><span style=\"line-height: 18.5714px;\">FooterFooterFooterFooter</span>",
            "metaTitle": "FooterFooterFooterFooter",
            "metaKeyword": "FooterFooterFooterFooter",
            "metaDescription": "FooterFooterFooterFooter"
        }
    ]
}
```
#### 9.获取品类的商品图片对应形态
```
GET  /base/shape/v1/map
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
|  client     | int  | 客户端Id |
|  lang       | int  | 语言Id |
Response  如果成功返回


```
Status: 200 OK
```
```
备注：1=长方形 0=正方形
{
    "ret": 1,
    "data": {
        "BEAUTY/Tools-Accessories": 0,
        "SHOES/Wedges": 0,
        "SHOES/Boots-Booties/Knee-High-Boots": 0,
        "DRESSES": 1,
        "SHOES/Flats-Sneakers/Sneakers": 0,
        "BEAUTY/Makeup": 0,
        "DRESSES/Bodycon-Dresses": 1,
        "TOPS/Tshirts/Crop-Tops": 1,
        "SHOES/Boots-Booties/Mid-Calf-Boots": 0,
        "SHOES/Boots-Booties/Wedge-Boots": 0,
        "TOPS/Tshirts/Graphic-Tees": 1,
        "TOPS/Tshirts/Active-Tops": 1,
        "TOPS/Outwear/Plain-Outerwear": 1,
        "BEAUTY/Lips": 0,
        "JEWELRY/Hair-Jewelry": 0,
        "ACCESSORIES/Cold-Weather": 0,
        "TOPS/Knitwear/Pullovers": 1,
        "ACCESSORIES/Scarves": 0,
        "DRESSES/Backless-Dresses": 1,
        "TOPS/Outwear/Caps-Kimonos": 1,
        "SHOES/Sandals/Flat-Sandals": 0,
        "TOPS/Outwear/Jackets": 1,
        "ACCESSORIES/Hats": 0,
        "BEAUTY/Eyes": 0,
        "DRESSES/Print-And-Floral": 1,
        "TOPS/Tshirts/Dressy-Tops": 1,
        "DRESSES/Skater-Dresses": 1,
        "JEWELRY/Bracelets": 0,
        "SHOES/Wedges/Sandal-Wedges": 1,
        "SHOES/Sandals/Gladiator-Sandals": 0,
        "JEWELRY/Watches": 0,
        "TOPS/Tshirts/Short-Sleeve": 1,
        "TOPS/Tshirts": 1,
        "TOPS/Blouses-Shirts": 1,
        "SHOES/Boots-Booties/Ankle-Boots-Booties": 0,
        "DRESSES/Sweater-Dresses": 1,
        "DRESSES/Long-Sleeve-Dresses": 1,
        "TOPS/Blouses-Shirts/Vintage-Blouse": 1,
        "ACCESSORIES/Bags/Backpacks": 0,
        "TOPS/Tshirts/Tubes-Camis": 1,
        "DRESSES/Vintage-Dresses": 1,
        "ACCESSORIES/Belts": 0,
        "BOTTOMS/Skirts": 1,
        "BEAUTY/Skin-Care": 0,
        "BOTTOMS/Leggings": 1,
        "ACCESSORIES/Socks-Tights": 0,
        "BOTTOMS/Pants": 1,
        "SHOES/Heels/Peep-Toes": 0,
        "BOTTOMS": 1,
        "SHOES": 0,
        "BOTTOMS/Jumpsuits-Rompers": 1,
        "SHOES/Sandals": 0,
        "JEWELRY/Necklaces": 0,
        "SHOES/Sandals/High-Heel-Sandals": 0,
        "DRESSES/Lace-Dresses": 1,
        "TOPS/Outwear/Blazers": 1,
        "JEWELRY/Earrings": 0,
        "TOPS/Knitwear/Cardigans-Cover-Ups": 1,
        "TOPS/Tshirts/Long-Sleeve": 1,
        "TOPS/Knitwear/Sweaters": 1,
        "TOPS": 1,
        "SHOES/Boots-Booties/Flat-Boots-Booties": 0,
        "TOPS/Outwear/Parka": 1,
        "JEWELRY": 0,
        "DRESSES/Swimwear": 1,
        "SHOES/Heels/Ankle-Strap-Heels": 0,
        "DRESSES/Shift-Dresses": 1,
        "BEAUTY/Body-Care": 0,
        "ACCESSORIES/Bags/Crossbody-Bags": 0,
        "BEAUTY/Hair-Care": 0,
        "TOPS/Outwear/Fall-Outerwear": 1,
        "SHOES/Sandals/Thong-Sandals": 0,
        "TOPS/Outwear/TwoPieces-Outfits": 1,
        "ACCESSORIES/Sunglasses": 0,
        "DRESSES/Little-Red-Dresses": 1,
        "TOPS/Tshirts/Tank-Tops": 1,
        "ACCESSORIES": 0,
        "TOPS/Outwear/Black-Outerwear": 1,
        "SHOES/Heels/Pumps": 0,
        "BEAUTY/Nails": 0,
        "SHOES/Wedges/Boot-Wedges": 1,
        "DRESSES/Casual-Dresses": 1,
        "DRESSES/Party-Dresses": 1,
        "TOPS/Knitwear": 1,
        "TOPS/Outwear/Winter-Outerwear": 1,
        "SHOES/Flats-Sneakers/Flats": 0,
        "JEWELRY/Jewelry-Sets": 0,
        "DRESSES/Midi-Maxi-Dresses": 1,
        "SHOES/Boots-Booties": 0,
        "SHOES/Boots-Booties/High-Heel-Boots-Booties": 0,
        "JEWELRY/Rings": 0,
        "BOTTOMS/Jeans": 1,
        "SHOES/Flats-Sneakers/Lace-Ups": 0,
        "SHOES/Sandals/Wedge-Sandals": 0,
        "DRESSES/Little-Black-Dresses": 1,
        "SHOES/Wide-Width-Shoes": 0,
        "ACCESSORIES/Bags": 0,
        "SHOES/Heels/Flatforms": 0,
        "TOPS/Blouses-Shirts/Black-Blouses": 1,
        "TOPS/Blouses-Shirts/Bohemian-Blouses": 1,
        "SHOES/Boots-Booties/Over-the-Knee-Boots": 0,
        "ACCESSORIES/Bags/Handbags-Totes": 0,
        "SHOES/Heels": 0,
        "SHOES/Flats-Sneakers": 0,
        "DRESSES/Twopiece-Dresses": 1,
        "BOTTOMS/Joggers": 1,
        "BEAUTY": 0,
        "DRESSES/Club-Dresses": 1,
        "TOPS/Outwear": 1,
        "BOTTOMS/Shorts": 1,
        "TOPS/Tshirts/Sleeveless": 1,
        "TOPS/Blouses-Shirts/Plaid-Blouse": 1,
        "TOPS/Outwear/Sweatshirts-Hoodies": 1,
        "ACCESSORIES/Bags/Clutches-Purses": 0,
        "TOPS/Blouses-Shirts/Fall-Blouses": 1
    }
}

```
#### 10.获取cms详情(根据url)
```
GET   /base/cms/v1/deails
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
|  url | String | 必须 参数跟在地址后面 |
|  client     | int  | 客户端Id |
|  lang       | int  | 语言Id |
Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "title": "Footer",
            "url": "http://FooterFooterFooter.com",
            "content": "<span style=\"line-height: 18.5714px;\">FooterFooterFooterFooter</span><span style=\"line-height: 18.5714px;\">FooterFooterFooterFooter</span><span style=\"line-height: 18.5714px;\">FooterFooterFooterFooter</span><span style=\"line-height: 18.5714px;\">FooterFooterFooterFooter</span>",
            "metaTitle": "FooterFooterFooterFooter",
            "metaKeyword": "FooterFooterFooterFooter",
            "metaDescription": "FooterFooterFooterFooter"
        }
    ]
}

```
#### 11.增加访问记录
```
POST   /base/visitLog/v1/add
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| aid | String | aid    必须    不能为空         |
| website | Integer | 站点标识    不是必须 默认为1            |
| uip | String | 用户ip    必须             |
| path | String | 访问路径  必须            |
| source | String | 来源    必须             |

注意：请求的headers 为Content-type=application/json
请求格式为Json 如：
```
{
  "aid":"0755",
  "website":1,
  "uip":"127.0.0.1",
  "path":"/sssssss",
  "source":"www.chicuu.com"
}
```

响应样例:
```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": "操作成功"
}
```