cart接口文档

UAT测试地址：cart.chicuu.com
---------
#### 1.添加商品到购物车
```

POST   ${website}/cart-api/savecartitem
```

-----
 Parameters

```
[{
  "clistingid":"00cd8c91-d914-1004-874c-d371c9ab96c0",
  "qty":1,
  "storageid":1
}]

```
clistingid:商品id，qty：数量，storageid：仓库id
 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": "1"
}
```
------------------------------------------------
#### 2.获取所有购物车
```

GET  ${website}/cart-api/cartitem
```

-----
 Parameters
           |


 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": "1",
    "errCode": null,
    "errMsg": null,
    "data": {
        "1": [
            {
                "id": null,
                "clistingid": "00cd8c91-d914-1004-874c-d371c9ab96c0",
                "ctitle": "Outdoor Solar Powered LED Spotlight Garden Pool Waterproof Spot Light Lamp",
                "cimageurl": "p/tt/h/8/h8855-1-ac53.jpg",
                "curl": "outdoor-solar-powered-led-spotlight-garden-pool-waterproof-spot-light-lamp-h8855",
                "iqty": 1,
                "price": {
                    "spec": {
                        "listingID": "00cd8c91-d914-1004-874c-d371c9ab96c0",
                        "qty": 1
                    },
                    "unitBasePrice": 77,
                    "unitBasePriceStr": "77.00",
                    "unitPrice": 77,
                    "unitPriceStr": "77.00",
                    "unitCost": 5.33,
                    "discount": null,
                    "validFrom": null,
                    "validTo": null,
                    "currency": "USD",
                    "symbol": "US$",
                    "rate": 1,
                    "lossAllowed": false,
                    "quantity": 1,
                    "priceStr": "77.00",
                    "validToOption": null,
                    "discounted": false,
                    "discountStr": "",
                    "listingId": "00cd8c91-d914-1004-874c-d371c9ab96c0",
                    "discountOption": null,
                    "validFromOption": null,
                    "price": 77
                },
                "sku": "H8855",
                "storageID": 1,
                "istatus": 1,
                "iitemtype": 1
            }
        ]
    }
}
```
------------------------------------------------

------------------------------------------------
#### 3.删除购物车
```

POST   ${website}/cart-api/delcartitem
```

-----
 Parameters
```
[{
  "clistingid":"00cd8c91-d914-1004-874c-d371c9ab96c0",
  "qty":1,
  "storageid":1
}]

```


 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": "1"
}
```
------------------------------------------------

