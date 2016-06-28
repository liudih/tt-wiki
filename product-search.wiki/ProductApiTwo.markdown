产品接口文档--20160408

UAT测试地址：http://192.168.220.53:8004/
反向代理地址(HOST):http://192.168.220.56 --> http://product.api.tomtop.com
---------
#### 1.获取每日倒计时商品
```
GET   /ic/v2/home/dailyDeal
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int    | 客户端ID|
| website|   int    | 站点ID                               |
| lang|   int    | 语言ID  默认为 1                                |
| currency|   String    | 货币    默认为 USD                             |
| depotName|   String    | 仓库名称 默认为 CN                             |
| date|   int    | 日期   格式为 yyyy/MM/dd                           |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "title": "Men's Canvas Vintage Crossbody Satchel Shoulder Casual Messenger School Book Bag Black",
            "url": "Mens-Canvas-Vintage-Crossbody-Satchel-Shoulder-Casual-Messenger-School-Book-Bag-Black-H9653B",
            "imageUrl": "p/tt/h/9/h9653b-13-b30d.jpg",
            "symbol": "US$",
            "nowprice": "77.00",
            "origprice": "77.00",
            "listingId": "d4f96f4e-d929-1004-835b-90389054983d",
            "sku": "H9653B",
            "discount": 44.91
        },
        {
            "title": "Zirconia Ceramic Kitchen knife Set 3\" 4\" 5\" 6\" inch with Blue Flower Printed + Peeler + Holder",
            "url": "zirconia-ceramic-kitchen-knife-set-3-4-5-6-inch-with-blue-flower-printed-peeler-holder-h11768bl",
            "imageUrl": "p/tt/h/1/h11768bl-2-1818.jpg",
            "symbol": "US$",
            "nowprice": "77.00",
            "origprice": "77.00",
            "listingId": "009b6536-d914-1004-874c-d371c9ab96c0",
            "sku": "H11768BL",
            "discount": 16
        }
    ]
}
```
#### 2.获取品类精选商品
```
GET   /ic/v2/home/fcategorycontents
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int    | 客户端ID|
| website|   int    | 站点ID                               |
| lang|   int    | 语言ID  默认为 1                                |
| currency|   String    | 货币    默认为 USD                             |
| depotName|   String    | 仓库名称 默认为 CN                             |
| fcategoryid|   int    | 品类id                           |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "skus": [
            {
                "title": "17\"-28\" 11 Levels Adjustable Spring Return Telescopic Portable Sniper Hunting Rifle Bipod Sling Swivel Mount",
                "url": "1728-11-Levels-Adjustable-Spring-Return-Telescopic-Portable-Sniper-Hunting-Rifle-Bipod-Sling-Swivel-Mount-Y0449",
                "imageUrl": "p/gu1/Y/Y0449/Y0449-3-18ac.JPG",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "bbd37774-d947-1004-83c4-7fc7a122875c",
                "sku": "Y0449",
                "sort": 2
            },
            {
                "title": "50L Waterproof Outdoor Sport Hiking Trekking Camping Travel Backpack Pack Mountaineering Climbing Knapsack with Rain Cover",
                "url": "50l-waterproof-outdoor-sport-hiking-trekking-camping-travel-backpack-pack-mountaineering-climbing-knapsack-with-rain-cover-y0888b",
                "imageUrl": "p/gu1/Y/Y0888B/Y0888B-2-0def.jpg",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "cc4fadd8-bf2c-4cc7-8fad-d8bf2c2cc736",
                "sku": "Y0888B",
                "sort": 3
            }
        ],
        "keys": [
            {
                "keyword": "Test-Equipment-Tools",
                "sort": 1
            }
        ],
        "banners": [
            {
                "positionId": 2,
                "url": "http://www.tomtop.com/Sports-Outdoor/Camping-Hiking",
                "imgUrl": "http://img.tomtop-cdn.com/file/fast/web1/M00/7A/77/Cm2BPlal-rmAD6FeAADPWWp7pAI901.jpg",
                "title": "t3",
                "sort": 1
            },
            {
                "positionId": 4,
                "url": "http://www.tomtop.com/Sports-Outdoor/Fishing/Fishing-Reels",
                "imgUrl": "http://img.tomtop-cdn.com/file/fast/web1/M00/6C/32/Cm2BJFal-0iAfd9FAAArxD1TMtY284.jpg",
                "title": "t3",
                "sort": 1
            }
        ]
    }
}
```
#### 3.最近历史订单的商品
```
GET  /ic/v2/home/recent_orders
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int    | 客户端ID|
| website|   int    | 站点ID                               |
| lang|   int    | 语言ID  默认为 1                                |
| currency|   String    | 货币    默认为 USD                             |
| depotName|   String    | 仓库名称 默认为 CN                             |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "title": "Rechargeable Waterproof 300M 100LV LCD Remote Dog Pet Training Collar Shock Vibrate for 1 Dog",
            "url": "rechargeable-waterproof-300m-100lv-lcd-remote-dog-pet-training-collar-shock-vibrate-for-1-dog-h9378us",
            "imageUrl": "p/tt/h/9/h9378us-7-4d65.jpg",
            "symbol": "US$",
            "nowprice": "77.00",
            "origprice": "77.00",
            "listingId": "00ac0954-d914-1004-874c-d371c9ab96c0",
            "sku": "H9378US",
            "country": "Spain"
        },
        {
            "title": "Watch Repair Glasses Eyewear Magnifier Loupe with LED 10X 15X 20X 25X",
            "url": "watch-repair-glasses-eyewear-magnifier-loupe-with-led-10x-15x-20x-25x-h10196",
            "imageUrl": "/images/H/H10196/H10196-3-bad8.jpg",
            "symbol": "US$",
            "nowprice": "77.00",
            "origprice": "77.00",
            "listingId": "98734ae4-d941-1004-8d00-f7eee594cf91",
            "sku": "H10196",
            "country": "Portugal"
        }
    ]
}
```
#### 4.首页 TOP-SELLERS、 NEW-ARRIVALS、MOREITEM-TO-CONSIDER 商品
```
GET  /ic/v3/layout/module/contents
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int    | 客户端ID|
| website|   int    | 站点ID                               |
| lang|   int    | 语言ID  默认为 1                                |
| currency|   String    | 货币    默认为 USD                             |
| depotName|   String    | 仓库名称 默认为 CN                             |
| layoutcode|   String    | 布局名称 默认为 HOME                             |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "NEW-ARRIVALS": [
            {
                "title": "Fashion Women Lady Sexy Lace Skater Dress Half Sleeve Scoop Neck Wine Red/ Burgundy",
                "url": "Fashion-Women-Lady-Sexy-Lace-Skater-Dress-Half-Sleeve-Scoop-Neck-Wine-Red-Burgundy-G0157BU-M",
                "imageUrl": "p/gu1/G/G0157BU-M/G0157BU-M-1-5ffc.jpg",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "d9268ca8-d929-1004-835b-90389054983d",
                "sku": "G0157BU-M",
                "sort": 12,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "New Fashion Women Handbag PU Leather Solid Color Vintage Shoulder Crossbody Bag Black/Dark Blue/Red",
                "url": "New-Fashion-Women-Handbag-PU-Leather-Solid-Color-Vintage-Shoulder-Crossbody-Bag-BlackDark-BlueRed-B0011B",
                "imageUrl": "p/tt/b/0/b0011b-8-6bcd.jpg",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "d82ec9b5-d929-1004-835b-90389054983d",
                "sku": "B0011B",
                "sort": 13,
                "reviewCount": null,
                "avgScore": null
            }
        ],
        "TOP-SELLERS": [
            {
                "title": "Fashion Women Shoulder Bag Clock Print Front PU Leather Zipper Closure Round Crossbody Bag White/Black/Khaki",
                "url": "Fashion-Women-Shoulder-Bag-Clock-Print-Front-PU-Leather-Zipper-Closure-Round-Crossbody-Bag-WhiteBlackKhaki-B0066B",
                "imageUrl": "p/tt/b/0/b0066b-3-c51a.jpg",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "ba4bbfd5-d94b-1004-8e94-e28c2631ebc7",
                "sku": "B0066B",
                "sort": 1,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "Ergonomics Design Speaker 3202 Wired Audio Music Multifunctional Mouse Optical Mice Computer Accessories for Laptop PC",
                "url": "new-ergonomics-design-speaker-3202-wired-audio-music-multifunctional-mouse-optical-mice-computer-accessories-for-laptop-pc-c2055",
                "imageUrl": "product/xy/500/500/p/tt/y/0/y0314-3-0b3c.jpg",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "00a4d40d-d914-1004-874c-d371c9ab96c0",
                "sku": "C2055",
                "sort": 2,
                "reviewCount": null,
                "avgScore": null
            }
        ],
        "MOREITEM-TO-CONSIDER": [
            {
                "title": "Mirror Digital Clock Hidden Camera Motion Detection Mini DV DVR Video Security",
                "url": "mirror-digital-clock-hidden-camera-motion-detection-mini-dv-dvr-video-security-h10168",
                "imageUrl": "p/tt/h/1/h10168-4-085d.jpg",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "00677384-d914-1004-874c-d371c9ab96c0",
                "sku": "H10168",
                "sort": 1,
                "reviewCount": null,
                "avgScore": null
            },
            {
                "title": "Hantek 6022BL PC Based USB Digital Storage Oscilloscope Generator 20MHz Bandwidth 16CH Logic Analyzer 48MSa/s",
                "url": "hantek-6022bl-pc-based-usb-digital-storage-oscilloscope-generator-20mhz-bandwidth-16ch-logic-analyzer-48msas-e0610",
                "imageUrl": "p/gu1/E/E0610/E0610-1-b3ee.jpg",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "b027c4c6-19a6-4817-a7c4-c619a67817db",
                "sku": "E0610",
                "sort": 1,
                "reviewCount": null,
                "avgScore": null
            }
        ]
    }
}

```
#### 5.根据listingId获取商品信息
```
GET  /ic/v2/products/{listingId}
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int    | 客户端ID|
| website|   int    | 站点ID                               |
| lang|   int    | 语言ID  默认为 1                                |
| currency|   String    | 货币    默认为 USD                             |
| depotName|   String    | 仓库名称 默认为 CN                             |
| listingId|   String    |   替换 {listingId}                         |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "title": "Fashion Women Lady Sexy Lace Skater Dress Half Sleeve Scoop Neck Wine Red/ Burgundy",
        "url": "Fashion-Women-Lady-Sexy-Lace-Skater-Dress-Half-Sleeve-Scoop-Neck-Wine-Red-Burgundy-G0157BU-M",
        "imageUrl": "p/gu1/G/G0157BU-M/G0157BU-M-1-5ffc.jpg",
        "symbol": "US$",
        "nowprice": "77.00",
        "origprice": "77.00",
        "listingId": "d9268ca8-d929-1004-835b-90389054983d",
        "sku": "G0157BU-M"
    }
}

```
#### 6.根据多个listingId获取商品信息集合
```
GET  /ic/v2/products
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int    | 客户端ID|
| website|   int    | 站点ID                               |
| lang|   int    | 语言ID  默认为 1                                |
| currency|   String    | 货币    默认为 USD                             |
| depotName|   String    | 仓库名称 默认为 CN                             |
| listingIds|   String    |     多个listingId用,逗号分隔                       |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "title": "Fashion Women Lady Sexy Lace Skater Dress Half Sleeve Scoop Neck Wine Red/ Burgundy",
            "url": "Fashion-Women-Lady-Sexy-Lace-Skater-Dress-Half-Sleeve-Scoop-Neck-Wine-Red-Burgundy-G0157BU-M",
            "imageUrl": "p/gu1/G/G0157BU-M/G0157BU-M-1-5ffc.jpg",
            "symbol": "US$",
            "nowprice": "77.00",
            "origprice": "77.00",
            "listingId": "d9268ca8-d929-1004-835b-90389054983d",
            "sku": "G0157BU-M"
        },
        {
            "title": "New Fashion Women Handbag PU Leather Solid Color Vintage Shoulder Crossbody Bag Black/Dark Blue/Red",
            "url": "New-Fashion-Women-Handbag-PU-Leather-Solid-Color-Vintage-Shoulder-Crossbody-Bag-BlackDark-BlueRed-B0011B",
            "imageUrl": "p/tt/b/0/b0011b-8-6bcd.jpg",
            "symbol": "US$",
            "nowprice": "77.00",
            "origprice": "77.00",
            "listingId": "d82ec9b5-d929-1004-835b-90389054983d",
            "sku": "B0011B"
        }
    ]
}
```
#### 7.购物车获取商品信息
```
GET  /ic/v2/product/shoppingCart
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int    | 客户端ID|
| website|   int    | 站点ID                               |
| lang|   int    | 语言ID  默认为 1                                |
| currency|   String    | 货币    默认为 USD                             |
| listings|   String    | 的以json数组传值,示例:[{"listingId":"006a0cc8-d914","num":2,"depotId":1},"listingId":"006a0cc8-d9","num":3,"depotId":1}]                    |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "2": [
            {
                "title": "iMAX B6-AC B6AC Lipo NiMH 3S RC Battery Balance Charger",
                "url": "imax-b6-ac-b6ac-lipo-nimh-3s-rc-battery-balance-charger-rm165",
                "imageUrl": "p/gu1/R/RM165/RM165-6-9d77.jpg",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "00731bd7-d914-1004-874c-d371c9ab96c0",
                "sku": "RM165",
                "num": 1
            }
        ],
        "5": [
            {
                "title": "iMAX B6-AC B6AC Lipo NiMH 3S RC Battery Balance Charger",
                "url": "imax-b6-ac-b6ac-lipo-nimh-3s-rc-battery-balance-charger-rm165",
                "imageUrl": "p/gu1/R/RM165/RM165-6-9d77.jpg",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "00731bd7-d914-1004-874c-d371c9ab96c0",
                "sku": "RM165",
                "num": 1
            }
        ]
    }
}
```
#### 8.首页youMayLike recommend
```
GET  /ic/v3/product/youMayLike
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int    | 客户端ID|
| website|   int    | 站点ID                               |
| lang|   int    | 语言ID  默认为 1                                |
| currency|   String    | 货币    默认为 USD                             |
| depotName|   String    | 仓库名称 默认为 CN                             |
| listingId|   String    | 商品的listingId                    |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "title": "Europe Fashion Women PU Handbag Ribbon Handle Lock Tote Shoulder Messenger Bag Black",
            "url": "Europe-Fashion-Women-PU-Handbag-Ribbon-Handle-Lock-Tote-Shoulder-Messenger-Bag-Black-H12331B",
            "imageUrl": "p/tt/h/1/h12331b-4-a21a.jpg",
            "symbol": "US$",
            "nowprice": "77.00",
            "origprice": "77.00",
            "listingId": "d6561a49-d929-1004-835b-90389054983d",
            "sku": "H12331B",
            "collectNum": 4,
            "reviewCount": null,
            "avgScore": null
        },
        {
            "title": "Fashion Women Fringe Tassel Shoulder Bag Cross-body Bag Messenger Handbag Black",
            "url": "Fashion-Women-Fringe-Tassel-Shoulder-Bag-Crossbody-Bag-Messenger-Handbag-Black-H10989B",
            "imageUrl": "p/tt/h/1/h10989b-7-be47.jpg",
            "symbol": "US$",
            "nowprice": "77.00",
            "origprice": "77.00",
            "listingId": "d7783f3c-d929-1004-835b-90389054983d",
            "sku": "H10989B",
            "collectNum": 0,
            "reviewCount": null,
            "avgScore": null
        }
     ]
}

```
#### 9.详情页alsoViewed
```
GET  /ic/v3/product/alsoViewed
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int    | 客户端ID|
| website|   int    | 站点ID                               |
| lang|   int    | 语言ID  默认为 1                                |
| currency|   String    | 货币    默认为 USD                             |
| depotName|   String    | 仓库名称 默认为 CN                             |
| listingId|   String    | 商品的listingId                    |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "title": "Europe Fashion Women PU Handbag Ribbon Handle Lock Tote Shoulder Messenger Bag Black",
            "url": "Europe-Fashion-Women-PU-Handbag-Ribbon-Handle-Lock-Tote-Shoulder-Messenger-Bag-Black-H12331B",
            "imageUrl": "p/tt/h/1/h12331b-4-a21a.jpg",
            "symbol": "US$",
            "nowprice": "77.00",
            "origprice": "77.00",
            "listingId": "d6561a49-d929-1004-835b-90389054983d",
            "sku": "H12331B",
            "collectNum": 4,
            "reviewCount": null,
            "avgScore": null
        },
        {
            "title": "Fashion Women Fringe Tassel Shoulder Bag Cross-body Bag Messenger Handbag Black",
            "url": "Fashion-Women-Fringe-Tassel-Shoulder-Bag-Crossbody-Bag-Messenger-Handbag-Black-H10989B",
            "imageUrl": "p/tt/h/1/h10989b-7-be47.jpg",
            "symbol": "US$",
            "nowprice": "77.00",
            "origprice": "77.00",
            "listingId": "d7783f3c-d929-1004-835b-90389054983d",
            "sku": "H10989B",
            "collectNum": 0,
            "reviewCount": null,
            "avgScore": null
        }
     ]
}
```
#### 10.详情页alsoBought
```
GET  /ic/v3/product/alsoBought
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int    | 客户端ID|
| website|   int    | 站点ID                               |
| lang|   int    | 语言ID  默认为 1                                |
| currency|   String    | 货币    默认为 USD                             |
| depotName|   String    | 仓库名称 默认为 CN                             |
| listingId|   String    | 商品的listingId                    |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "title": "Europe Fashion Women PU Handbag Ribbon Handle Lock Tote Shoulder Messenger Bag Black",
            "url": "Europe-Fashion-Women-PU-Handbag-Ribbon-Handle-Lock-Tote-Shoulder-Messenger-Bag-Black-H12331B",
            "imageUrl": "p/tt/h/1/h12331b-4-a21a.jpg",
            "symbol": "US$",
            "nowprice": "77.00",
            "origprice": "77.00",
            "listingId": "d6561a49-d929-1004-835b-90389054983d",
            "sku": "H12331B",
            "collectNum": 4,
            "reviewCount": null,
            "avgScore": null
        },
        {
            "title": "Fashion Women Fringe Tassel Shoulder Bag Cross-body Bag Messenger Handbag Black",
            "url": "Fashion-Women-Fringe-Tassel-Shoulder-Bag-Crossbody-Bag-Messenger-Handbag-Black-H10989B",
            "imageUrl": "p/tt/h/1/h10989b-7-be47.jpg",
            "symbol": "US$",
            "nowprice": "77.00",
            "origprice": "77.00",
            "listingId": "d7783f3c-d929-1004-835b-90389054983d",
            "sku": "H10989B",
            "collectNum": 0,
            "reviewCount": null,
            "avgScore": null
        }
     ]
}
```
#### 11.详情页热门商品hot
```
GET  ic/v2/product/hot
```
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| client|   int    | 客户端ID|
| website|   int    | 站点ID                               |
| lang|   int    | 语言ID  默认为 1                                |
| currency|   String    | 货币    默认为 USD                             |
| depotName|   String    | 仓库名称 默认为 CN                             |
| size|   String    | 获取大小,默认5个                    |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "title": "4pcs 3D Printed Bedding Set Bedclothes Purple Lavender Queen Size Duvet Cover+Bed Sheet+2 Pillowcases Home Textiles",
            "url": "casual-dresses/p_106665",
            "imageUrl": "p/gu1/H/H14881/H14881-8-ab3b.jpg",
            "symbol": "US$",
            "nowprice": "0.00",
            "origprice": "0.00",
            "listingId": "321c0cf3-0abe-48e2-9c0c-f30abee8e280",
            "sku": "H14881"
        },
        {
            "title": "21\" Ukelele Ukulele Basswood 4 Nylon Strings with Colorful Pattern Stringed Instrument Kid's Musical Toy",
            "url": "21-Ukelele-Ukulele-Basswood-4-Nylon-Strings-with-Colorful-Pattern-Stringed-Instrument-Kids-Musical-Toy-I866-4",
            "imageUrl": "p/gu1/I/I866-4/I866-4-1-21b4.jpg",
            "symbol": "US$",
            "nowprice": "77.00",
            "origprice": "77.00",
            "listingId": "bfadaa58-d94d-1004-82fb-43e94bfee600",
            "sku": "I866-4"
        }
    ]
}