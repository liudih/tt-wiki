------------
UAT测试地址：http://192.168.220.53:8004/
反向代理地址: http://product.api.tomtop.com
---------
#### 1.根据listingIds获取是否促销和标签
```
GET   ${website}/ic/v1/call/product/lable/{listingIds}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingIds|   List<String>    | 多个listingId 逗号分隔拼接在lable/后面|
| lang|   int| 语言Id 默认为1                       |
| client|   int|客户端Id 默认为1                     |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "0cb0e577-d914-1004-874c-d371c9ab96c0": {
            "sku": "PA1724",
            "lables": [],
            "categoryIds": [
                1,
                35,
                43
            ]
        },
        "008bcfc6-d914-1004-874c-d371c9ab96c0": {
            "sku": "H10868",
            "lables": [],
            "categoryIds": [
                806,
                807,
                813
            ]
        },
        "00ae53b6-d914-1004-874c-d371c9ab96c0": {
            "sku": "H11977",
            "lables": [],
            "categoryIds": [
                842,
                806,
                835
            ]
        },
        "1156270c-d946-1004-81b8-4b94b504fa92": {
            "sku": "H9069",
            "lables": [
                "hot"
            ],
            "categoryIds": [
                864,
                983,
                998
            ]
        }
    }
}
```
#### 2.根据listingIds获取是否促销和标签 .V2
```
GET   ${website}/ic/v2/call/product/lable/{listingIds}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingIds|   List<String>    | 多个listingId 逗号分隔拼接在lable/后面|
| lang|   int| 语言Id 默认为1                       |
| client|   int|客户端Id 默认为1                     |
| depotId|   int|仓库Id 默认为1                     |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "0cb0e577-d914-1004-874c-d371c9ab96c0": {
            "sku": "PA1724",
            "lables": [],
            "categoryIds": [
                1,
                35,
                43
            ]
        },
        "008bcfc6-d914-1004-874c-d371c9ab96c0": {
            "sku": "H10868",
            "lables": [],
            "categoryIds": [
                806,
                807,
                813
            ]
        },
        "00ae53b6-d914-1004-874c-d371c9ab96c0": {
            "sku": "H11977",
            "lables": [],
            "categoryIds": [
                842,
                806,
                835
            ]
        },
        "1156270c-d946-1004-81b8-4b94b504fa92": {
            "sku": "H9069",
            "lables": [
                "hot"
            ],
            "categoryIds": [
                864,
                983,
                998
            ]
        }
    }
}
```
#### 3.给订单商品获取详情
```
GET   ${website}/ic/v1/order/product
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingIds|   List<String>    | 多个listingId 逗号分隔拼接|
| lang|   int| 语言Id 默认为1                       |
| website|   int|站点Id 默认为1                     |
| depotId|   int|仓库Id 默认为1                     |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "title": "RGB 7 Color Changing LED Shower Head Sprinkler Automatic Control Handheld",
            "url": "rgb-7-color-changing-led-shower-head-sprinkler-automatic-control-handheld-h8474",
            "imageUrl": "/images/H/H8474/H8474-6-e403.JPG",
            "listingId": "00ba1d9f-d914-1004-874c-d371c9ab96c0",
            "sku": "H8474",
            "attributeMap": {},
            "status": 1
        },
        {
            "title": "New Vintage Women Shoulder Bag PU Leather Colorful Print Crossbody Messenger Bag Handbag Dark Blue",
            "url": "new-vintage-women-shoulder-bag-pu-leather-colorful-print-crossbody-messenger-bag-handbag-dark-blue-h12385db",
            "imageUrl": "p/tt/h/1/h12385db-19-ea31.jpg",
            "listingId": "0094d847-d914-1004-874c-d371c9ab96c0",
            "sku": "H12385DB",
            "attributeMap": {},
            "status": 1
        }
    ]
}