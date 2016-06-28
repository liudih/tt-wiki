Order接口文档

UAT测试地址：cart.chicuu.com
---------
#### 1.获取订单所有状态
```

GET   ${website}/order/status
```

-----
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| site|   Integer| 站点id                                |
| email|   String| 会员邮箱                             |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "all": 332,
        "pending": 237,
        "confirmed": 83,
        "onHold": 0,
        "processing": 0,
        "dispatched": 1,
        "cancelled": 0,
        "refunded": 2,
        "recycle": 0
    }
}
```
------------------------------------------------
---------
#### 2.获取用户订单
```

GET   ${website}/order/orderlist
```

-----
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| siteId|   Integer| 站点id                                |
| lang|   Integer| 语言id                                |
| email|   String| 会员邮箱                             |
| pageNum|   Integer| 当前页                             |
| pageSize|   Integer| 每页数量                             |
| productName|   String| 产品名称                             |
| status|   Integer| 状态id                             |
| interval|   Integer| 间隔月数，最近几个月的订单                             |
| isShow|   Integer| 可见性:1.可见(默认),2.回收站可见,3.不可见                           |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": "1",
    "errMsg": "",
    "data": [
        {
            "order": {
                "iid": 5099,
                "cemail": "",
                "istorageid": null,
                "ishippingmethodid": null,
                "fshippingprice": null,
                "fordersubtotal": null,
                "fgrandtotal": 3618.43,
                "istatus": 2,
                "cpaymentid": "paypal",
                "ccurrency": "USD",
                "dcreatedate": 1457638572864,
                "dpaymentdate": null,
                "iwebsiteid": 1,
                "cmemberemail": null,
                "cmessage": "",
                "ishow": 1,
                "ctransactionid": null,
                "cip": null,
                "cremark": null,
                "creceiveraccount": null,
                "cshippingcode": null,
                "cordernumber": "AN16C11K3849-JKKUNX",
                "cvhost": null,
                "ipaymentstatus": null,
                "cpaymenttype": null,
                "createDateStr": "2016-03-11 03:36:12",
                "fordersubtotalStr": "",
                "fgrandtotalStr": "3,618.43"
            },
            "orderItems": [
                {
                    "cid": "3570d74e-8f06-40c0-87ed-bc4cb2722af6",
                    "cparentId": null,
                    "clistingid": "1867264c-d94e-1004-8b78-22911221aeb5",
                    "ctitle": "Abody 15ml Soak Off Nail Gel Polish Nail Art Professional Shellac Lacquer Manicure UV Lamp & LED 177 Colors 1529",
                    "cimageurl": "p/gu1/H/H11361BL-10/H11361BL-10-9-9ee3.jpg",
                    "curl": "Abody-15ml-Soak-Off-Nail-Gel-Polish-Nail-Art-Professional-Shellac-Lacquer-Manicure-UV-Lamp-LED-177-Colors-1529-H11361BL-10",
                    "iqty": 999,
                    "unitPrice": 1.86,
                    "totalPrice": 1858.14,
                    "bismain": true,
                    "dcreatedate": 1457638572916,
                    "sku": "H11361BL-10",
                    "childList": [],
                    "originalPrice": 1.86,
                    "attributeMap": {
                        "color": "1529"
                    },
                    "weight": 66,
                    "orderid": 5099,
                    "review": false
                },
                {
                    "cid": "c9a229f1-561e-4b81-91a2-ae8726ea99bc",
                    "cparentId": null,
                    "clistingid": "f6bcb214-d94d-1004-8ce2-70e36be5c01e",
                    "ctitle": "Women's Lady Fleece Parka Coat Zip Overcoat Long Jacket Warm",
                    "cimageurl": "p/gu1/G/G0082B-L/G0082B-L-1-d930.jpg",
                    "curl": "Womens-Lady-Fleece-Parka-Coat-Zip-Overcoat-Long-Jacket-Warm-G0082B-L",
                    "iqty": 1,
                    "unitPrice": 17.85,
                    "totalPrice": 17.85,
                    "bismain": true,
                    "dcreatedate": 1457638572916,
                    "sku": "G0082B-L",
                    "childList": [],
                    "originalPrice": 17.85,
                    "attributeMap": {
                        "size": "L",
                        "color": "black"
                    },
                    "weight": 840,
                    "orderid": 5099,
                    "review": false
                }
            ],
            "currency": {
                "iid": 1,
                "ccode": "USD",
                "csymbol": "US$",
                "fexchangerate": 1,
                "ccreateuser": "reason",
                "dcreatedate": 1426079654170
            },
            "orderStatus": "Payment Confirmed",
            "trackingNumber": "RI002020203CN"
        }
    ],
    "page": {
        "totalRecord": 148,
        "totalPage": 148,
        "startRec": 0,
        "endRec": 1,
        "currentPage": 1,
        "pageSize": 1
    }
}
```
------------------------------------------------
---------
#### 3.删除订单
```

PUT   ${website}/order/delorders
```

-----
 Parameters

```
{
 email: "test@test.com",
 siteId: 1,
 orderNumbers: ["AG15J07K2236-L2E1LG","fgh234"],
 type:1
}
```
```
type为删除的类型，1：普通删除（默认可以不填），2：回收站删除，3：回收站恢复
```
--
Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": "success"
}
```

---------
#### 4.获取订单详情
```

GET   ${website}/order/orderdetail
```

-----
 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| siteId|   Integer| 站点id                                |
| lang|   Integer| 语言id                                |
| email|   String| 会员邮箱                             |
| orderNumber|   String| 订单号                             |


 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": "1",
    "errCode": "",
    "errMsg": "",
    "data": {
        "symbol": "JP¥",
        "point": 0,
        "orderStatusHistoryMap": {
            "Dispatched": {
                "iorderid": 1,
                "istatus": 6,
                "dcreatedate": 1450830820348
            },
            "Payment Pending": {
                "iorderid": 1,
                "istatus": 1,
                "dcreatedate": 1437529492353
            },
            "Payment Processing": {
                "iorderid": 1,
                "istatus": 9,
                "dcreatedate": 1453168315655
            }
        },
        "orderStatus": "Dispatched",
        "shippingMethodInfo": {
            "title": "SurfaceType",
            "description": "By Airmail,without tracking numbe"
        },
        "orderItems": [
            {
                "cid": "d710cc79-cbb9-45ff-90cc-79cbb9b5ff3a",
                "cparentId": null,
                "clistingid": "0073dd3d-d914-1004-874c-d371c9ab96c0",
                "ctitle": "Universal General Guitar Acoustic Clip-line Pickup Pick up",
                "cimageurl": "p/tt/1/2/12710664920.jpg",
                "curl": "universal-general-guitar-acoustic-clip-line-pickup-pick-up-i9",
                "iqty": 1,
                "unitPrice": 2.6,
                "totalPrice": 2.6,
                "bismain": true,
                "dcreatedate": 1437529492141,
                "sku": "I9",
                "childList": [],
                "originalPrice": 2.64,
                "attributeMap": {},
                "weight": 39,
                "orderid": 1,
                "review": false
            },
            {
                "cid": "029ee355-4cba-4b54-9ee3-554cba2b549a",
                "cparentId": null,
                "clistingid": "0486b340-d914-1004-874c-d371c9ab96c0",
                "ctitle": "Pair LED Under Side Mirror Lamps for VW Golf 6 Cabriolet Passat (B7) Touran",
                "cimageurl": "p/tt/k/1/k1743-2-8aa2.jpg",
                "curl": "pair-led-under-side-mirror-lamps-for-vw-golf-6-cabriolet-passat-b7-touran-k1743",
                "iqty": 1,
                "unitPrice": 20.36,
                "totalPrice": 20.36,
                "bismain": true,
                "dcreatedate": 1437529492141,
                "sku": "K1743",
                "childList": [],
                "originalPrice": 27.8,
                "attributeMap": {},
                "weight": 103,
                "orderid": 1,
                "review": false
            }
        ],
        "trackingNumber": "",
        "order": {
            "iid": 1,
            "cemail": "test@test.com",
            "ccountry": "United States Of America",
            "ccountrysn": "US",
            "cprovince": "000",
            "ccity": "000",
            "cstreetaddress": "000",
            "cpostalcode": "000",
            "ctelephone": "000",
            "cfirstname": "000",
            "cmiddlename": null,
            "clastname": null,
            "istorageid": 1,
            "ishippingmethodid": 613,
            "fshippingprice": 1.19,
            "fordersubtotal": 22.96,
            "fextra": 0,
            "fgrandtotal": 24.15,
            "ccartid": null,
            "istatus": 6,
            "cpaymentid": "paypal",
            "ccurrency": "JPY",
            "dcreatedate": 1437529492001,
            "dpaymentdate": 1450720508828,
            "corigin": "A007",
            "iwebsiteid": 1,
            "cmemberemail": "test@test.com",
            "cmessage": null,
            "ishow": 2,
            "ctransactionid": "151216120037140105620",
            "cip": "0:0:0:0:0:0:0:1",
            "cremark": null,
            "creceiveraccount": "wholesale@tomtop.com",
            "cshippingcode": "P",
            "cordernumber": "AG15J07K2236-L2E1LG",
            "cvhost": "192.168.7.13",
            "ipaymentstatus": 1,
            "cpaymenttype": null,
            "cdropshippingid": null,
            "createDateStr": "2015-07-22 09:44:52",
            "fordersubtotalStr": "23",
            "fgrandtotalStr": "24"
        }
    }
}
```

---------
#### 5. 获取单个商品价格
```

GET   ${website}/order/price
```

-----
 Parameters


|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingid|   String| 产品listingid                                |
| currency|   String| 货币符号                           |
| qty|   Integer| 数量                           |
| storageid|   Integer| 仓库id                           |
```

 Response  如果成功返回

```
Status: 200 OK

```
{
    "ret": "1",
    "data": {
        "spec": {
            "listingID": "00cd8c91-d914-1004-874c-d371c9ab96c0",
            "qty": 1
        },
        "unitBasePrice": 11.97,
        "unitBasePriceStr": "11.97",
        "unitPrice": 11.97,
        "unitPriceStr": "11.97",
        "unitCost": 5.33,
        "discount": null,
        "validFrom": null,
        "validTo": null,
        "currency": "USD",
        "symbol": "US$",
        "rate": 1,
        "lossAllowed": false,
        "discountOption": null,
        "validFromOption": null,
        "quantity": 1,
        "priceStr": "11.97",
        "validToOption": null,
        "discounted": false,
        "discountStr": "",
        "price": 11.97,
        "listingId": "00cd8c91-d914-1004-874c-d371c9ab96c0"
    }
}
```

---------
#### 6. 根据产品ID与邮箱查询未评论的订单ID
```

GET   ${website}/order/withoutcomment
```

-----
 Parameters


|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String| 会员邮箱                           |
| listingid|   String| 产品listingid                                |
 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": "1",
    "data": "3"
}
```