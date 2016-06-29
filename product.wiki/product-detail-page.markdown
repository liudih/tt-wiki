产品详情页API
------------
UAT测试地址：http://192.168.220.53:8004/
反向代理地址: http://product.api.tomtop.com
---------
#### 1.获取面包屑信息
```
GET   ${website}/ic/v1/bread/{id}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| id|   int    | 品类id 根据type判断 必须                               |
| lang|   int    | 语言ID  不是必须,默认为=1                                |
| type|   String    | 类型  不是必须,默认为=category 如果用listingid则 type=detail                       |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "categoryId": 80,
            "name": "Pumps",
            "level": 3
        },
        {
            "categoryId": 64,
            "name": "Cycling",
            "level": 2
        },
        {
            "categoryId": 63,
            "name": "Sports & Outdoor",
            "level": 1
        }
    ]
}
```
---------
#### 2.获取商品基本详情
```
GET   ${website}/ic/v1/product/base/{listingid}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingid|   int    | 商品ID 必须                               |
| lang|   int    | 语言ID  不是必须,默认为=1                                |
| client|   int    | 站点ID  不是必须,默认为=1                                |
| currency|   int    | 币种  不是必须,默认为=1                                |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "listingId": "0083f580-d914-1004-874c-d371c9ab96c0",
            "sku": "C1596C",
            "title": "Slim Smart Case Cover Stand PU Leather Magnetic for Apple iPad Mini Sleep/ Wake Orange",
            "imgList": [
                {
                    "imgUrl": "p/tt/c/1/c1596c-13-19e9_1.jpg",
                    "isSmall": false,
                    "isMain": false
                },
                {
                    "imgUrl": "p/tt/c/1/c1596c-12-19e9_1.jpg",
                    "isSmall": false,
                    "isMain": false
                },
                {
                    "imgUrl": "p/tt/c/1/c1596c-4-19e9_1.jpg",
                    "isSmall": false,
                    "isMain": false
                },
                {
                    "imgUrl": "p/tt/c/1/c1596c-9-19e9_1.jpg",
                    "isSmall": false,
                    "isMain": false
                },
                {
                    "imgUrl": "p/tt/c/1/c1596c-11-19e9_1.jpg",
                    "isSmall": false,
                    "isMain": false
                },
                {
                    "imgUrl": "p/tt/c/1/c1596c-1-19e9_1.jpg",
                    "isSmall": false,
                    "isMain": false
                },
                {
                    "imgUrl": "p/tt/c/1/c1596c-2-19e9_1.jpg",
                    "isSmall": false,
                    "isMain": false
                },
                {
                    "imgUrl": "p/tt/c/1/c1596c-5-19e9_1.jpg",
                    "isSmall": false,
                    "isMain": false
                },
                {
                    "imgUrl": "p/tt/c/1/c1596c-10-19e9_1.jpg",
                    "isSmall": false,
                    "isMain": false
                },
                {
                    "imgUrl": "p/tt/c/1/c1596c-8-19e9_1.jpg",
                    "isSmall": false,
                    "isMain": false
                },
                {
                    "imgUrl": "p/tt/c/1/c1596c-7-19e9_1.jpg",
                    "isSmall": false,
                    "isMain": false
                },
                {
                    "imgUrl": "p/tt/c/1/c1596c-6-19e9_1.jpg",
                    "isSmall": false,
                    "isMain": false
                },
                {
                    "imgUrl": "p/tt/c/1/c1596c-14-19e9_1.jpg",
                    "isSmall": false,
                    "isMain": false
                },
                {
                    "imgUrl": "p/tt/c/1/c1596c-3-19e9_1.jpg",
                    "isSmall": true,
                    "isMain": true
                }
            ],
            "attributeMap": {},
            "status": 1,
            "qty": 100000,
            "isFreeShipping": false,
            "isOnSale": false,
            "saleEndDate": null,
            "url": "slim-smart-case-cover-stand-pu-leather-magnetic-for-apple-ipad-mini-sleep-wake-orange-c1596c",
            "isCleanStocks": false
        }
    ]
}
```
---------
#### 3.获取商品的Description以及explain值
```
GET   ${website}/ic/v1/product/desc/{listingid}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingid|   int    | 商品ID 必须                               |
| lang|   int    | 语言ID  不是必须,默认为=1                                |
| client|   int    | 站点ID  不是必须,默认为=1                                |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "desc": "${attributes}<span style=\"line-height: 20.7999992370605px;\">This skirt is very soft and smooth. It is little transparent. It will show your fairness and beauty. Come and have a try!</span><br style=\"line-height: 20.7999992370605px;\" />\n<br style=\"line-height: 20.7999992370605px;\" />\n<strong style=\"line-height: 20.7999992370605px;\">Features:</strong><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">Crafted from fine polyester, soft and smooth.</span><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">Back zipper and wide hem.</span><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">A little transparent and no lining.</span><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">It has been cut with a regular fit.</span><br style=\"line-height: 20.7999992370605px;\" />\n<br style=\"line-height: 20.7999992370605px;\" />\n<strong style=\"line-height: 20.7999992370605px;\">Specifications:</strong><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">Size: S (US4 UK8 EU34), M (US6 UK10 EU36), L (US8 UK12 EU38), XL (US10 UK14 EU40), XXL (US12 UK16 EU42) (optional)</span><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">Color: Pink</span><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">Gender: Women</span><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">Material: Polyester</span><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">Waist: Empire</span><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">Pattern Type: Solid</span><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">Silhouette: A-Line</span><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">Dress Length: Mid-calf</span><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">Style: Fashion</span><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">Weight: Approx. 79-91g / 8.6-9.2oz</span><br style=\"line-height: 20.7999992370605px;\" />\n<br style=\"line-height: 20.7999992370605px;\" />\n<strong style=\"line-height: 20.7999992370605px;\">Size Details:</strong>\n\n<table bgcolor=\"#666666\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: medium; line-height: normal; width: 800px;\">\n    <tbody>\n        <tr bgcolor=\"#cccccc\">\n            <td style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px; padding: 3px;\" width=\"128\"><strong>Asian Size</strong></td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px; padding: 3px;\"><strong>S</strong></td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px; padding: 3px;\"><strong>M</strong></td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px; padding: 3px;\"><strong>L</strong></td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px; padding: 3px;\"><strong>XL</strong></td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px; padding: 3px;\"><strong>XXL</strong></td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px; padding: 3px;\"><strong>XXXL</strong></td>\n        </tr>\n        <tr bgcolor=\"#ffffff\">\n            <td style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px; padding: 3px;\" width=\"128\"><strong>EUR</strong></td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">34</td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">36</td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">38</td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">40</td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">42</td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">44</td>\n        </tr>\n        <tr bgcolor=\"#ffffff\">\n            <td style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px; padding: 3px;\"><strong>US,CA</strong></td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">4</td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">6</td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">8</td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">10</td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">12</td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">14</td>\n        </tr>\n        <tr bgcolor=\"#ffffff\">\n            <td style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px; padding: 3px;\"><strong>UK</strong></td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">8</td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">10</td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">12</td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">14</td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">16</td>\n            <td align=\"center\" colspan=\"2\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">18</td>\n        </tr>\n        <tr bgcolor=\"#ffffff\">\n            <td colspan=\"13\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px; padding: 3px;\"><strong>Clothes measurements in cm/<span class=\"STYLE1\" style=\"color: rgb(255, 0, 0);\">inches</span></strong></td>\n        </tr>\n        <tr bgcolor=\"#ffffff\">\n            <td style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px; padding: 3px;\"><strong>Waist</strong></td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\" width=\"48\">64cm</td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\" width=\"48\"><span style=\"color: rgb(255, 0, 0);\">25.2&#39;&#39;</span></td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\" width=\"48\">68cm</td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\" width=\"48\"><span style=\"color: rgb(255, 0, 0);\">26.8&#39;&#39;</span></td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\" width=\"48\">72cm</td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\" width=\"48\"><span style=\"color: rgb(255, 0, 0);\">28.3&#39;&#39;</span></td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\" width=\"48\">76cm</td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\" width=\"48\"><span style=\"color: rgb(255, 0, 0);\">29.9&#39;&#39;</span></td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\" width=\"48\">80cm</td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\" width=\"48\"><span style=\"color: rgb(255, 0, 0);\">31.5&#39;&#39;</span></td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\" width=\"48\">-</td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\" width=\"48\">-</td>\n        </tr>\n        <tr bgcolor=\"#ffffff\">\n            <td style=\"font-family: Verdana, Geneva, sans-serif; font-size: 12px; padding: 3px;\"><strong>Total length</strong></td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">59cm</td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\"><span style=\"color: rgb(255, 0, 0);\">23.2&#39;&#39;</span></td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">60cm</td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\"><span style=\"color: rgb(255, 0, 0);\">23.6&#39;&#39;</span></td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">61cm</td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\"><span style=\"color: rgb(255, 0, 0);\">24.0&#39;&#39;</span></td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">62cm</td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\"><span style=\"color: rgb(255, 0, 0);\">24.4&#39;&#39;</span></td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">63cm</td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\"><span style=\"color: rgb(255, 0, 0);\">24.8&#39;&#39;</span></td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">-</td>\n            <td align=\"center\" style=\"font-family: Verdana, Geneva, sans-serif; font-size: 11px; padding: 3px;\">-</td>\n        </tr>\n    </tbody>\n</table>\n<br style=\"line-height: 20.7999992370605px;\" />\n<strong style=\"line-height: 20.7999992370605px;\">How to Measure:</strong><br style=\"line-height: 20.7999992370605px;\" />\n<img src=\"http://www.tomtop.com/images/yinyong/Measure3.jpg\" style=\"line-height: 20.7999992370605px; opacity: 0.9;\" /><img src=\"http://74.86.127.114/images/yinyong/Skirt.jpg\" style=\"line-height: 20.7999992370605px;\" /><br style=\"line-height: 20.7999992370605px;\" />\n<br style=\"line-height: 20.7999992370605px;\" />\n<strong style=\"line-height: 20.7999992370605px;\">Note:</strong><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">This clothing size information is just for reference only, please check the above detailed measurement to choose the correct size, and allow 1-2cm (0.4-0.8&quot;) differences due to manual measurement, thanks.</span><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">Item color displayed in photos may be showing slightly different on your computer monitor since monitors are not calibrated same.</span><br style=\"line-height: 20.7999992370605px;\" />\n<br style=\"line-height: 20.7999992370605px;\" />\n<strong style=\"line-height: 20.7999992370605px;\">Package List:</strong><br style=\"line-height: 20.7999992370605px;\" />\n<span style=\"line-height: 20.7999992370605px;\">1 * Women&#39;s Skirt</span>${product_images}",
        "shippingPayment": "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title></title>\r\n<p><strong>Shipping Methods:</strong></p>\r\n\r\n<p>When you order from TOMTOP.com, you will receive a confirmation email. Once your order is shipped, you will be emailed with the tracking information for your order&#39;s shipment. You can choose your preferred shipping method on the Order Information page during the checkout process. TOMTOP.com offers different shipping methods for you:</p>\r\n\r\n<table border=\"1\" height=\"424\" width=\"800\">\r\n    <tbody>\r\n        <tr>\r\n            <td colspan=\"3\"><strong>Shipping from Chinese Warehouse：</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"162\">Shipping Type</td>\r\n            <td width=\"450\">Country</td>\r\n            <td width=\"156\">Shipping Time</td>\r\n        </tr>\r\n        <tr>\r\n            <td rowspan=\"6\" width=\"162\">Airmail and register airmail</td>\r\n            <td width=\"450\">United States,Canada</td>\r\n            <td width=\"156\">10-20 business days</td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"450\">Australia, New Zealand, Singapore</td>\r\n            <td width=\"156\">15-25 business days</td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"450\">\r\n                <p>United Kingdom, France, Spain, Germany, Netherlands, Japan, Belgium, </p>\r\n\r\n                <p>Denmark, Finland, Ireland, Norway, Portugal, Sweden, Switzerland</p>\r\n            </td>\r\n            <td width=\"156\">20-30 business days</td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"450\">Brazil and Mexico</td>\r\n            <td width=\"156\">20-35 business days</td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"450\">Russia</td>\r\n            <td width=\"156\">20-35 business days</td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"450\">Other countries</td>\r\n            <td width=\"156\">10-25 business days</td>\r\n        </tr>\r\n        <tr>\r\n            <td rowspan=\"2\" width=\"162\">Singapore &amp; China (EMS)</td>\r\n            <td width=\"450\">All countries except those listed below</td>\r\n            <td width=\"156\">6-10 business days</td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"450\">Brazil and Russia  </td>\r\n            <td width=\"156\">10-25 business days</td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"162\">Expedited Shipping(DHL)</td>\r\n            <td width=\"450\">Worldwide</td>\r\n            <td width=\"156\">3-7 business days</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n\r\n<p></p>\r\n\r\n<table border=\"1\" width=\"800\">\r\n    <tbody>\r\n        <tr>\r\n            <td colspan=\"4\"><strong>Shipping from Local Warehouses:</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"96\">Warehouses</td>\r\n            <td width=\"212\">Shipping Type</td>\r\n            <td width=\"102\">Shipping Time</td>\r\n            <td width=\"506\">Country</td>\r\n        </tr>\r\n        <tr>\r\n            <td rowspan=\"2\" width=\"96\">UK Warehouse</td>\r\n            <td width=\"212\">Royal mail without tracking number</td>\r\n            <td width=\"102\">5-12 business days</td>\r\n            <td rowspan=\"2\" width=\"506\">Can be delivered to UK &amp; other EU countries.</td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"212\">UPS</td>\r\n            <td width=\"102\">3-7 business days</td>\r\n        </tr>\r\n        <tr>\r\n            <td rowspan=\"2\" width=\"96\">USA Warehouse</td>\r\n            <td width=\"212\">Air mail with tracking number</td>\r\n            <td width=\"102\">5-12 business days</td>\r\n            <td rowspan=\"2\" width=\"506\">Can only be delivered to America.</td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"212\">UPS</td>\r\n            <td width=\"102\">3-7 business days</td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"96\">DE Warehouse</td>\r\n            <td width=\"212\">DHL</td>\r\n            <td width=\"102\">3-8 business days</td>\r\n            <td width=\"506\">\r\n                <p>Can be delivered to worldwide. (But its shipping cost varies from </p>\r\n\r\n                <p>different countries. Recommend to choose if you are in Europe.)</p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n\r\n<p>The transit time depends on where you&#39;re located and where your package comes from. If you want to know more information, please contact our customer service. We will settle your problem as soon as possible. Enjoy shopping!</p>\r\n \r\n\r\n<p><strong>Payment Methods:</strong></p>\r\n\r\n<p>TOMTOP.com accepts PayPal, Credit Card, Western Union, Wire Transfer, QIWI and Yandex as secure payment methods:</p>\r\n\r\n<p>Global:</p>\r\n\r\n<p>1. PayPal</p>\r\n\r\n<p><img alt=\"\" height=\"96\" src=\"http://www.tomtop.com/img/images/yinyong/paypal48.jpg\" width=\"300\" /></p>\r\n\r\n<p>1) Login To Your Account or use Credit Card Express.<br />\r\n2) Enter your Card Details, the order will be shipped to your PayPal address. And click &ldquo;Submit&rdquo;.<br />\r\n3) Your Payment will be processed and a receipt will be sent to your email inbox.</p>\r\n\r\n<p>2. Credit Card</p>\r\n\r\n<p><img alt=\"\" height=\"40\" src=\"http://www.tomtop.com/img/images/yinyong/creditcard48.jpg\" width=\"554\" /></p>\r\n\r\n<p>1) Choose your shipping address OR create a new one.<br />\r\n2) Enter your Card Details and click &ldquo;Submit&rdquo;.<br />\r\n3) Your Payment will be processed and a receipt will be sent to your email inbox.</p>\r\n\r\n<p>3. Wire Transfer</p>\r\n\r\n<p><img alt=\"\" height=\"47\" src=\"http://www.tomtop.com/img/images/yinyong/wiretransfer48.jpg\" width=\"120\" /></p>\r\n\r\n<p>For orders more than $500, please contact us and provide us with the following information: your order number, the total amount paid, and the exact date of the wire transfer.</p>\r\n\r\n<p>4. Yandex</p>\r\n\r\n<p><img alt=\"\" height=\"36\" src=\"http://www.tomtop.com/img/images/yinyong/yadexmoney48.jpg\" width=\"120\" /></p>\r\n\r\n<p>Яндекс.Деньги<br />\r\nВы можете заплатить из кошелька в Яндекс.Деньгах или с привязаннойк нему карты. Комиссии нет.</p>\r\n\r\n<p>5. QIWI</p>\r\n\r\n<p><img alt=\"\" height=\"33\" src=\"http://www.tomtop.com/img/images/yinyong/qiwi48.jpg\" width=\"120\" /></p>\r\n\r\n<p>1) Выберите страну, где был открыт ваш счет<br />\r\n2) Введите номер вашего QIWI кошелька<br />\r\n3) Введите номер, ваш пароль и нажмите на кнопку оплаты<br />\r\n4) Нажмите на &ldquo;оплатить с QIWI&rdquo;, Вы будете перенаправлены на страницу с деталями платежа через QIWI<br />\r\n5) Введите номер ваш пароль и нажмите на кнопку оплаты<br />\r\n6) Ваш платеж будет обработан<br />\r\n7) Вы будете направлены на страницу с деталями заказа для подтверждения<br />\r\n<br />\r\nВы будете перенаправлены на сайт QIWI, чтобы произвести оплату с вашего QIWI Wallet.</p>\r\n",
        "warranty": "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title></title>\r\n<p><strong>1.Does TOMTOP check the products before shipping them to me?</strong></p>\r\n\r\n<p>Yes, for sure.<br />\r\nWe have a professional Quality Control team. They will check carefully for each item we received from suppliers and manufacturers to avoid sending defective goods to our customers.<br />\r\nIf a item is found defective in our QC test, it will be returned to the supplier / factory. So please don&#39;t worry about receiving a defective item because we are committed to being a trustworthy and reliable seller on international on-line shopping market.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>2．Are Products Guaranteed / Is There A Warranty?</strong></p>\r\n\r\n<p>Yes, everything you buy from TOMTOP has a guarantee of quality and will exactly match the description on the website.<br />\r\nFactories that supply TOMTOP are strictly evaluated by us, and we provide you an even better reassurance of consistent high quality thanks to our in-house QC team. We double-check the contents of all orders carefully before dispatch to our customers. You can be confident about ordering from TOMTOP just as much as any western retailer.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>3. How long dose it take to have my orders shipped after the payment is made?</strong></p>\r\n\r\n<p>1.Processing time 1-2 business days normally: During this period, we do strict quality-control tests and get the items carefully packed.<br />\r\n2.Sometimes the item in your order is really a hot seller and it may be just sold out at that time. It will take us 1-2 more days to get it available in stock again. In this case, The processing time will be 3 business days.<br />\r\nIf you don&rsquo;t receive any shipping confirming over three days after the payment is made, please kindly contact our customer service . They will check for you.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>4. What should I do if my items arrived damaged?</strong></p>\r\n\r\n<p>Rarely, rough handling by the courier can lead to physical damage to your goods, e.g. broken screen.<br />\r\nIf this has happened, please follow these steps:<br />\r\nIf possible, raise a complaint directly with the delivery representative of the courier company before you sign for the goods. They will advise you on the complaint procedure.<br />\r\nIf you already signed for the packet, take photos showing the damage and contact the local office of the courier/delivery company to complain. They will have a complaining procedure which will enable you to get compensation.<br />\r\nNext, contact TOMTOP immediately with your order number and a full description / pictures of the broken item issue. We will contact the courier company from our end.<br />\r\nOnce the courier company confirms that the case is valid, they will compensate TOMTOP, and we will pass on this compensation to you. The compensation varies from case to case and is different for each delivery company. In some cases you will need to pay to post the broken item back to TOMTOP in order for us to send out a new piece.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>5. What should I do if my products go broken after a period of use?</strong></p>\r\n\r\n<p>If you encounter quality issues within the warranty period, you can ask for us. Every product has a specific warranty period(If it is not stated in the product listing, contact us).<br />\r\n<br />\r\nIn this case, please kindly provide us with proof as below:<br />\r\nThe photos of original TOMTOP package with front and back sides<br />\r\nThe photos or video of the defective item(s)<br />\r\nThe photos, video or screenshot showing the malfunction of the defective item(s)<br />\r\n<br />\r\nWe will usually offer you a refund or send a replacement as soon as the problem is confirmed.<br />\r\nSometimes you may need to ship the defective item back to us for free repair service or a new replacement. Customer should cover the return shipping fee, and TOMTOP is responsible for the shipping costs of arranging reshipment by air mail.</p>\r\n"
    }
}
```
---------
#### 4.获取商品的SEO
```
GET   ${website}/ic/v1/product/seo/{listingid}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingid|   int    | 商品ID 必须                               |
| lang|   int    | 语言ID  不是必须,默认为=1                                |
| client|   int    | 站点ID  不是必须,默认为=1                                |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "metaTitle": "Baby Leggings Socks Pants",
        "metaDescription": "<p>This pants is good flexibility and air permeability, keeps your baby warm and comfortable.</p>",
        "metaKeyword": "Baby Leggings Socks Pants"
    }
}

```
---------
#### 5.获取商品评论星级和数量
```
GET   ${website}/ic/v1/product/review/start/{listingid}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingid|   int    | 商品ID 必须                               |
| lang|   int    | 语言ID  不是必须,默认为=1                                |
| client|   int    | 站点ID  不是必须,默认为=1                                |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "count": 65,
        "start": 2.1,
        "startPer": [
            {
                "startNum": 5,//星级
                "ptage": 28 //百分比
            },
            {
                "startNum": 0,//等于1星或者有多余的百分比值时显示0星星
                "ptage": 72
            }
        ]
    }
}

```
---------
#### 6.获取商品收藏数量
```
GET   ${website}/ic/v1/product/collect/{listingid}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingid|   int    | 商品ID 必须                               |
| lang|   int    | 语言ID  不是必须,默认为=1                                |
| client|   int    | 站点ID  不是必须,默认为=1                                |

 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "listingId": "889e4088-d996-1004-86d9-fd213171aa98",
        "collectCount": 1
    }
}

```
---------
#### 7.获取商品价格
```
GET   ${website}/ic/v1/product/price/{listingid}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingid|   int    | 商品ID 必须                               |
| lang|   int    | 语言ID  不是必须,默认为=1                                |
| client|   int    | 站点ID  不是必须,默认为=1                                |
| currency|   String    | 货币  不是必须,默认为=USD                               |
 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "nowprice": "7.35",
        "origprice": "9.56"
    }
}
```
---------
#### 8.获取商品的仓库及对应的发货方式
```
GET   ${website}/ic/v1/product/storage/{listingid}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingid|   int    | 商品ID 必须                               |
| lang|   int    | 语言ID  不是必须,默认为=1                                |
| client|   int    | 站点ID  不是必须,默认为=1                                |
| currency|   String    | 货币  不是必须,默认为=USD                               |
| country|   String    | 国家简称  不是必须,默认为=USD                               |
 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "storageId": 1,
            "storageName": "CN",
            "shippingMethods": [
                {
                    "id": 17013,
                    "name": null,
                    "title": "EUB to USA With Tracking Number",
                    "context": "By EUB, with tracking number 7-15 business days arrived. (Over 2kg, will be shipped with multiple packages)",
                    "imgUrl": "images/eub.gif",
                    "freight": 6.47,
                    "code": "H2",
                    "groupId": 11,
                    "free": false,
                    "special": true
                },
                {
                    "id": 15235,
                    "name": "ChinaDHL",
                    "title": "China DHL",
                    "context": "By DHL From China Warehouse, 3 - 5 business days arrived.",
                    "imgUrl": "images/dhl.gif",
                    "freight": 12.5,
                    "code": "D",
                    "groupId": 4,
                    "free": false,
                    "special": true
                },
                {
                    "id": 15643,
                    "name": "ChinaEMS",
                    "title": "China EMS",
                    "context": "By EMS From China Warehouse, 5 - 10 business days arrived.",
                    "imgUrl": "images/ems.gif",
                    "freight": 18.42,
                    "code": "E",
                    "groupId": 2,
                    "free": false,
                    "special": true
                }
            ]
        },
        {
            "storageId": 3,
            "storageName": "GB",
            "shippingMethods": [
                {
                    "id": 17013,
                    "name": null,
                    "title": "EUB to USA With Tracking Number",
                    "context": "By EUB, with tracking number 7-15 business days arrived. (Over 2kg, will be shipped with multiple packages)",
                    "imgUrl": "images/eub.gif",
                    "freight": 6.47,
                    "code": "H2",
                    "groupId": 11,
                    "free": false,
                    "special": true
                },
                {
                    "id": 15235,
                    "name": "ChinaDHL",
                    "title": "China DHL",
                    "context": "By DHL From China Warehouse, 3 - 5 business days arrived.",
                    "imgUrl": "images/dhl.gif",
                    "freight": 12.5,
                    "code": "D",
                    "groupId": 4,
                    "free": false,
                    "special": true
                },
                {
                    "id": 15643,
                    "name": "ChinaEMS",
                    "title": "China EMS",
                    "context": "By EMS From China Warehouse, 5 - 10 business days arrived.",
                    "imgUrl": "images/ems.gif",
                    "freight": 18.42,
                    "code": "E",
                    "groupId": 2,
                    "free": false,
                    "special": true
                }
            ]
        },
        {
            "storageId": 5,
            "storageName": "DE",
            "shippingMethods": [
                {
                    "id": 12044,
                    "name": "DE DHL",
                    "title": "DHL From Germany Warehouse",
                    "context": "From Germany Warehouse, 5-7business days arrived.",
                    "imgUrl": "images/dhl.gif",
                    "freight": 13.48,
                    "code": "DD",
                    "groupId": 8,
                    "free": false,
                    "special": true
                }
            ]
        },
        {
            "storageId": 6,
            "storageName": "FR",
            "shippingMethods": [
                {
                    "id": 17013,
                    "name": null,
                    "title": "EUB to USA With Tracking Number",
                    "context": "By EUB, with tracking number 7-15 business days arrived. (Over 2kg, will be shipped with multiple packages)",
                    "imgUrl": "images/eub.gif",
                    "freight": 6.47,
                    "code": "H2",
                    "groupId": 11,
                    "free": false,
                    "special": true
                },
                {
                    "id": 15235,
                    "name": "ChinaDHL",
                    "title": "China DHL",
                    "context": "By DHL From China Warehouse, 3 - 5 business days arrived.",
                    "imgUrl": "images/dhl.gif",
                    "freight": 12.5,
                    "code": "D",
                    "groupId": 4,
                    "free": false,
                    "special": true
                },
                {
                    "id": 15643,
                    "name": "ChinaEMS",
                    "title": "China EMS",
                    "context": "By EMS From China Warehouse, 5 - 10 business days arrived.",
                    "imgUrl": "images/ems.gif",
                    "freight": 18.42,
                    "code": "E",
                    "groupId": 2,
                    "free": false,
                    "special": true
                }
            ]
        },
        {
            "storageId": 7,
            "storageName": "AU",
            "shippingMethods": [
                {
                    "id": 17013,
                    "name": null,
                    "title": "EUB to USA With Tracking Number",
                    "context": "By EUB, with tracking number 7-15 business days arrived. (Over 2kg, will be shipped with multiple packages)",
                    "imgUrl": "images/eub.gif",
                    "freight": 6.47,
                    "code": "H2",
                    "groupId": 11,
                    "free": false,
                    "special": true
                },
                {
                    "id": 15235,
                    "name": "ChinaDHL",
                    "title": "China DHL",
                    "context": "By DHL From China Warehouse, 3 - 5 business days arrived.",
                    "imgUrl": "images/dhl.gif",
                    "freight": 12.5,
                    "code": "D",
                    "groupId": 4,
                    "free": false,
                    "special": true
                },
                {
                    "id": 15643,
                    "name": "ChinaEMS",
                    "title": "China EMS",
                    "context": "By EMS From China Warehouse, 5 - 10 business days arrived.",
                    "imgUrl": "images/ems.gif",
                    "freight": 18.42,
                    "code": "E",
                    "groupId": 2,
                    "free": false,
                    "special": true
                }
            ]
        }
    ]
}

```
---------
#### 9.获取详情页面Shipping & Payment/Warranty
```
GET   ${website}/ic/v1/product/explain/{type}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| type|   String | 类型 1:)Shipping&Payment = 'paymentexplain' 2:) Warranty = 'warrantyexplain' 必须|
| lang|   int    | 语言ID  不是必须,默认为=1                                |
| client|   int    | 站点ID  不是必须,默认为=1                                |
 Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title></title>\r\n<p><strong>1.Does TOMTOP check the products before shipping them to me?</strong></p>\r\n\r\n<p>Yes, for sure.<br />\r\nWe have a professional Quality Control team. They will check carefully for each item we received from suppliers and manufacturers to avoid sending defective goods to our customers.<br />\r\nIf a item is found defective in our QC test, it will be returned to the supplier / factory. So please don&#39;t worry about receiving a defective item because we are committed to being a trustworthy and reliable seller on international on-line shopping market.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>2．Are Products Guaranteed / Is There A Warranty?</strong></p>\r\n\r\n<p>Yes, everything you buy from TOMTOP has a guarantee of quality and will exactly match the description on the website.<br />\r\nFactories that supply TOMTOP are strictly evaluated by us, and we provide you an even better reassurance of consistent high quality thanks to our in-house QC team. We double-check the contents of all orders carefully before dispatch to our customers. You can be confident about ordering from TOMTOP just as much as any western retailer.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>3. How long dose it take to have my orders shipped after the payment is made?</strong></p>\r\n\r\n<p>1.Processing time 1-2 business days normally: During this period, we do strict quality-control tests and get the items carefully packed.<br />\r\n2.Sometimes the item in your order is really a hot seller and it may be just sold out at that time. It will take us 1-2 more days to get it available in stock again. In this case, The processing time will be 3 business days.<br />\r\nIf you don&rsquo;t receive any shipping confirming over three days after the payment is made, please kindly contact our customer service . They will check for you.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>4. What should I do if my items arrived damaged?</strong></p>\r\n\r\n<p>Rarely, rough handling by the courier can lead to physical damage to your goods, e.g. broken screen.<br />\r\nIf this has happened, please follow these steps:<br />\r\nIf possible, raise a complaint directly with the delivery representative of the courier company before you sign for the goods. They will advise you on the complaint procedure.<br />\r\nIf you already signed for the packet, take photos showing the damage and contact the local office of the courier/delivery company to complain. They will have a complaining procedure which will enable you to get compensation.<br />\r\nNext, contact TOMTOP immediately with your order number and a full description / pictures of the broken item issue. We will contact the courier company from our end.<br />\r\nOnce the courier company confirms that the case is valid, they will compensate TOMTOP, and we will pass on this compensation to you. The compensation varies from case to case and is different for each delivery company. In some cases you will need to pay to post the broken item back to TOMTOP in order for us to send out a new piece.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>5. What should I do if my products go broken after a period of use?</strong></p>\r\n\r\n<p>If you encounter quality issues within the warranty period, you can ask for us. Every product has a specific warranty period(If it is not stated in the product listing, contact us).<br />\r\n<br />\r\nIn this case, please kindly provide us with proof as below:<br />\r\nThe photos of original TOMTOP package with front and back sides<br />\r\nThe photos or video of the defective item(s)<br />\r\nThe photos, video or screenshot showing the malfunction of the defective item(s)<br />\r\n<br />\r\nWe will usually offer you a refund or send a replacement as soon as the problem is confirmed.<br />\r\nSometimes you may need to ship the defective item back to us for free repair service or a new replacement. Customer should cover the return shipping fee, and TOMTOP is responsible for the shipping costs of arranging reshipment by air mail.</p>\r\n"
}

```
---------
#### 10.获取商品评论详情信息
```
GET   ${website}/ic/v1/product/review/{listingId}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingid|   int    | 商品ID 必须                               |
| lang|   int    | 语言ID  不是必须,默认为=1                                |
| client|   int    | 站点ID  不是必须,默认为=1                                |

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
            "commentDate": 1438572222254,
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
            "commentDate": 1438572417266,
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
            "commentDate": 1438572470035,
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
            "commentDate": 1438572525540,
            "comment": "ok-很好",
            "imgUrls": [
                "/mobile/api/member/photo2?iid=56",
                "/mobile/api/member/photo2?iid=55"
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
            "commentDate": 1439231495438,
            "comment": "ok-dddddddd",
            "imgUrls": null,
            "videos": null
        }
    ]
}

```
---------
#### 11.获取商品右侧栏Hot Event
```
GET   ${website}/ic/v1/product/topic
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| type|   int    | 类型 不是必须,默认为=null                             |
| lang|   int    | 语言ID  不是必须,默认为=1                                |
| client|   int    | 站点ID  不是必须,默认为=1                                |
| size|   int    | 获取数量  不是必须,默认为=5                                |

备注：获取图片 -- GET ${website}/collections/image/{id}

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 142,
            "type": "Featured Promotions",
            "title": "Flash Sale Just for July",
            "htmlUrl": "http://www.tomtop.com/activity/FlashJuly-20150709.html"
        },
        {
            "id": 141,
            "type": "Products Promotions",
            "title": "Special Selections  in June",
            "htmlUrl": "http://www.tomtop.com/activity/edm-009.html"
        },
        {
            "id": 140,
            "type": "Featured Promotions",
            "title": "Fancy RC Big Sale ",
            "htmlUrl": "http://www.tomtop.com/activity/RC-20150701.html"
        },
        {
            "id": 138,
            "type": "Featured Promotions",
            "title": "Spoil your pet one time",
            "htmlUrl": "http://www.tomtop.com/activity/Pet-20150626.html"
        },
        {
            "id": 137,
            "type": "Products Promotions",
            "title": "Mid-Year Markdown Sales",
            "htmlUrl": "http://www.tomtop.com/activity/edm-008.html"
        }
    ]
}

```
---------
#### 12.获取详情页hot商品
```
GET   ${website}/ic/v1/product/hot
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| lang|   int    | 语言ID  不是必须,默认为=1                                |
| client|   int    | 站点ID  不是必须,默认为=1                                |
| currency|   String    | 币种  不是必须,默认为=USD                                |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "listingId": "0073dd3d-d914-1004-874c-d371c9ab96c0",
            "title": "Universal General Guitar Acoustic Clip-line Pickup Pick up",
            "nowprice": "2.64",
            "origprice": "2.64",
            "imgUrl": "p/tt/1/2/12710664920.jpg"
        },
        {
            "listingId": "008a0f52-d914-1004-874c-d371c9ab96c0",
            "title": "1500W WATT DC 12V to AC 230V Portable Car Power Inverter Charger Converter Transformer",
            "nowprice": "40.87",
            "origprice": "40.87",
            "imgUrl": "p/tt/k/1/k1241-6-aa69.jpg"
        },
        {
            "listingId": "047e7ae8-d914-1004-874c-d371c9ab96c0",
            "title": "Pixel Oppilas RW-221 2.4GHz 16 Channels Wireless Shutter Release Remote Control for Nikon Fujifilm",
            "nowprice": "19.13",
            "origprice": "19.13",
            "imgUrl": "p/gu1/D/D964/D964-2-f321.jpg"
        },
        {
            "listingId": "bfadaa58-d94d-1004-82fb-43e94bfee600",
            "title": "21\" Ukelele Ukulele Basswood 4 Nylon Strings with Colorful Pattern Stringed Instrument Kid's Musical Toy",
            "nowprice": "15.73",
            "origprice": "15.73",
            "imgUrl": "p/gu1/I/I866-4/I866-4-1-21b4.jpg"
        },
        {
            "listingId": "d5431409-d929-1004-835b-90389054983d",
            "title": "1800 Lumens Full HD 1080P Android 4.2.2 3D Wifi Smart LED Projector Miracast DLAN Airplay EZcast with RJ45 Ports",
            "nowprice": "211.27",
            "origprice": "211.27",
            "imgUrl": "p/tt/v/8/v831eu-2-4d0f.jpg"
        }
    ]
}

```
---------
#### 13.获取Local Warehouse
```
GET   ${website}/ic/v1/categories/storage
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| lang|   int    | 语言ID  不是必须,默认为=1                                |
| client|   int    | 站点ID  不是必须,默认为=1                                |
| country|   String    | 币种  不是必须,默认为=US                                |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "id": 1,
            "name": "China"
        },
        {
            "id": 2,
            "name": "US"
        },
        {
            "id": 3,
            "name": "GB"
        },
        {
            "id": 4,
            "name": "IT"
        },
        {
            "id": 5,
            "name": "DE"
        },
        {
            "id": 6,
            "name": "FR"
        },
        {
            "id": 7,
            "name": "AU"
        },
        {
            "id": 8,
            "name": "Japan"
        }
    ]
}

```
---------
#### 14.添加Wholesale Inquiry
```
PUT   ${website}/ic/v1/product/wholesaleInquiry
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingId|   String    | 必须                               |
| sku|   String    | 必须                              |
| name|   String   | 必须                      |
| mobilePhone|   String    | 必须                               |
| emailAddress|   String    | 必须                              |
| targetPrice|   Double  | 必须                      |
| orderQuantity|   Integer  | 必须                               |
| countryState|   String    | 必须                              |
| companyName|   String   | 必须                      |
| writeInquiry|   String    | 必须                               |

注：提交参数类型用json格式 如下  

{
            "listingId": "670fd17a-e17b-40d0-8fd1-7ae17bd0d076",
            "sku": "W210EU",
            "name": "aaa",
 	    "mobilePhone": "aa",
	    "emailAddress": "123456@qq.com",
	    "targetPrice": 10.25,
	    "orderQuantity": 2,
	    "countryState": "US",
 	    "companyName": "DDDDD",
 	    "writeInquiry": "WWWWWW"
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
---------
#### 15.添加Report Error
```
PUT   ${website}/ic/v1/product/reportError
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingId|   String    | 必须                               |
| sku|   String    | 必须                              |
| errorType|   String   | 必须                      |
| email|   String    | 必须                              |
| writeInquiry|   String    | 必须                               |

注：提交参数类型用json格式 如下  

{
            "listingId": "670fd17a-e17b-40d0-8fd1-7ae17bd0d076",
            "sku": "W210EU",
            "errorType": "Product description",
	    "email": "123456@qq.com",
	    "writeInquiry": "WWWWWW  Product description"
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
---------
#### 16. 添加商品收藏
```
PUT   ${website}/ic/v1/product/collect/add
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingId|   String    | 必须                               |
| email|   String    | 必须                              |

注：提交参数类型用json格式 如下  

{
            "listingId": "670fd17a-e17b-40d0-8fd1-7ae17bd0d076",
	    "email": "123456@qq.com"
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
---------
#### 17. 添加商品dropship
```
PUT   ${website}/ic/v1/product/dropship/add
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| sku|   String    | 必须                               |
| email|   String    | 必须                              |
| client|   String    | 不是必须，默认为1                              |

注：提交参数类型用json格式 如下  

{
          	"sku": "W210EU",
		"email": "2853789707@qq.com",
		"client": 1
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
---------
#### 18. 添加商品WholeSaleProduct
```
PUT   ${website}/ic/v1/product/wholesale/add
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| sku|   String    | 必须                               |
| email|   String    | 必须                              |
| qty|   String    | 不是必须，默认为5                              |
| client|   String    | 不是必须，默认为1                              |

注：提交参数类型用json格式 如下  

{
          	"sku": "W210EU",
		"email": "2853789707@qq.com",
		"client": 1,
                "qty": 5
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
---------
#### 19. 根据email获取用户收藏的商品list
```
GET   ${website}/ic/v1/collect/list
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String    | 必须                              |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        "1c8a3a17-8cb4-4bde-8a3a-178cb44bde96",
        "ef76f8b0-e55b-41c9-b6f8-b0e55b31c947",
        "7e6b62a8-9140-4c6f-ab62-a89140dc6f63",
        "670fd17a-e17b-40d0-8fd1-7ae17bd0d076",
        "324ec1a0-d962-1004-8805-92fd2bfdb493",
        "0560752d-cbb6-4f97-a075-2dcbb67f97b9",
        "10720c47-72b5-467b-b20c-4772b5967b80"
    ]
}
```
---------
#### 20. 获取库存接口
```
GET   ${website}/ic/v1/product/qty/{listingId}
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingId|   String    | 必须   参数跟在/后面就可以了                           |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": 100000
}
```
---------
#### 21.详情页alsoViewed
```
GET   ${website}/ic/v2/product/alsoViewed/
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingId|   String    | 必须                       |
| currency|   String    | 币种 默认为USD                       |
| client|   int | 客户端Id 默认为1                       |
| lang|   int | 语言Id 默认为1                       |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "listingId": "00ae0580-d914-1004-874c-d371c9ab96c0",
            "sku": "H14982RB",
            "title": "CURREN 8149 Business Men Wristwatch Water-resistant Fashion Stainless Steel Analog Quartz Calendar Watch",
            "url": "curren-8149-business-men-wristwatch-water-resistant-fashion-stainless-steel-analog-quartz-calendar-watch-h14982rb",
            "imageUrl": "p/tt/h/1/h14982rb-1-d9c6.jpg",
            "symbol": "US$",
            "nowprice": "10.61",
            "origprice": "10.61",
            "reviewCount": 6,
            "avgScore": 4.2,
            "collectNum": 10
        },
        {
            "listingId": "d47c820d-d929-1004-835b-90389054983d",
            "sku": "H14978BR",
            "title": "MG·ORKINA Unisex Luxury Leather Wristwatch Water-resistant Leisure Style Analog Quartz Calendar Date Watch",
            "url": "MGORKINA-Unisex-Luxury-Leather-Wristwatch-Waterresistant-Leisure-Style-Analog-Quartz-Calendar-Date-Watch-H14978BR",
            "imageUrl": "p/tt/h/1/h14978br-3-0dfd.jpg",
            "symbol": "US$",
            "nowprice": "10.79",
            "origprice": "10.79",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 0
        },
        {
            "listingId": "d47d6c6c-d929-1004-835b-90389054983d",
            "sku": "H14984BB",
            "title": "CURREN 8023 Fashion Business Men Wristwatch Water-resistant Stainless Steel Analog Quartz Watch",
            "url": "curren-8023-fashion-business-men-wristwatch-water-resistant-stainless-steel-analog-quartz-watch-h14984",
            "imageUrl": "p/gu1/H/H14984BB/H14984BB-5-042b.JPG",
            "symbol": "US$",
            "nowprice": "11.62",
            "origprice": "11.62",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 4
        },
        {
            "listingId": "d47dba8c-d929-1004-835b-90389054983d",
            "sku": "H14985BS",
            "title": "CURREN 8148 Fashion Business Men Wristwatch Water-resistant Stainless Steel Analog Quartz Calendar Date Watch",
            "url": "CURREN-8148-Fashion-Business-Men-Wristwatch-Waterresistant-Stainless-Steel-Analog-Quartz-Calendar-Date-Watch-H14985BS",
            "imageUrl": "p/gu1/H/H14985BS/H14985BS-9-79f5.jpg",
            "symbol": "US$",
            "nowprice": "10.61",
            "origprice": "10.61",
            "reviewCount": 4,
            "avgScore": 4.2,
            "collectNum": 1
        },
        {
            "listingId": "d4807ad9-d929-1004-835b-90389054983d",
            "sku": "H15044BB",
            "title": "CURREN 8083 Fashion Business Men Wristwatch Water-resistant Stainless Steel Analog Quartz Calendar Date Watch",
            "url": "curren-8083-fashion-business-men-wristwatch-water-resistant-stainless-steel-analog-quartz-calendar-date-watch-h15044",
            "imageUrl": "p/gu1/H/H15044BB/H15044BB-10-c51c.JPG",
            "symbol": "US$",
            "nowprice": "13.56",
            "origprice": "13.56",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 5
        },
        {
            "listingId": "d4813e8d-d929-1004-835b-90389054983d",
            "sku": "H15048B-BL",
            "title": "WH1008 Men's Sports Military Multi-function Stainless Steel Analog Digital LED Display Quartz Watch 3ATM Water Resistant",
            "url": "wh1008-men-s-sports-military-multi-function-stainless-steel-analog-digital-led-display-quartz-watch-3atm-water-resistant-h15048",
            "imageUrl": "p/tt/h/1/h15048b-bl-7-f55f_2.jpg",
            "symbol": "US$",
            "nowprice": "16.21",
            "origprice": "16.21",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 3
        },
        {
            "listingId": "d481177c-d929-1004-835b-90389054983d",
            "sku": "H15047B-W",
            "title": "WH1009 LED Back Light Multi-function Quartz Stainless Steel Luxury Military Sport Watch 3ATM Water Resistant Watch for Men",
            "url": "WH1009-LED-Back-Light-Multifunction-Quartz-Stainless-Steel-Luxury-Military-Sport-Watch-3ATM-Water-Resistant-Watch-for-Men-H15047B-W",
            "imageUrl": "p/tt/h/1/h15047b-w-7-98b5_1.png",
            "symbol": "US$",
            "nowprice": "19.18",
            "origprice": "19.18",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 1
        },
        {
            "listingId": "d481b3bd-d929-1004-835b-90389054983d",
            "sku": "H15049B",
            "title": "WH905 3ATM Water Resistant Multi-function Men Business Sport Military Luxury Analog& LED Digital Display Quartz Watch",
            "url": "wh905-3atm-water-resistant-multi-function-men-business-sport-military-luxury-analog-led-digital-display-quartz-watch-h15049",
            "imageUrl": "p/tt/h/1/h15049b-7-e477.jpg",
            "symbol": "US$",
            "nowprice": "16.85",
            "origprice": "16.85",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 5
        },
        {
            "listingId": "d48228ed-d929-1004-835b-90389054983d",
            "sku": "H15051BB",
            "title": "WH903 3ATM Analog Digital Illuminated Date Day Alarm LED Display Men's Sports Outdoor Quartz Military Wrist Watch",
            "url": "wh903-3atm-analog-digital-illuminated-date-day-alarm-led-display-men-s-sports-outdoor-quartz-military-wrist-watch-h15051",
            "imageUrl": "p/tt/h/1/h15051bb-11-9770.jpg",
            "symbol": "US$",
            "nowprice": "16.07",
            "origprice": "16.07",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 4
        },
        {
            "listingId": "d819db82-d929-1004-835b-90389054983d",
            "sku": "J0219B",
            "title": "MG·ORKINA Luxury Leather Wristwatch Water-resistant Leisure Style Analog Quartz Calendar Date Week Watch",
            "url": "mg-orkina-luxury-leather-wristwatch-water-resistant-leisure-style-analog-quartz-calendar-date-week-watch-j0219",
            "imageUrl": "p/gu1/J/J0219B/J0219B-8-5b2d.JPG",
            "symbol": "US$",
            "nowprice": "11.87",
            "origprice": "11.87",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 3
        },
        {
            "listingId": "1b901fc4-d942-1004-8d23-e12f228bba17",
            "sku": "J0224BR",
            "title": "MG·ORKINA Fashion Business Men Wristwatch Water-resistant Stainless Steel Analog Quartz Calendar Date Watch",
            "url": "mg-orkina-fashion-business-men-wristwatch-water-resistant-stainless-steel-analog-quartz-calendar-date-watch-j0224",
            "imageUrl": "p/gu1/J/J0224BR/J0224BR-2-f69e.jpg",
            "symbol": "US$",
            "nowprice": "16.21",
            "origprice": "16.21",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 16
        },
        {
            "listingId": "1b8ff8b4-d942-1004-8d23-e12f228bba17",
            "sku": "J0221GW",
            "title": "MG·ORKINA Unisex Luxury Wristwatch Water-resistant Analog Quartz Calendar Date Watch Leisure Style",
            "url": "MGORKINA-Unisex-Luxury-Wristwatch-Waterresistant-Analog-Quartz-Calendar-Date-Watch-Leisure-Style-J0221GW",
            "imageUrl": "p/tt/j/0/j0221gw-4-c5ca.jpg",
            "symbol": "US$",
            "nowprice": "10.79",
            "origprice": "10.79",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 0
        },
        {
            "listingId": "7887d365-8cb3-41dc-87d3-658cb311dc7b",
            "sku": "J0277",
            "title": "SINOBI Quartz Wristwatch Water Resistant Simple Dial Stainless Steel Rhinestone Embedded Watch",
            "url": "sinobi-quartz-wristwatch-water-resistant-simple-dial-stainless-steel-rhinestone-embedded-watch-j0277",
            "imageUrl": "p/gu1/J/J0277/J0277-1-2025.jpg",
            "symbol": "US$",
            "nowprice": "6.19",
            "origprice": "6.19",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 3
        },
        {
            "listingId": "fb35ab78-8c55-4392-b5ab-788c55039285",
            "sku": "J0253",
            "title": "SKMEI Analog and Digital Dual Time Water Resistant Multiple Function Colorful Wristwatch",
            "url": "skmei-analog-and-digital-dual-time-water-resistant-multiple-function-colorful-wristwatch-j0253",
            "imageUrl": "p/gu1/J/J0253/J0253-1-c032.jpg",
            "symbol": "US$",
            "nowprice": "8.43",
            "origprice": "8.43",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 1
        },
        {
            "listingId": "5679a58b-0be4-4c7b-b9a5-8b0be4cc7b22",
            "sku": "J0255",
            "title": "SKMEI Futurism Quartz Unique Airplane Shaped Watch Waterproof Stainless Steel Wristwatch with Multifunction",
            "url": "skmei-futurism-quartz-unique-airplane-shaped-watch-waterproof-stainless-steel-wristwatch-with-multifunction-j0255",
            "imageUrl": "p/gu1/J/J0255/J0255-10-7881.jpg",
            "symbol": "US$",
            "nowprice": "7.41",
            "origprice": "7.41",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 0
        },
        {
            "listingId": "1e09764e-83b1-4273-8976-4e83b1727348",
            "sku": "J0260",
            "title": "SKMEI Sports Double Time Display Multiple Function Watch Waterproof Fashion Wristwatch for Men and Women",
            "url": "skmei-sports-double-time-display-multiple-function-watch-waterproof-fashion-wristwatch-for-men-and-women-j0260",
            "imageUrl": "p/gu1/J/J0260/J0260-1-7163.jpg",
            "symbol": "US$",
            "nowprice": "8.55",
            "origprice": "8.55",
            "reviewCount": 1,
            "avgScore": 4.3,
            "collectNum": 1
        },
        {
            "listingId": "5659a1d2-1e7d-4804-99a1-d21e7dd8045a",
            "sku": "J0310BL",
            "title": "WEIDE Men Dual Time Multi-function Analog-Digital Military Sports Wristwatch Water Resistant Outdoor Watch",
            "url": "weide-men-dual-time-multifunction-analogdigital-military-sports-wristwatch-water-resistant-outdoor-watch-j0310bl",
            "imageUrl": "p/gu1/J/J0310BL/J0310BL-3-06c6.jpg",
            "symbol": "US$",
            "nowprice": "11.98",
            "origprice": "11.98",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 2
        },
        {
            "listingId": "67e2c23c-5bb4-4751-a2c2-3c5bb447514d",
            "sku": "J0312BL",
            "title": "WEIDE Dual Time Outdoor Sports Multiple Function Watch Water Resistant Cool Backlight Stainless Steel Sturdy Wristwatch",
            "url": "weide-dual-time-outdoor-sports-multiple-function-watch-water-resistant-cool-backlight-stainless-steel-sturdy-wristwatch-j0312bl",
            "imageUrl": "p/gu1/J/J0312BL/J0312BL-3-ea5e.jpg",
            "symbol": "US$",
            "nowprice": "16.09",
            "origprice": "16.09",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 5
        },
        {
            "listingId": "632618b4-4019-4771-a618-b44019677160",
            "sku": "J0316G",
            "title": "WEIDE Quartz Analog Water Resistant Stainless Steel Leather Strap Wristwatch with Calendar",
            "url": "weide-quartz-analog-water-resistant-stainless-steel-leather-strap-wristwatch-with-calendar-j0316g",
            "imageUrl": "p/gu1/J/J0316G/J0316G-1-0289.jpg",
            "symbol": "US$",
            "nowprice": "13.12",
            "origprice": "13.12",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 0
        },
        {
            "listingId": "f1cfd71a-b6d0-4db6-8fd7-1ab6d07db6db",
            "sku": "J0317B",
            "title": "WEIDE Water Resistant Stainless Steel Leather Strap Quartz Analog Business Wristwatch with Calendar",
            "url": "weide-water-resistant-stainless-steel-leather-strap-quartz-analog-business-wristwatch-with-calendar-j0317b",
            "imageUrl": "p/gu1/J/J0317B/J0317B-1-afd9.jpg",
            "symbol": "US$",
            "nowprice": "12.21",
            "origprice": "12.21",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 3
        },
        {
            "listingId": "72437237-258a-4c22-8372-37258acc22f7",
            "sku": "J0262",
            "title": "SKMEI High Quality Analog-Digital Double Time Display Watch Waterproof Fashion Quartz Sports Wristwatch",
            "url": "skmei-high-quality-analogdigital-double-time-display-watch-waterproof-fashion-quartz-sports-wristwatch-j0262",
            "imageUrl": "p/gu1/J/J0262/J0262-10-9469.jpg",
            "symbol": "US$",
            "nowprice": "13.10",
            "origprice": "13.10",
            "reviewCount": 2,
            "avgScore": 4.5,
            "collectNum": 7
        },
        {
            "listingId": "1b43323a-36a7-4fc5-8332-3a36a71fc575",
            "sku": "J0264B",
            "title": "SKMEI High Quality Analog-Digital Dual Time Quartz Timepiece Waterproof Fashion Stainless Steel Business Wristwatch",
            "url": "skmei-high-quality-analogdigital-dual-time-quartz-timepiece-waterproof-fashion-stainless-steel-business-wristwatch-j0264b",
            "imageUrl": "p/gu1/J/J0264B/J0264B-11-15cb.jpg",
            "symbol": "US$",
            "nowprice": "12.32",
            "origprice": "12.32",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 3
        },
        {
            "listingId": "b1a5b1af-e571-4e51-a5b1-afe571ce51a1",
            "sku": "J0278GB",
            "title": "CURREN Water Resistant Wristwatch Stainless Steel Leather Watchband Business Watch with Calendar",
            "url": "curren-water-resistant-wristwatch-stainless-steel-leather-watchband-business-watch-with-calendar-j0278gb",
            "imageUrl": "p/gu1/J/J0278GB/J0278GB-8-fd9b.jpg",
            "symbol": "US$",
            "nowprice": "9.87",
            "origprice": "9.87",
            "reviewCount": 1,
            "avgScore": 4.5,
            "collectNum": 6
        },
        {
            "listingId": "314901a3-1bbd-4059-8901-a31bbdd05917",
            "sku": "J0284BB",
            "title": "CURREN Men Fashion Quartz Water Resistant Watch Leather Strap Vintage Stainless Steel Business Wristwatch with Calendar",
            "url": "curren-men-fashion-quartz-water-resistant-watch-leather-strap-vintage-stainless-steel-business-wristwatch-with-calendar-j0284bb",
            "imageUrl": "p/gu1/J/J0284BB/J0284BB-8-29c2.jpg",
            "symbol": "US$",
            "nowprice": "9.21",
            "origprice": "9.21",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 0
        },
        {
            "listingId": "d47c820e-d929-1004-835b-90389054983d",
            "sku": "H14979B",
            "title": "CURREN 8158 Men Wristwatch Water-resistant Leisure Style Fashion Vogue Military Quartz Date Watch",
            "url": "curren-8158-men-wristwatch-water-resistant-leisure-style-fashion-vogue-military-quartz-date-watch-h14979",
            "imageUrl": "p/gu1/H/H14979B/H14979B-8-aace.jpg",
            "symbol": "US$",
            "nowprice": "14.78",
            "origprice": "14.78",
            "reviewCount": 4,
            "avgScore": 4.1,
            "collectNum": 8
        }
    ]
}

```
---------
#### 22.详情页AlsoBought
```
GET   ${website}/ic/v2/product/alsoViewed/
```

 Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| listingId|   String    | 必须                       |
| currency|   String    | 币种 默认为USD                       |
| client|   int | 客户端Id 默认为1                       |
| lang|   int | 语言Id 默认为1                       |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "listingId": "00ae0580-d914-1004-874c-d371c9ab96c0",
            "sku": "H14982RB",
            "title": "CURREN 8149 Business Men Wristwatch Water-resistant Fashion Stainless Steel Analog Quartz Calendar Watch",
            "url": "curren-8149-business-men-wristwatch-water-resistant-fashion-stainless-steel-analog-quartz-calendar-watch-h14982rb",
            "imageUrl": "p/tt/h/1/h14982rb-1-d9c6.jpg",
            "symbol": "US$",
            "nowprice": "10.61",
            "origprice": "10.61",
            "reviewCount": 6,
            "avgScore": 4.2,
            "collectNum": 10
        },
        {
            "listingId": "d47c820d-d929-1004-835b-90389054983d",
            "sku": "H14978BR",
            "title": "MG·ORKINA Unisex Luxury Leather Wristwatch Water-resistant Leisure Style Analog Quartz Calendar Date Watch",
            "url": "MGORKINA-Unisex-Luxury-Leather-Wristwatch-Waterresistant-Leisure-Style-Analog-Quartz-Calendar-Date-Watch-H14978BR",
            "imageUrl": "p/tt/h/1/h14978br-3-0dfd.jpg",
            "symbol": "US$",
            "nowprice": "10.79",
            "origprice": "10.79",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 0
        },
        {
            "listingId": "d47d6c6c-d929-1004-835b-90389054983d",
            "sku": "H14984BB",
            "title": "CURREN 8023 Fashion Business Men Wristwatch Water-resistant Stainless Steel Analog Quartz Watch",
            "url": "curren-8023-fashion-business-men-wristwatch-water-resistant-stainless-steel-analog-quartz-watch-h14984",
            "imageUrl": "p/gu1/H/H14984BB/H14984BB-5-042b.JPG",
            "symbol": "US$",
            "nowprice": "11.62",
            "origprice": "11.62",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 4
        },
        {
            "listingId": "d47dba8c-d929-1004-835b-90389054983d",
            "sku": "H14985BS",
            "title": "CURREN 8148 Fashion Business Men Wristwatch Water-resistant Stainless Steel Analog Quartz Calendar Date Watch",
            "url": "CURREN-8148-Fashion-Business-Men-Wristwatch-Waterresistant-Stainless-Steel-Analog-Quartz-Calendar-Date-Watch-H14985BS",
            "imageUrl": "p/gu1/H/H14985BS/H14985BS-9-79f5.jpg",
            "symbol": "US$",
            "nowprice": "10.61",
            "origprice": "10.61",
            "reviewCount": 4,
            "avgScore": 4.2,
            "collectNum": 1
        },
        {
            "listingId": "d4807ad9-d929-1004-835b-90389054983d",
            "sku": "H15044BB",
            "title": "CURREN 8083 Fashion Business Men Wristwatch Water-resistant Stainless Steel Analog Quartz Calendar Date Watch",
            "url": "curren-8083-fashion-business-men-wristwatch-water-resistant-stainless-steel-analog-quartz-calendar-date-watch-h15044",
            "imageUrl": "p/gu1/H/H15044BB/H15044BB-10-c51c.JPG",
            "symbol": "US$",
            "nowprice": "13.56",
            "origprice": "13.56",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 5
        },
        {
            "listingId": "d4813e8d-d929-1004-835b-90389054983d",
            "sku": "H15048B-BL",
            "title": "WH1008 Men's Sports Military Multi-function Stainless Steel Analog Digital LED Display Quartz Watch 3ATM Water Resistant",
            "url": "wh1008-men-s-sports-military-multi-function-stainless-steel-analog-digital-led-display-quartz-watch-3atm-water-resistant-h15048",
            "imageUrl": "p/tt/h/1/h15048b-bl-7-f55f_2.jpg",
            "symbol": "US$",
            "nowprice": "16.21",
            "origprice": "16.21",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 3
        },
        {
            "listingId": "d481177c-d929-1004-835b-90389054983d",
            "sku": "H15047B-W",
            "title": "WH1009 LED Back Light Multi-function Quartz Stainless Steel Luxury Military Sport Watch 3ATM Water Resistant Watch for Men",
            "url": "WH1009-LED-Back-Light-Multifunction-Quartz-Stainless-Steel-Luxury-Military-Sport-Watch-3ATM-Water-Resistant-Watch-for-Men-H15047B-W",
            "imageUrl": "p/tt/h/1/h15047b-w-7-98b5_1.png",
            "symbol": "US$",
            "nowprice": "19.18",
            "origprice": "19.18",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 1
        },
        {
            "listingId": "d481b3bd-d929-1004-835b-90389054983d",
            "sku": "H15049B",
            "title": "WH905 3ATM Water Resistant Multi-function Men Business Sport Military Luxury Analog& LED Digital Display Quartz Watch",
            "url": "wh905-3atm-water-resistant-multi-function-men-business-sport-military-luxury-analog-led-digital-display-quartz-watch-h15049",
            "imageUrl": "p/tt/h/1/h15049b-7-e477.jpg",
            "symbol": "US$",
            "nowprice": "16.85",
            "origprice": "16.85",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 5
        },
        {
            "listingId": "d48228ed-d929-1004-835b-90389054983d",
            "sku": "H15051BB",
            "title": "WH903 3ATM Analog Digital Illuminated Date Day Alarm LED Display Men's Sports Outdoor Quartz Military Wrist Watch",
            "url": "wh903-3atm-analog-digital-illuminated-date-day-alarm-led-display-men-s-sports-outdoor-quartz-military-wrist-watch-h15051",
            "imageUrl": "p/tt/h/1/h15051bb-11-9770.jpg",
            "symbol": "US$",
            "nowprice": "16.07",
            "origprice": "16.07",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 4
        },
        {
            "listingId": "d819db82-d929-1004-835b-90389054983d",
            "sku": "J0219B",
            "title": "MG·ORKINA Luxury Leather Wristwatch Water-resistant Leisure Style Analog Quartz Calendar Date Week Watch",
            "url": "mg-orkina-luxury-leather-wristwatch-water-resistant-leisure-style-analog-quartz-calendar-date-week-watch-j0219",
            "imageUrl": "p/gu1/J/J0219B/J0219B-8-5b2d.JPG",
            "symbol": "US$",
            "nowprice": "11.87",
            "origprice": "11.87",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 3
        },
        {
            "listingId": "1b901fc4-d942-1004-8d23-e12f228bba17",
            "sku": "J0224BR",
            "title": "MG·ORKINA Fashion Business Men Wristwatch Water-resistant Stainless Steel Analog Quartz Calendar Date Watch",
            "url": "mg-orkina-fashion-business-men-wristwatch-water-resistant-stainless-steel-analog-quartz-calendar-date-watch-j0224",
            "imageUrl": "p/gu1/J/J0224BR/J0224BR-2-f69e.jpg",
            "symbol": "US$",
            "nowprice": "16.21",
            "origprice": "16.21",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 16
        },
        {
            "listingId": "1b8ff8b4-d942-1004-8d23-e12f228bba17",
            "sku": "J0221GW",
            "title": "MG·ORKINA Unisex Luxury Wristwatch Water-resistant Analog Quartz Calendar Date Watch Leisure Style",
            "url": "MGORKINA-Unisex-Luxury-Wristwatch-Waterresistant-Analog-Quartz-Calendar-Date-Watch-Leisure-Style-J0221GW",
            "imageUrl": "p/tt/j/0/j0221gw-4-c5ca.jpg",
            "symbol": "US$",
            "nowprice": "10.79",
            "origprice": "10.79",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 0
        },
        {
            "listingId": "7887d365-8cb3-41dc-87d3-658cb311dc7b",
            "sku": "J0277",
            "title": "SINOBI Quartz Wristwatch Water Resistant Simple Dial Stainless Steel Rhinestone Embedded Watch",
            "url": "sinobi-quartz-wristwatch-water-resistant-simple-dial-stainless-steel-rhinestone-embedded-watch-j0277",
            "imageUrl": "p/gu1/J/J0277/J0277-1-2025.jpg",
            "symbol": "US$",
            "nowprice": "6.19",
            "origprice": "6.19",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 3
        },
        {
            "listingId": "fb35ab78-8c55-4392-b5ab-788c55039285",
            "sku": "J0253",
            "title": "SKMEI Analog and Digital Dual Time Water Resistant Multiple Function Colorful Wristwatch",
            "url": "skmei-analog-and-digital-dual-time-water-resistant-multiple-function-colorful-wristwatch-j0253",
            "imageUrl": "p/gu1/J/J0253/J0253-1-c032.jpg",
            "symbol": "US$",
            "nowprice": "8.43",
            "origprice": "8.43",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 1
        },
        {
            "listingId": "5679a58b-0be4-4c7b-b9a5-8b0be4cc7b22",
            "sku": "J0255",
            "title": "SKMEI Futurism Quartz Unique Airplane Shaped Watch Waterproof Stainless Steel Wristwatch with Multifunction",
            "url": "skmei-futurism-quartz-unique-airplane-shaped-watch-waterproof-stainless-steel-wristwatch-with-multifunction-j0255",
            "imageUrl": "p/gu1/J/J0255/J0255-10-7881.jpg",
            "symbol": "US$",
            "nowprice": "7.41",
            "origprice": "7.41",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 0
        },
        {
            "listingId": "1e09764e-83b1-4273-8976-4e83b1727348",
            "sku": "J0260",
            "title": "SKMEI Sports Double Time Display Multiple Function Watch Waterproof Fashion Wristwatch for Men and Women",
            "url": "skmei-sports-double-time-display-multiple-function-watch-waterproof-fashion-wristwatch-for-men-and-women-j0260",
            "imageUrl": "p/gu1/J/J0260/J0260-1-7163.jpg",
            "symbol": "US$",
            "nowprice": "8.55",
            "origprice": "8.55",
            "reviewCount": 1,
            "avgScore": 4.3,
            "collectNum": 1
        },
        {
            "listingId": "5659a1d2-1e7d-4804-99a1-d21e7dd8045a",
            "sku": "J0310BL",
            "title": "WEIDE Men Dual Time Multi-function Analog-Digital Military Sports Wristwatch Water Resistant Outdoor Watch",
            "url": "weide-men-dual-time-multifunction-analogdigital-military-sports-wristwatch-water-resistant-outdoor-watch-j0310bl",
            "imageUrl": "p/gu1/J/J0310BL/J0310BL-3-06c6.jpg",
            "symbol": "US$",
            "nowprice": "11.98",
            "origprice": "11.98",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 2
        },
        {
            "listingId": "67e2c23c-5bb4-4751-a2c2-3c5bb447514d",
            "sku": "J0312BL",
            "title": "WEIDE Dual Time Outdoor Sports Multiple Function Watch Water Resistant Cool Backlight Stainless Steel Sturdy Wristwatch",
            "url": "weide-dual-time-outdoor-sports-multiple-function-watch-water-resistant-cool-backlight-stainless-steel-sturdy-wristwatch-j0312bl",
            "imageUrl": "p/gu1/J/J0312BL/J0312BL-3-ea5e.jpg",
            "symbol": "US$",
            "nowprice": "16.09",
            "origprice": "16.09",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 5
        },
        {
            "listingId": "632618b4-4019-4771-a618-b44019677160",
            "sku": "J0316G",
            "title": "WEIDE Quartz Analog Water Resistant Stainless Steel Leather Strap Wristwatch with Calendar",
            "url": "weide-quartz-analog-water-resistant-stainless-steel-leather-strap-wristwatch-with-calendar-j0316g",
            "imageUrl": "p/gu1/J/J0316G/J0316G-1-0289.jpg",
            "symbol": "US$",
            "nowprice": "13.12",
            "origprice": "13.12",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 0
        },
        {
            "listingId": "f1cfd71a-b6d0-4db6-8fd7-1ab6d07db6db",
            "sku": "J0317B",
            "title": "WEIDE Water Resistant Stainless Steel Leather Strap Quartz Analog Business Wristwatch with Calendar",
            "url": "weide-water-resistant-stainless-steel-leather-strap-quartz-analog-business-wristwatch-with-calendar-j0317b",
            "imageUrl": "p/gu1/J/J0317B/J0317B-1-afd9.jpg",
            "symbol": "US$",
            "nowprice": "12.21",
            "origprice": "12.21",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 3
        },
        {
            "listingId": "72437237-258a-4c22-8372-37258acc22f7",
            "sku": "J0262",
            "title": "SKMEI High Quality Analog-Digital Double Time Display Watch Waterproof Fashion Quartz Sports Wristwatch",
            "url": "skmei-high-quality-analogdigital-double-time-display-watch-waterproof-fashion-quartz-sports-wristwatch-j0262",
            "imageUrl": "p/gu1/J/J0262/J0262-10-9469.jpg",
            "symbol": "US$",
            "nowprice": "13.10",
            "origprice": "13.10",
            "reviewCount": 2,
            "avgScore": 4.5,
            "collectNum": 7
        },
        {
            "listingId": "1b43323a-36a7-4fc5-8332-3a36a71fc575",
            "sku": "J0264B",
            "title": "SKMEI High Quality Analog-Digital Dual Time Quartz Timepiece Waterproof Fashion Stainless Steel Business Wristwatch",
            "url": "skmei-high-quality-analogdigital-dual-time-quartz-timepiece-waterproof-fashion-stainless-steel-business-wristwatch-j0264b",
            "imageUrl": "p/gu1/J/J0264B/J0264B-11-15cb.jpg",
            "symbol": "US$",
            "nowprice": "12.32",
            "origprice": "12.32",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 3
        },
        {
            "listingId": "b1a5b1af-e571-4e51-a5b1-afe571ce51a1",
            "sku": "J0278GB",
            "title": "CURREN Water Resistant Wristwatch Stainless Steel Leather Watchband Business Watch with Calendar",
            "url": "curren-water-resistant-wristwatch-stainless-steel-leather-watchband-business-watch-with-calendar-j0278gb",
            "imageUrl": "p/gu1/J/J0278GB/J0278GB-8-fd9b.jpg",
            "symbol": "US$",
            "nowprice": "9.87",
            "origprice": "9.87",
            "reviewCount": 1,
            "avgScore": 4.5,
            "collectNum": 6
        },
        {
            "listingId": "314901a3-1bbd-4059-8901-a31bbdd05917",
            "sku": "J0284BB",
            "title": "CURREN Men Fashion Quartz Water Resistant Watch Leather Strap Vintage Stainless Steel Business Wristwatch with Calendar",
            "url": "curren-men-fashion-quartz-water-resistant-watch-leather-strap-vintage-stainless-steel-business-wristwatch-with-calendar-j0284bb",
            "imageUrl": "p/gu1/J/J0284BB/J0284BB-8-29c2.jpg",
            "symbol": "US$",
            "nowprice": "9.21",
            "origprice": "9.21",
            "reviewCount": null,
            "avgScore": null,
            "collectNum": 0
        },
        {
            "listingId": "d47c820e-d929-1004-835b-90389054983d",
            "sku": "H14979B",
            "title": "CURREN 8158 Men Wristwatch Water-resistant Leisure Style Fashion Vogue Military Quartz Date Watch",
            "url": "curren-8158-men-wristwatch-water-resistant-leisure-style-fashion-vogue-military-quartz-date-watch-h14979",
            "imageUrl": "p/gu1/H/H14979B/H14979B-8-aace.jpg",
            "symbol": "US$",
            "nowprice": "14.78",
            "origprice": "14.78",
            "reviewCount": 4,
            "avgScore": 4.1,
            "collectNum": 8
        }
    ]
}