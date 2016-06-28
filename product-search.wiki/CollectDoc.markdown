------------
UAT测试地址：http://192.168.220.53:8004/
反向代理地址: http://product.api.tomtop.com
---------
#### 1.获取用户收藏商品详细
```
GET   ${website}/ic/v1/user/collect
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   int    | 用户邮箱                               |
| categoryId|   int    | 品类id  不是必须,默认为=0                                |
| sort|   String    | 排序 升序：priceAsc  降序：priceDesc 默认为空                     |
| productKey|   String    | 关键字 默认为空                      |
| lang|   String    | 语言Id 默认为1                       |
| client|   String    |客户端Id 默认为1                     |
| currency|   String    | 币种 默认为USD                      |
| page|   String    | 页数 默认为1                     |
| size|   String    | 大小 默认为10                     |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "nowprice": "24.97",
            "origprice": "24.97",
            "symbol": "US$",
            "listingId": "324ec1a0-d962-1004-8805-92fd2bfdb493",
            "sku": "D2369B",
            "title": "A7 HD 720P Sport Mini DV Action Camera 2.0\" LCD 90° Wide Angle Lens 30M Waterproof",
            "url": "a7-sj4000-hd-720p-sport-mini-dv-action-camera-15-lcd-90°-wide-angle-lens-30m-waterproof-d2369b",
            "img": "/images/D/D2369B/D2369B-1-c694.jpg",
            "isVideo": false,
            "isMulti": true,
            "isFreeShipping": false,
            "isDayDelivery": true,
            "collectNum": 15,
            "collectDate": 1439408602586
        },
        {
            "nowprice": "6.93",
            "origprice": "6.93",
            "symbol": "US$",
            "listingId": "7e6b62a8-9140-4c6f-ab62-a89140dc6f63",
            "sku": "G1241B-M",
            "title": "New Sexy Women Dress Floral Print Halterneck Deep V Neck Backless Elastic Waist Summer Dress Black",
            "url": "new-sexy-women-dress-floral-print-halterneck-deep-v-neck-backless-elastic-waist-summer-dress-black-g1241b-m",
            "img": "p/gu1/G/G1241B-M/G1241B-M-6-1380.jpg",
            "isVideo": false,
            "isMulti": true,
            "isFreeShipping": false,
            "isDayDelivery": true,
            "collectNum": 5,
            "collectDate": 1439426300396
        },
        {
            "nowprice": "28.19",
            "origprice": "28.19",
            "symbol": "US$",
            "listingId": "0560752d-cbb6-4f97-a075-2dcbb67f97b9",
            "sku": "K2413",
            "title": "Car MP5 Player Stereo Radio Audio Player Receiver FM Aux Input with SD/USB Port 3inch LCD Display",
            "url": "car-mp5-player-stereo-radio-audio-player-receiver-fm-aux-input-with-sdusb-port-3inch-lcd-display-k2413",
            "img": "p/gu1/K/K2413/K2413-1-97c9.jpg",
            "isVideo": false,
            "isMulti": false,
            "isFreeShipping": false,
            "isDayDelivery": true,
            "collectNum": 8,
            "collectDate": 1439408607055
        },
        {
            "nowprice": "41.83",
            "origprice": "41.83",
            "symbol": "US$",
            "listingId": "670fd17a-e17b-40d0-8fd1-7ae17bd0d076",
            "sku": "W210EU",
            "title": "54Watt 2-hand Nail Art 6LEDs Gel Curing UV Lamp Polish Dryer Pedicure Manicure Tools Heater & Fan with Timer 250V EU Plug",
            "img": "p/tt/w/2/w210eu-2-ae43.jpg",
            "isVideo": false,
            "isMulti": false,
            "isFreeShipping": false,
            "isDayDelivery": true,
            "collectNum": 1,
            "collectDate": 1450822909000
        },
        {
            "nowprice": "54.65",
            "origprice": "54.65",
            "symbol": "US$",
            "listingId": "ef76f8b0-e55b-41c9-b6f8-b0e55b31c947",
            "sku": "PA2261-EU",
            "title": "X5 Qi Wireless Charging Bluetooth Speaker with NFC Hands-free Call LED Digital Display & Clock Thermometer Function for iPhone 6 6 Plus Samsung S5 S6 S6 edge Nokia Lumia 920",
            "url": "x5-qi-wireless-charging-bluetooth-speaker-with-nfc-handsfree-call-led-digital-display-clock-thermometer-function-for-iphone-6-6-plus-samsung-s5-s6-s6-edge-nokia-lumia-920-pa2261-eu",
            "img": "p/gu1/P/PA2261-EU/PA2261-EU-7-71a2.jpg",
            "isVideo": false,
            "isMulti": false,
            "isFreeShipping": false,
            "isDayDelivery": true,
            "collectNum": 7,
            "collectDate": 1439426349173
        },
        {
            "nowprice": "56.49",
            "origprice": "56.49",
            "symbol": "US$",
            "listingId": "10720c47-72b5-467b-b20c-4772b5967b80",
            "sku": "PA2609",
            "title": "KKMOON Smart Intelligent Wearable Wireless Bluetooth 4.0 Music Glasses Headset Earphone with 8G Camera Sleep Alarm Lighting Functions",
            "url": "kkmoon-smart-intelligent-wearable-wireless-bluetooth-40-music-glasses-headset-earphone-with-8g-camera-sleep-alarm-lighting-functions-pa2609",
            "img": "p/gu1/P/PA2609/PA2609-11-00f7.jpg",
            "isVideo": false,
            "isMulti": false,
            "isFreeShipping": true,
            "isDayDelivery": true,
            "collectNum": 3,
            "collectDate": 1439251234455
        },
        {
            "nowprice": "13.81",
            "origprice": "13.81",
            "symbol": "US$",
            "listingId": "1c8a3a17-8cb4-4bde-8a3a-178cb44bde96",
            "sku": "I902B",
            "title": "1680D Water-resistant Oxford Cloth Bag Cotton Padded Advanced Fabrics Sax Soft Case Adjustable Shoulder Straps Pocket for Alto Saxophone",
            "url": "1680d-waterresistant-oxford-cloth-bag-cotton-padded-advanced-fabrics-sax-soft-case-adjustable-shoulder-straps-pocket-for-alto-saxophone-i902b",
            "img": "p/gu1/I/I902B/I902B-14-aab4.jpg",
            "isVideo": false,
            "isMulti": true,
            "isFreeShipping": false,
            "isDayDelivery": true,
            "collectNum": 6,
            "collectDate": 1439251236435
        }
    ],
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
