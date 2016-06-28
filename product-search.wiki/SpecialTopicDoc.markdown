```
```
---------------------------------------
#### 1.新品查询 (有V1接口 v1不支持多仓库)
``` 
GET   ${website}/ic/v2/product/new
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| keyword|   String|   关键字 不是必须的(作为保留)|
| currency|   String|  币种 不是必须|
| client|   int|  客户端Id 本接口暂未使用|
| website|   int|  站点Id 必须 |
| lang|   int|   语言 1 en  不是必须|
| cpath|   String|   品类路径  不是必须|
| page|   int|   页数 默认为1 不是必须|
| size|   int|  大小 默认为10  不是必须|
| sort|   int| 根据条件排序 默认“”  pirceAsc -- 价格从小到大排序 pirceDesc  -- 价格从大到小排序reviewCount -- 按评论数最多的排序  releaseTime -- 按发布时间的排序salesVolume -- 按销量的排序 不是必须|
| brand|   String|  品牌过滤 默认为空  不是必须(作为保留)|
| yjPrice|   String|  价格过滤 默认为空  不是必须|
| releaseTime| String| 上架时间过滤 参数玩法【大于等于 MOT2016-01-01】【等于 EQU2016-01-01】 默认为空 不是必须(保留可能过滤)|
Response  如果成功返回
功能描述:1.有new标签的商品 2.上架时间为最近一个月的

```
Status: 200 OK
```
{
    "ret": 1,
    "data": {
        "pblist": [
            {
                "title": "phone",
                "url": "phone-hytest01",
                "imageUrl": "p/gu1/tomtopsite/H/HYTEST01/HYTEST01-14623549393501.png",
                "dlist": [
                    {
                        "depotId": 2,
                        "depotName": "US",
                        "lid": 1,
                        "status": 1,
                        "qty": 5555,
                        "symbol": "US$",
                        "nowprice": "4444.00",
                        "origprice": "4444.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 3,
                        "depotName": "GB",
                        "lid": 20,
                        "status": 1,
                        "qty": 3333,
                        "symbol": "US$",
                        "nowprice": "2222.00",
                        "origprice": "2222.00",
                        "saleEndDate": "",
                        "freeShipping": true
                    }
                ],
                "listingId": "0ee4f7aa-8b0b-4fb6-a4f7-aa8b0b0fb6cd",
                "sku": "HYTEST01",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "好的戒",
                "url": "--testa004",
                "imageUrl": "/img.pfhoo.com/pro/b/20141107/0aff6a59-2b21-4d02-9904-d71e9cc03f9f.jpg",
                "dlist": [
                    {
                        "depotId": 2,
                        "depotName": "US",
                        "lid": 12,
                        "status": 1,
                        "qty": 666,
                        "symbol": "US$",
                        "nowprice": "1000.00",
                        "origprice": "1000.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "d1e03233-e17d-4c65-a032-33e17d5c65f6",
                "sku": "TESTA004",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "好的戒",
                "url": "--testa005",
                "imageUrl": "/img.pfhoo.com/pro/b/20141107/0aff6a59-2b21-4d02-9904-d71e9cc03f9f.jpg",
                "dlist": [
                    {
                        "depotId": 2,
                        "depotName": "US",
                        "lid": 12,
                        "status": 1,
                        "qty": 666,
                        "symbol": "US$",
                        "nowprice": "569.00",
                        "origprice": "569.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "a8aeab55-ebce-4e15-aeab-55ebcefe1589",
                "sku": "TESTA005",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "2015.12.14",
                "url": "2015-12-14-test11111",
                "imageUrl": "p/gu1/tomtopsite/T/TEST11111/TEST11111-14623572960641.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 20,
                        "status": 1,
                        "qty": 2222,
                        "symbol": "US$",
                        "nowprice": "100.00",
                        "origprice": "100.00",
                        "saleEndDate": "",
                        "freeShipping": true
                    }
                ],
                "listingId": "c8251349-0f13-44aa-a513-490f13f4aa8d",
                "sku": "TEST11111",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "R750-8 Silver plated new design finger ring for lady",
                "url": "r750-8-silver-plated-new-design-finger-ring-for-lady-lknspcr750-17",
                "imageUrl": "pro/b/20151212/f29d3dac-0bda-4340-8f20-d850fe860d70.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 20,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "1.00",
                        "origprice": "1.00",
                        "saleEndDate": "",
                        "freeShipping": true
                    }
                ],
                "listingId": "5c9a5443-ae2e-49a0-9a54-43ae2e89a0c6",
                "sku": "LKNSPCR750-17",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "好的戒",
                "url": "--testa006",
                "imageUrl": "/img.pfhoo.com/pro/b/20141107/0aff6a59-2b21-4d02-9904-d71e9cc03f9f.jpg",
                "dlist": [
                    {
                        "depotId": 2,
                        "depotName": "US",
                        "lid": 12,
                        "status": 1,
                        "qty": 888,
                        "symbol": "US$",
                        "nowprice": "110.00",
                        "origprice": "110.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "34f9dda0-193b-4122-b9dd-a0193b9122f4",
                "sku": "TESTA006",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "好的戒",
                "url": "--testa007",
                "imageUrl": "/img.pfhoo.com/pro/b/20141107/0aff6a59-2b21-4d02-9904-d71e9cc03f9f.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 789,
                        "symbol": "US$",
                        "nowprice": "123.00",
                        "origprice": "123.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "b8d77149-52de-4413-9771-4952de1413b6",
                "sku": "TESTA007",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "好的戒",
                "url": "--testa003",
                "imageUrl": "/img.pfhoo.com/pro/b/20141107/0aff6a59-2b21-4d02-9904-d71e9cc03f9f.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 555,
                        "symbol": "US$",
                        "nowprice": "330.00",
                        "origprice": "330.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "026f1170-9f14-4119-af11-709f14e11903",
                "sku": "TESTA003",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "好的戒",
                "url": "--kzcr006-c-861117",
                "imageUrl": "/img.pfhoo.com/pro/b/20141107/0aff6a59-2b21-4d02-9904-d71e9cc03f9f.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 555,
                        "symbol": "US$",
                        "nowprice": "110.00",
                        "origprice": "110.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "c6f3becf-2ec4-4423-b3be-cf2ec4d4234a",
                "sku": "KZCR006-C-861117",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "好的戒",
                "url": "--kzcr006-c-861117111",
                "imageUrl": "/img.pfhoo.com/pro/b/20141107/0aff6a59-2b21-4d02-9904-d71e9cc03f9f.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 555,
                        "symbol": "US$",
                        "nowprice": "110.00",
                        "origprice": "110.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "008c64ff-a8f9-4d27-8c64-ffa8f99d274d",
                "sku": "KZCR006-C-861117111",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null
            }
        ],
        "aggsMap": {
            "mutil.productTypes.productTypeId": [
                {
                    "id": 1,
                    "name": "Tablet PC & Cellphone",
                    "count": 4,
                    "cpath": "Tablet-PC-Cellphone"
                },
                {
                    "id": 159,
                    "name": "Test Equipment & Tools",
                    "count": 12,
                    "cpath": "Test-Equipment-Tools"
                },
                {
                    "id": 221,
                    "name": "Computer & Networking",
                    "count": 1,
                    "cpath": "Computer-Networking"
                },
                {
                    "id": 277,
                    "name": "Cameras & Photo Accessories",
                    "count": 1,
                    "cpath": "Cameras-Photo-Accessories"
                },
                {
                    "id": 806,
                    "name": "Health & Beauty",
                    "count": 1,
                    "cpath": "Health-Beauty"
                },
                {
                    "id": 864,
                    "name": "Apparel & Jewelry",
                    "count": 5,
                    "cpath": "Apparel-Jewelry"
                },
                {
                    "id": 1019,
                    "name": "Home & Garden",
                    "count": 1,
                    "cpath": "Home-and-Garden"
                },
                {
                    "id": 1109,
                    "name": "RC Models & Hobbies",
                    "count": 1,
                    "cpath": "RC-Models-Hobbies"
                }
            ],
            "yjPrice": [
                {
                    "id": 0,
                    "name": "priceRange1",
                    "count": 9,
                    "cpath": null
                },
                {
                    "id": 0,
                    "name": "priceRange2",
                    "count": 6,
                    "cpath": null
                },
                {
                    "id": 0,
                    "name": "priceRange3",
                    "count": 2,
                    "cpath": null
                },
                {
                    "id": 0,
                    "name": "priceRange4",
                    "count": 9,
                    "cpath": null
                }
            ]
        },
        "page": {
            "totalRecord": 27,
            "totalPage": 3,
            "startRec": 0,
            "endRec": 10,
            "currentPage": 1,
            "pageSize": 10
        }
    }
}

```
```
---------------------------------------
#### 2.新品聚合
```
GET   ${website}/ic/v1/product/new/agg
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| website|   int|  站点Id 必须 |
Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "dateStr": "EQU2016-05-26",
            "dateName": "2016-05-26",
            "num": 9
        },
        {
            "dateStr": "EQU2016-05-25",
            "dateName": "2016-05-25",
            "num": 2
        },
        {
            "dateStr": "EQU2016-05-24",
            "dateName": "2016-05-24",
            "num": 5
        },
        {
            "dateStr": "EQU2016-05-23",
            "dateName": "2016-05-23",
            "num": 3
        },
        {
            "dateStr": "EQU2016-05-20",
            "dateName": "2016-05-20",
            "num": 13
        },
        {
            "dateStr": "EQU2016-05-19",
            "dateName": "2016-05-19",
            "num": 8
        },
        {
            "dateStr": "EQU2016-05-18",
            "dateName": "2016-05-18",
            "num": 1
        },
        {
            "dateStr": "EQU2016-05-16",
            "dateName": "2016-05-16",
            "num": 6
        },
        {
            "dateStr": "MOT2016-05-19",
            "dateName": "Last week",
            "num": 40
        },
        {
            "dateStr": "MOT2016-05-12",
            "dateName": "Last 2 weeks",
            "num": 48
        },
        {
            "dateStr": "MOT2016-05-05",
            "dateName": "Last 3 weeks",
            "num": 60
        },
        {
            "dateStr": "MOT2016-04-26",
            "dateName": "Last month",
            "num": 69
        }
    ]
}

```
---------------------------------------
#### 3.freeShipping频道查询
```
GET   ${website}/ic/v1/product/freeshipping
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| keyword|   String|   关键字 不是必须的(作为保留)|
| currency|   String|  币种 不是必须|
| client|   int|  客户端Id 本接口暂未使用|
| website|   int|  站点Id 必须 |
| lang|   int|   语言 1 en  不是必须|
| cpath|   String|   品类路径  不是必须|
| page|   int|   页数 默认为1 不是必须|
| size|   int|  大小 默认为10  不是必须|
| sort|   int| 根据条件排序 默认“”  pirceAsc -- 价格从小到大排序 pirceDesc  -- 价格从大到小排序reviewCount -- 按评论数最多的排序         releaseTime -- 按发布时间的排序salesVolume -- 按销量的排序 不是必须|
| brand|   String|  品牌过滤 默认为空  不是必须(作为保留)|
| yjPrice|   String|  价格过滤 默认为空  不是必须|
| depotName|   String| 仓库名称 默认为CN  不是必须|


```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "pblist": [
            {
                "title": "watch",
                "url": "watch-371806",
                "imageUrl": "UploadFile/ProdMainImg/admin/admin/371806-02-1000.jpg",
                "symbol": "US$",
                "nowprice": "333.00",
                "origprice": "333.00",
                "listingId": "af372bce-371f-4058-b72b-ce371fe058e8",
                "sku": "371806",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null,
                "freeShipping": true
            },
            {
                "title": "Watch",
                "url": "watch-301602",
                "imageUrl": "UploadFile/ProdDevMainImg/admin/admin/301602.jpg",
                "symbol": "US$",
                "nowprice": "11.00",
                "origprice": "11.00",
                "listingId": "fdd2603e-a331-4544-9260-3ea331a54406",
                "sku": "301602",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null,
                "freeShipping": true
            },
            {
                "title": "watch",
                "url": "watch-371901",
                "imageUrl": "UploadFile/ProdMainImg/admin/admin/371901-01-1000.jpg",
                "symbol": "US$",
                "nowprice": "1221.00",
                "origprice": "1221.00",
                "listingId": "b7c25dba-c141-43cc-825d-bac14153cc81",
                "sku": "371901",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null,
                "freeShipping": true
            },
            {
                "title": "2015.12.14",
                "url": "2015-12-14-test11111",
                "imageUrl": "p/gu1/tomtopsite/T/TEST11111/TEST11111-14623572960641.jpg",
                "symbol": "US$",
                "nowprice": "100.00",
                "origprice": "100.00",
                "listingId": "c8251349-0f13-44aa-a513-490f13f4aa8d",
                "sku": "TEST11111",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null,
                "freeShipping": true
            },
            {
                "title": "R759-B-8 Wholesale High Quality Nickle Free Antiallergic New Fashion Jewelry 18K Gold Plated Ring",
                "url": "r759-b-8-wholesale-high-quality-nickle-free-antiallergic-new-fashion-jewelry-18k-gold-plated-ring-lkn18krgpr759-b-8",
                "imageUrl": "pro/b/20151215/5ca86af9-0fc6-43bc-bd04-ff5d7371de81.jpg",
                "symbol": "US$",
                "nowprice": "1.58",
                "origprice": "1.58",
                "listingId": "4d56fa1c-8797-4718-96fa-1c87975718c7",
                "sku": "LKN18KRGPR759-B-8",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null,
                "freeShipping": true
            },
            {
                "title": "watch",
                "url": "watch-371907",
                "imageUrl": "UploadFile/ProdMainImg/admin/admin/371907-01-1000.jpg",
                "symbol": "US$",
                "nowprice": "111.00",
                "origprice": "111.00",
                "listingId": "6ca3ffbd-8100-47e5-a3ff-bd810037e5f9",
                "sku": "371907",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null,
                "freeShipping": true
            },
            {
                "title": "watch",
                "url": "watch-371906",
                "imageUrl": "UploadFile/ProdMainImg/admin/admin/371906-01-1000.jpg",
                "symbol": "US$",
                "nowprice": "7.69",
                "origprice": "7.69",
                "listingId": "55f70a57-c2b0-43bc-b70a-57c2b013bc67",
                "sku": "371906",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null,
                "freeShipping": true
            },
            {
                "title": "Watch",
                "url": "watch-301508",
                "imageUrl": "UploadFile/ProdDevMainImg/admin/admin/301508.jpg",
                "symbol": "US$",
                "nowprice": "12.92",
                "origprice": "12.92",
                "listingId": "f107fa9f-a59e-4a27-87fa-9fa59eca27f9",
                "sku": "301508",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null,
                "freeShipping": true
            },
            {
                "title": "R045-C High Quality Nickle Free Antiallergic New Fashion Jewelry 18K Plated zircon Ring",
                "url": "r045-c-high-quality-nickle-free-antiallergic-new-fashion-jewelry-18k-plated-zircon-ring-cb-con0193",
                "imageUrl": "p/gu1/tomtopsite/C/CB-CON0193/CB-CON0193-14636019521551.jpg",
                "symbol": "US$",
                "nowprice": "1.37",
                "origprice": "1.37",
                "listingId": "7887ba19-bd37-40a1-87ba-19bd37e0a17c",
                "sku": "CB-CON0193",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null,
                "freeShipping": true
            },
            {
                "title": "watch",
                "url": "watch-371804",
                "imageUrl": "UploadFile/ProdMainImg/admin/admin/371804-02-1000.jpg",
                "symbol": "US$",
                "nowprice": "200.00",
                "origprice": "200.00",
                "listingId": "3971a521-5fd9-45a1-b1a5-215fd955a1fa",
                "sku": "371804",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null,
                "freeShipping": true
            }
        ],
        "aggsMap": {
            "mutil.productTypes.productTypeId": [
                {
                    "id": 1,
                    "name": "Tablet PC & Cellphone",
                    "count": 5,
                    "cpath": "Tablet-PC-Cellphone"
                },
                {
                    "id": 63,
                    "name": "Sports & Outdoor",
                    "count": 1,
                    "cpath": "Sports-Outdoor"
                },
                {
                    "id": 159,
                    "name": "Test Equipment & Tools",
                    "count": 1,
                    "cpath": "Test-Equipment-Tools"
                },
                {
                    "id": 221,
                    "name": "Computer & Networking",
                    "count": 3,
                    "cpath": "Computer-Networking"
                },
                {
                    "id": 277,
                    "name": "Cameras & Photo Accessories",
                    "count": 3,
                    "cpath": "Cameras-Photo-Accessories"
                },
                {
                    "id": 468,
                    "name": "Musical Instruments",
                    "count": 2,
                    "cpath": "Musical-Instruments"
                },
                {
                    "id": 806,
                    "name": "Health & Beauty",
                    "count": 2,
                    "cpath": "Health-Beauty"
                },
                {
                    "id": 864,
                    "name": "Apparel & Jewelry",
                    "count": 3,
                    "cpath": "Apparel-Jewelry"
                },
                {
                    "id": 1109,
                    "name": "RC Models & Hobbies",
                    "count": 5,
                    "cpath": "RC-Models-Hobbies"
                }
            ],
            "yjPrice": [
                {
                    "id": 0,
                    "name": "priceRange1",
                    "count": 17,
                    "cpath": null
                },
                {
                    "id": 0,
                    "name": "priceRange2",
                    "count": 1,
                    "cpath": null
                },
                {
                    "id": 0,
                    "name": "priceRange3",
                    "count": 1,
                    "cpath": null
                },
                {
                    "id": 0,
                    "name": "priceRange4",
                    "count": 5,
                    "cpath": null
                }
            ]
        },
        "page": {
            "totalRecord": 25,
            "totalPage": 3,
            "startRec": 0,
            "endRec": 10,
            "currentPage": 1,
            "pageSize": 10
        }
    }
}
```
---------------------------------------
#### 4.clearance频道查询
```
GET   ${website}/ic/v1/product/clearance
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| keyword|   String|   关键字 不是必须的(作为保留)|
| currency|   String|  币种 不是必须|
| client|   int|  客户端Id 本接口暂未使用|
| website|   int|  站点Id 必须 |
| lang|   int|   语言 1 en  不是必须|
| cpath|   String|   品类路径  不是必须|
| page|   int|   页数 默认为1 不是必须|
| size|   int|  大小 默认为10  不是必须|
| sort|   int| 根据条件排序 默认“”  pirceAsc -- 价格从小到大排序 pirceDesc  -- 价格从大到小排序reviewCount -- 按评论数最多的排序         releaseTime -- 按发布时间的排序salesVolume -- 按销量的排序 不是必须|
| brand|   String|  品牌过滤 默认为空  不是必须(作为保留)|
| yjPrice|   String|  价格过滤 默认为空  不是必须|
| depotName|   String| 仓库名称 默认为CN  不是必须|


```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "pblist": [
            {
                "title": "R750-8 Silver plated new design finger ring for lady",
                "url": "r750-8-silver-plated-new-design-finger-ring-for-lady-lknspcr750-17",
                "imageUrl": "pro/b/20151212/f29d3dac-0bda-4340-8f20-d850fe860d70.jpg",
                "symbol": "US$",
                "nowprice": "1.00",
                "origprice": "1.00",
                "listingId": "5c9a5443-ae2e-49a0-9a54-43ae2e89a0c6",
                "sku": "LKNSPCR750-17",
                "collectNum": 0,
                "reviewCount": null,
                "avgScore": null,
                "freeShipping": true
            }
        ],
        "aggsMap": {
            "mutil.productTypes.productTypeId": [
                {
                    "id": 1109,
                    "name": "RC Models & Hobbies",
                    "count": 1,
                    "cpath": "RC-Models-Hobbies"
                }
            ],
            "yjPrice": [
                {
                    "id": 0,
                    "name": "priceRange1",
                    "count": 1,
                    "cpath": null
                }
            ]
        },
        "page": {
            "totalRecord": 1,
            "totalPage": 1,
            "startRec": 0,
            "endRec": 1,
            "currentPage": 1,
            "pageSize": 10
        }
    }
}

```
---------------------------------------
#### 5.top-sellers频道首页查询
```
GET   ${website}/ic/v1/product/topsellers/home
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| currency|   String|  币种 不是必须|
| client|   int|  客户端Id 本接口暂未使用|
| website|   int|  站点Id 必须 |
| lang|   int|   语言 1 en  不是必须|

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "Tablet PC & Cellphone": [
            {
                "title": "2Pcs/Set Patented Dodocool Magic Smart Cleaning Cloth Screen Cleaner for iMac iPhone iPad Macbook LCD Smartphone DSLR",
                "url": "2pcs-set-patented-dodocool-magic-smart-cleaning-cloth-screen-cleaner-for-imac-iphone-ipad-macbook-lcd-smartphone-dslr-da01",
                "imageUrl": "p/tt/d/a/da01-23-b2cd.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "13.00",
                        "origprice": "13.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 2,
                        "depotName": "US",
                        "lid": 15,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "13.00",
                        "origprice": "13.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 3,
                        "depotName": "GB",
                        "lid": 18,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "321.00",
                        "origprice": "321.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "047c93cc-d914-1004-874c-d371c9ab96c0",
                "sku": "DA01",
                "collectNum": 4,
                "reviewCount": 1,
                "avgScore": 5
            },
            {
                "title": "CUBOT X11 3G WCDMA Smartphone Android 4.4 MTK6592 Octa Core 1.4GHz 5.5\" IPS 1280*720P 2GB RAM 16GB ROM 8MP 16MP Dual Cameras with OTG G-sensor L-sensor and P-sensor",
                "url": "cubot-x11-3g-wcdma-smartphone-android-44-mtk6592a-octa-core-17ghz-55-ips-1280720p-2gb-ram-16gb-rom-8mp-13mp-dual-cameras-with-otg-gsensor-lsensor-and-psensor-p1217b-au",
                "imageUrl": "/images/P/P1217B-AU/P1217B-AU-21-ae1b.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "147.12",
                        "origprice": "147.12",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 3,
                        "depotName": "GB",
                        "lid": 18,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "147.12",
                        "origprice": "147.12",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 5,
                        "depotName": "DE",
                        "lid": 14,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "147.12",
                        "origprice": "147.12",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 6,
                        "depotName": "FR",
                        "lid": 9,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "147.12",
                        "origprice": "147.12",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 7,
                        "depotName": "AU",
                        "lid": 1,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "147.12",
                        "origprice": "147.12",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "517094e0-f5f7-4dd8-b094-e0f5f75dd849",
                "sku": "P1217B-AU",
                "collectNum": 4,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "Micro to USB Beads Bracelet Charging Sync Data Cable Cord for Samsung Galaxy 5 5S 4 HTC Sony Android Smartphone",
                "url": "micro-to-usb-beads-bracelet-charging-sync-data-cable-cord-for-samsung-galaxy-5-5s-4-htc-sony-android-smartphone-pa2176",
                "imageUrl": "p/gu1/P/PA2176/PA2176-8-0378.JPG",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 2,
                        "depotName": "US",
                        "lid": 15,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 3,
                        "depotName": "GB",
                        "lid": 18,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 7,
                        "depotName": "AU",
                        "lid": 1,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "325157e8-d954-1004-885c-c392a656c1cb",
                "sku": "PA2176",
                "collectNum": 4,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "MIPOW BTV500 Bluetooth Headset One for Two Aluminum Alloy Handsfree Wireless Call Earphone for iPhone Samsung",
                "url": "mipow-btv500-bluetooth-headset-one-for-two-aluminum-alloy-handsfree-wireless-call-earphone-for-iphone-samsung-pa2489s",
                "imageUrl": "p/gu1/P/PA2489S/PA2489S-2-12be.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "147.00",
                        "origprice": "147.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "ac31d11a-e6f3-4c03-b1d1-1ae6f35c03f3",
                "sku": "PA2489S",
                "collectNum": 2,
                "reviewCount": null,
                "avgScore": null
            }
        ]
    }
}

```
---------------------------------------
#### 6.top-sellers频道类目查询
```
GET   ${website}/ic/v1/product/topsellers
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| currency|   String|  币种 不是必须|
| client|   int|  客户端Id 本接口暂未使用|
| website|   int|  站点Id 必须 |
| lang|   int|   语言 1 en  不是必须|
| cpath|   String|   品类路径  不是必须|
| page|   int|   页数 默认为1 不是必须|
| size|   int|  大小 默认为10  不是必须|
```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "pblist": [
            {
                "title": "2Pcs/Set Patented Dodocool Magic Smart Cleaning Cloth Screen Cleaner for iMac iPhone iPad Macbook LCD Smartphone DSLR",
                "url": "2pcs-set-patented-dodocool-magic-smart-cleaning-cloth-screen-cleaner-for-imac-iphone-ipad-macbook-lcd-smartphone-dslr-da01",
                "imageUrl": "p/tt/d/a/da01-23-b2cd.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "13.00",
                        "origprice": "13.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 2,
                        "depotName": "US",
                        "lid": 15,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "13.00",
                        "origprice": "13.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 3,
                        "depotName": "GB",
                        "lid": 18,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "321.00",
                        "origprice": "321.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "047c93cc-d914-1004-874c-d371c9ab96c0",
                "sku": "DA01",
                "collectNum": 4,
                "reviewCount": 1,
                "avgScore": 5
            },
            {
                "title": "CUBOT X11 3G WCDMA Smartphone Android 4.4 MTK6592 Octa Core 1.4GHz 5.5\" IPS 1280*720P 2GB RAM 16GB ROM 8MP 16MP Dual Cameras with OTG G-sensor L-sensor and P-sensor",
                "url": "cubot-x11-3g-wcdma-smartphone-android-44-mtk6592a-octa-core-17ghz-55-ips-1280720p-2gb-ram-16gb-rom-8mp-13mp-dual-cameras-with-otg-gsensor-lsensor-and-psensor-p1217b-au",
                "imageUrl": "/images/P/P1217B-AU/P1217B-AU-21-ae1b.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "147.12",
                        "origprice": "147.12",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 3,
                        "depotName": "GB",
                        "lid": 18,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "147.12",
                        "origprice": "147.12",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 5,
                        "depotName": "DE",
                        "lid": 14,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "147.12",
                        "origprice": "147.12",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 6,
                        "depotName": "FR",
                        "lid": 9,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "147.12",
                        "origprice": "147.12",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 7,
                        "depotName": "AU",
                        "lid": 1,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "147.12",
                        "origprice": "147.12",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "517094e0-f5f7-4dd8-b094-e0f5f75dd849",
                "sku": "P1217B-AU",
                "collectNum": 4,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "Micro to USB Beads Bracelet Charging Sync Data Cable Cord for Samsung Galaxy 5 5S 4 HTC Sony Android Smartphone",
                "url": "micro-to-usb-beads-bracelet-charging-sync-data-cable-cord-for-samsung-galaxy-5-5s-4-htc-sony-android-smartphone-pa2176",
                "imageUrl": "p/gu1/P/PA2176/PA2176-8-0378.JPG",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 2,
                        "depotName": "US",
                        "lid": 15,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 3,
                        "depotName": "GB",
                        "lid": 18,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 7,
                        "depotName": "AU",
                        "lid": 1,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "325157e8-d954-1004-885c-c392a656c1cb",
                "sku": "PA2176",
                "collectNum": 4,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "MIPOW BTV500 Bluetooth Headset One for Two Aluminum Alloy Handsfree Wireless Call Earphone for iPhone Samsung",
                "url": "mipow-btv500-bluetooth-headset-one-for-two-aluminum-alloy-handsfree-wireless-call-earphone-for-iphone-samsung-pa2489s",
                "imageUrl": "p/gu1/P/PA2489S/PA2489S-2-12be.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "147.00",
                        "origprice": "147.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "ac31d11a-e6f3-4c03-b1d1-1ae6f35c03f3",
                "sku": "PA2489S",
                "collectNum": 2,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "iradish i8 Bluetooth4.0 Smart Watch for iPhone6 6 Plus Samsung HTC Xiaomi IOS Android Smartphones Anti-lost Alarm Function Sleep Monitor Pedometer",
                "url": "iradish-i8-bluetooth4-0-smart-watch-for-iphone6-6-plus-samsung-htc-xiaomi-ios-android-smartphones-anti-lost-alarm-function-sleep-monitor-pedometer-pa2067",
                "imageUrl": "p/tt/p/a/pa2067-9-3c0e.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 2,
                        "depotName": "US",
                        "lid": 15,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 3,
                        "depotName": "GB",
                        "lid": 18,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 4,
                        "depotName": "IT",
                        "lid": 1,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 5,
                        "depotName": "DE",
                        "lid": 14,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 7,
                        "depotName": "AU",
                        "lid": 1,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "00cff819-d914-1004-874c-d371c9ab96c0",
                "sku": "PA2067",
                "collectNum": 14,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "Ulefone Be Pro 4G FDD-LTE Smart Phone Android 5.0 MT6732 Quad Core 5.5\" IPS 64-bit Processor Smart Gestures 2GB RAM 16GB ROM 8MP 13MP Dual Cameras",
                "url": "ulefone-be-pro-4g-fdd-lte-smart-phone-android-4-4-mt6732-quad-core-5-5-ips-smart-gestures-2gb-ram-16gb-rom-8mp-13mp-dual-cameras-p1197w-eu",
                "imageUrl": "p/tt/p/1/p1197w-eu-5-2160.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "121.23",
                        "origprice": "121.23",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 3,
                        "depotName": "GB",
                        "lid": 18,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "121.23",
                        "origprice": "121.23",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 5,
                        "depotName": "DE",
                        "lid": 14,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "121.23",
                        "origprice": "121.23",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 7,
                        "depotName": "AU",
                        "lid": 1,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "121.23",
                        "origprice": "121.23",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "11d17b51-d946-1004-81b8-4b94b504fa92",
                "sku": "P1197W-EU",
                "collectNum": 18,
                "reviewCount": 1,
                "avgScore": 5
            },
            {
                "title": "V9 Bluetooth V3.0 + EDR Smart Watch 1.1",
                "url": "v9-bluetooth-v3-0-edr-smart-watch-1-1-oled-display-screen-for-andriod-4-0-above-ios-smartphone-calorie-pedometer-music-player-calls-vibration-anti-lost-pa2053",
                "imageUrl": "p/tt/p/a/pa2053-4-4253.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 3,
                        "depotName": "GB",
                        "lid": 18,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 4,
                        "depotName": "IT",
                        "lid": 1,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 5,
                        "depotName": "DE",
                        "lid": 14,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 7,
                        "depotName": "AU",
                        "lid": 1,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "77.00",
                        "origprice": "77.00",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "008eb902-d914-1004-874c-d371c9ab96c0",
                "sku": "PA2053",
                "collectNum": 2,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "Ulefone Be Touch 4G FDD-LTE Smartphone Android 5.0 MTK6752 Octa Core Mali-T760 MP2 5.5",
                "url": "ulefone-be-touch-4g-fddlte-smartphone-android-50-mtk6752-octa-core-malit760-mp2-55-ips-screen-3gb-ram-16gb-rom-5mp-13mp-dual-cameras-p1214b-eu",
                "imageUrl": "p/gu1/P/P1214B-EU/P1214B-EU-5-9ac9.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "177.43",
                        "origprice": "177.43",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 4,
                        "depotName": "IT",
                        "lid": 40,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "177.43",
                        "origprice": "177.43",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 5,
                        "depotName": "DE",
                        "lid": 14,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "177.43",
                        "origprice": "177.43",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 6,
                        "depotName": "FR",
                        "lid": 9,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "177.43",
                        "origprice": "177.43",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 7,
                        "depotName": "AU",
                        "lid": 40,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "177.43",
                        "origprice": "177.43",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "e27fb338-d979-1004-8cdb-033a86de9e55",
                "sku": "P1214B-EU",
                "collectNum": 3,
                "reviewCount": 9,
                "avgScore": 4.1
            },
            {
                "title": "HUAWEI Honor 4X Che2-UL00 4G TD-LTE Smart Phone Kirin 620 Android 4.4 Octa Core 5.5\" IPS Screen 1GB RAM 8GB ROM 5MP 13MP",
                "url": "huawei-honor-4x-che2-ul00-4g-td-lte-smart-phone-kirin-620-android-4-4-octa-core-5-5-ips-screen-1gb-ram-8gb-rom-5mp-13mp-p1182w-us",
                "imageUrl": "p/tt/p/1/p1182w-us-10-8ca3.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "159.94",
                        "origprice": "159.94",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 2,
                        "depotName": "US",
                        "lid": 15,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "159.94",
                        "origprice": "159.94",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 3,
                        "depotName": "GB",
                        "lid": 18,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "159.94",
                        "origprice": "159.94",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 4,
                        "depotName": "IT",
                        "lid": 1,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "159.94",
                        "origprice": "159.94",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 5,
                        "depotName": "DE",
                        "lid": 14,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "159.94",
                        "origprice": "159.94",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 6,
                        "depotName": "FR",
                        "lid": 9,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "159.94",
                        "origprice": "159.94",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "11b4c0a1-d946-1004-81b8-4b94b504fa92",
                "sku": "P1182W-US",
                "collectNum": 6,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "Xiaomi Redmi 2A 4G TDD-LTE Smart Phone L1860 Quad Core 4.7\" IPS Android MIUI 6 1GB RAM 8GB ROM 2MP 8MP Dual Cameras",
                "url": "xiaomi-redmi-2a-4g-tddlte-smart-phone-l1860-quad-core-47-ips-android-miui-6-1gb-ram-8gb-rom-2mp-8mp-dual-cameras-p1216b-us",
                "imageUrl": "p/gu1/P/P1216B-US/P1216B-US-8-f50e.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 996,
                        "symbol": "US$",
                        "nowprice": "98.60",
                        "origprice": "98.60",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 3,
                        "depotName": "GB",
                        "lid": 18,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "98.60",
                        "origprice": "98.60",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 4,
                        "depotName": "IT",
                        "lid": 12,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "98.60",
                        "origprice": "98.60",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 6,
                        "depotName": "FR",
                        "lid": 9,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "98.60",
                        "origprice": "98.60",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "11bd8cc5-1dc0-4879-bd8c-c51dc0b879d0",
                "sku": "P1216B-US",
                "collectNum": 5,
                "reviewCount": null,
                "avgScore": null
            }
        ],
        "aggsMap": {},
        "page": {
            "totalRecord": 75,
            "totalPage": 8,
            "startRec": 0,
            "endRec": 10,
            "currentPage": 1,
            "pageSize": 10
        }
    }
}
```
---------------------------------------
#### 7.deals类目查询
```
GET   ${website}/ic/v1/product/deals/category
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int|  客户端Id 本接口暂未使用|
```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "categoryId": 1,
            "cname": "Tablet PC & Cellphone",
            "cpath": "Tablet-PC-Cellphone"
        },
        {
            "categoryId": 221,
            "cname": "Computer & Networking",
            "cpath": "Computer-Networking"
        },
        {
            "categoryId": 1109,
            "cname": "RC Models & Hobbies",
            "cpath": "RC-Models-Hobbies"
        },
        {
            "categoryId": 159,
            "cname": "Test Equipment & Tools",
            "cpath": "Test-Equipment-Tools"
        },
        {
            "categoryId": 277,
            "cname": "Cameras & Photo Accessories",
            "cpath": "Cameras-Photo-Accessories"
        },
        {
            "categoryId": 354,
            "cname": "Lighting & Flashlights & LEDs",
            "cpath": "Lighting-Flashlights-LEDs"
        },
        {
            "categoryId": 1019,
            "cname": "Home & Garden",
            "cpath": "Home-and-Garden"
        },
        {
            "categoryId": 864,
            "cname": "Apparel & Jewelry",
            "cpath": "Apparel-Jewelry"
        },
        {
            "categoryId": 806,
            "cname": "Health & Beauty",
            "cpath": "Health-Beauty"
        },
        {
            "categoryId": 63,
            "cname": "Sports & Outdoor",
            "cpath": "Sports-Outdoor"
        },
        {
            "categoryId": 1362,
            "cname": "Car Accessories",
            "cpath": "Car-Accessories"
        },
        {
            "categoryId": 1302,
            "cname": "Video & Audio",
            "cpath": "Video-Audio"
        },
        {
            "categoryId": 468,
            "cname": "Musical Instruments",
            "cpath": "Musical-Instruments"
        },
        {
            "categoryId": 1235,
            "cname": "Toys & Games",
            "cpath": "Toys-Games"
        }
    ]
}
```
---------------------------------------
#### 8.deals商品查询
```
GET   ${website}/ic/v1/product/deals
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| currency|   String|  币种 不是必须|
| client|   int|  客户端Id 本接口暂未使用|
| website|   int|  站点Id 必须 |
| lang|   int|   语言 1 en  不是必须|
| cpath|   String|   品类路径  不是必须|
| page|   int|   页数 默认为1 不是必须|
| size|   int|  大小 默认为10  不是必须|
| sort|   String|  排序 默认为（newest：创建折扣时间）,（hottest：根据销量降序 上架时间升序）， （ price：价格从低到高 ），（discount：折扣从高到低）|
```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "pblist": [
            {
                "title": "Portable Flexible Roll Up Piano Electronic Soft Keyboard Piano 49 Keys",
                "url": "portable-flexible-roll-up-piano-electronic-soft-keyboard-piano-49-keys-i977",
                "imageUrl": "p/gu1/I/I977/I977-1-97ff.jpg",
                "dlist": [
                    {
                        "depotId": 1,
                        "depotName": "CN",
                        "lid": 12,
                        "status": 1,
                        "qty": 995,
                        "symbol": "US$",
                        "nowprice": "13.86",
                        "origprice": "15.23",
                        "saleEndDate": "2016-05-25 23:59:59",
                        "freeShipping": false
                    },
                    {
                        "depotId": 3,
                        "depotName": "GB",
                        "lid": 18,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "15.23",
                        "origprice": "15.23",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 4,
                        "depotName": "IT",
                        "lid": 1,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "15.23",
                        "origprice": "15.23",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 5,
                        "depotName": "DE",
                        "lid": 14,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "15.23",
                        "origprice": "15.23",
                        "saleEndDate": "",
                        "freeShipping": false
                    },
                    {
                        "depotId": 7,
                        "depotName": "AU",
                        "lid": 1,
                        "status": 1,
                        "qty": 1000,
                        "symbol": "US$",
                        "nowprice": "15.23",
                        "origprice": "15.23",
                        "saleEndDate": "",
                        "freeShipping": false
                    }
                ],
                "listingId": "195c7407-9149-4e62-9c74-079149ee6206",
                "sku": "I977",
                "collectNum": 1,
                "reviewCount": null,
                "avgScore": null
            }
        ],
        "aggsMap": {},
        "page": {
            "totalRecord": 749,
            "totalPage": 749,
            "startRec": 0,
            "endRec": 1,
            "currentPage": 1,
            "pageSize": 1
        }
    }
}