RC使用支持接口

```
```
#### 1.首页商品推荐块
```
GET   ${website}/ic/v4/layout/module/contents
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| layoutcode|   String    | 布局标识:HOME主页  必须|
| lang|   int|   语言 1 en  必须|
| client|   int|  客户端: 1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android  必须|
| website|   String    | 站点id|
| currency|   String    |贷币: USD,EUR,RUB,JPY,GBP,BRL,AUD,CNY  必须|
| depotName|   String    |仓库名称 不是必须的 默认为CN|



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
                "nowprice": "10.00",
                "origprice": "10.00",
                "listingId": "d9268ca8-d929-1004-835b-90389054983d",
                "sku": "G0157BU-M",
                "sort": 12,
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "categoryName": "Dresses"
            },
            {
                "title": "New Fashion Women Handbag PU Leather Solid Color Vintage Shoulder Crossbody Bag Black/Dark Blue/Red",
                "url": "New-Fashion-Women-Handbag-PU-Leather-Solid-Color-Vintage-Shoulder-Crossbody-Bag-BlackDark-BlueRed-B0011B",
                "imageUrl": "p/tt/b/0/b0011b-8-6bcd.jpg",
                "symbol": "US$",
                "nowprice": "7.95",
                "origprice": "7.95",
                "listingId": "d82ec9b5-d929-1004-835b-90389054983d",
                "sku": "B0011B",
                "sort": 13,
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 1,
                "categoryName": "Women's Bags"
            },
            {
                "title": "100-240V 9W Led Nail Lamp Automatic Open for UV Gel Nail Polish Salon Nail Dryer Curing Lamp Machine Nail Art Tool Everlasting",
                "url": "100240V-9W-Led-Nail-Lamp-Automatic-Open-for-UV-Gel-Nail-Polish-Salon-Nail-Dryer-Curing-Lamp-Machine-Nail-Art-Tool-Everlasting-H12401PU",
                "imageUrl": "p/tt/h/1/h12401pu-3-e271.jpg",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "d6597670-d929-1004-835b-90389054983d",
                "sku": "H12401PU",
                "sort": 18,
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 1,
                "categoryName": "Nail Dryers"
            },
            {
                "title": "Portable Flexible Roll Up Piano Electronic Soft Keyboard Piano 49 Keys",
                "url": "portable-flexible-roll-up-piano-electronic-soft-keyboard-piano-49-keys-i977",
                "imageUrl": "p/gu1/I/I977/I977-1-97ff.jpg",
                "symbol": "US$",
                "nowprice": "13.86",
                "origprice": "15.23",
                "listingId": "195c7407-9149-4e62-9c74-079149ee6206",
                "sku": "I977",
                "sort": 20,
                "reviewCount": 1,
                "avgScore": 4.5,
                "collectNum": 0,
                "categoryName": "Electronic Keyboards  & Accessories"
            },
            {
                "title": "Outdoor Solar Powered LED Spotlight Garden Pool Waterproof Spot Light Lamp",
                "url": null,
                "imageUrl": "p/tt/h/8/h8855-1-ac53.jpg",
                "symbol": "US$",
                "nowprice": "5.33",
                "origprice": "5.33",
                "listingId": "00cd8c91-d914-1004-874c-d371c9ab96c0",
                "sku": "H8855",
                "sort": 25,
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "categoryName": null
            }
        ],
        "MOREITEM-TO-CONSIDER": [
            {
                "title": "10'' HD TFT-LCD 1024*600 Digital Photo Frame Alarm Clock MP3 MP4 Movie Player with Remote Desktop",
                "url": "10-HD-TFTLCD-1024600-Digital-Photo-Frame-Alarm-Clock-MP3-MP4-Movie-Player-with-Remote-Desktop-D1814B-EU",
                "imageUrl": "p/gu1/D/D1814B-EU/D1814B-EU-4-512a.JPG",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "d8f2e85c-d929-1004-835b-90389054983d",
                "sku": "D1814B-EU",
                "sort": 1,
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "categoryName": "Digital Picture Frames"
            },
            {
                "title": "100m Portable Sonar Sensor Fish Finder Fishfinder Alarm Beam Transducer",
                "url": "100m-portable-sonar-sensor-fish-finder-fishfinder-alarm-beam-transducer-h1863",
                "imageUrl": "p/tt/2/0/20100620_img_090791.jpg",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "00b7e223-d914-1004-874c-d371c9ab96c0",
                "sku": "H1863",
                "sort": 1,
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "categoryName": "Tools & Equipment"
            },
            {
                "title": "10BB 6.3:1 Right Hand Bait Casting Fishing Reel 9Ball Bearings + One-way Clutch High Speed",
                "url": "10BB-631-Right-Hand-Bait-Casting-Fishing-Reel-9Ball-Bearings-Oneway-Clutch-High-Speed-H10236-R",
                "imageUrl": "p/tt/h/1/h10236-r-2-0c18.jpg",
                "symbol": "US$",
                "nowprice": "5.52",
                "origprice": "5.52",
                "listingId": "d6f995da-d929-1004-835b-90389054983d",
                "sku": "H10236-R",
                "sort": 1,
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 1,
                "categoryName": "Fishing Reels"
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
                "avgScore": null,
                "collectNum": 1,
                "categoryName": "Oscilloscopes & Accessories"
            },
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
                "avgScore": null,
                "collectNum": 0,
                "categoryName": "IP Cameras"
            },
            {
                "title": "Wood Grain Ultrasonic Air Humidifier Aroma Diffuser Aromatherapy Office Purifier Mist Maker 12W",
                "url": "Wood-Grain-Ultrasonic-Air-Humidifier-Aroma-Diffuser-Aromatherapy-Office-Purifier-Mist-Maker-12W-H14353-1",
                "imageUrl": "p/tt/h/1/h14353-1-1-6204.jpg",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "c2a3106a-d92f-1004-8e79-5d7e63ca983b",
                "sku": "H14353-1",
                "sort": 1,
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "categoryName": "Humidifier"
            },
            {
                "title": "Solar Panel PIR Motion & Light Sensor 10 LED Wall Light Lamp Rechargeable Mounted for Outdoor Garden Pathway Driveway Decks Docks Garage Stairways",
                "url": "solar-panel-pir-motion-light-sensor-10-led-wall-light-lamp-rechargeable-mounted-for-outdoor-garden-pathway-driveway-decks-docks-garage-stairways-l0338",
                "imageUrl": "p/gu1/L/L0338/L0338-6-a626.JPG",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "467722b4-d97e-1004-8a55-25bae9fae898",
                "sku": "L0338",
                "sort": 1,
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "categoryName": "Solar Lamps"
            },
            {
                "title": "10X50 396FT/1000YDS Sports Military Optics Binocular Telescope Spotting Scope with Compass for Hunting Camping Hiking Traveling Concert Waterproof Shockproof",
                "url": "10x50-396ft-1000yds-sports-military-optics-binocular-telescope-spotting-scope-with-compass-for-hunting-camping-hiking-traveling-concert-waterproof-shockproof-h12617",
                "imageUrl": "p/tt/h/1/h12617-10-79d9.jpg",
                "symbol": "US$",
                "nowprice": "66.69",
                "origprice": "77.00",
                "listingId": "00d4667c-d914-1004-874c-d371c9ab96c0",
                "sku": "H12617",
                "sort": 1,
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "categoryName": "Telescope & Binoculars"
            },
            {
                "title": "Mini Portable 2.7inch HD 1080P Car DVR Camera G-sensor Super Night Vision Camcorder Driving Recorder 140°Wide Angle",
                "url": "mini-portable-27inch-hd-1080p-car-dvr-camera-gsensor-super-night-vision-camcorder-driving-recorder-140°wide-angle-k2100",
                "imageUrl": "p/gu1/K/K2100/K2100-1-e1b3.jpg",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "9036b1a0-d986-1004-8e0c-b321d9e0c5c1",
                "sku": "K2100",
                "sort": 1,
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "categoryName": "Car Video"
            },
            {
                "title": "600D Water-resistant Oxford Cloth 10mm Sponge Cotton Padded Guitar Bag Backpack Shoulder Straps Pockets Gig Case for 41Inchs Acoustic Classic Folk Guitar",
                "url": "600d-waterresistant-oxford-cloth-10mm-sponge-cotton-padded-guitar-bag-backpack-shoulder-straps-pockets-gig-case-for-41inchs-acoustic-classic-folk-guitar-i984",
                "imageUrl": "p/gu1/I/I984/I984-11-aee5.jpg",
                "symbol": "US$",
                "nowprice": "77.00",
                "origprice": "77.00",
                "listingId": "5f2ddf58-a86c-406c-addf-58a86c506c23",
                "sku": "I984",
                "sort": 1,
                "reviewCount": null,
                "avgScore": null,
                "collectNum": 0,
                "categoryName": "Guitar Accessories"
            }
        ]
    }
}

```
#### 2.首页评论块接口
```
GET   ${website}/ic/v1/product/home/review
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| lang|   int|   语言 1 en  必须|
| website|   String    | 站点id|


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "title": "54Watt 2-hand Nail Art 6LEDs Gel Curing UV Lamp Polish Dryer Pedicure Manicure Tools Heater & Fan with Timer 250V EU Plug",
            "url": "54watt-2-hand-nail-art-6leds-gel-curing-uv-lamp-polish-dryer-pedicure-manicure-tools-heater-fan-with-timer-250v-eu-plug-w210eu",
            "imageUrl": "p/tt/w/2/w210eu-2-ae43.jpg",
            "symbol": "$",
            "nowprice": null,
            "origprice": null,
            "listingId": "00a0e8de-d914-1004-874c-d371c9ab96c0",
            "sku": null,
            "comment": "loving shopping shiaring 3244444444444444444444444444444",
            "stars": 5,
            "createDate": 1446510683718,
            "countryName": null
        },
        {
            "title": "DIY Google Cardboard Virtual Reality VR Mobile Phone 3D Viewing Glasses for 5.5\" Screen",
            "url": "DIY-Google-Cardboard-Virtual-Reality-VR-Mobile-Phone-3D-Viewing-Glasses-for-55-Screen-V806L",
            "imageUrl": "p/tt/v/8/v806l-4-83b8.jpg",
            "symbol": "$",
            "nowprice": null,
            "origprice": null,
            "listingId": "d5418d06-d929-1004-835b-90389054983d",
            "sku": null,
            "comment": "good good goodgood good goodgood good goodgood good goodgood good good",
            "stars": 5,
            "createDate": 1447625920358,
            "countryName": null
        },
        {
            "title": "Magic USB Glass Plasma Ball Sphere Globe Lightning Light Lamp Old Man Guitar for Party Desktop Party Birthday Gift",
            "url": "magic-usb-glass-plasma-ball-sphere-globe-lightning-light-lamp-old-man-guitar-for-party-desktop-party-birthday-gift-l0192",
            "imageUrl": "p/tt/l/0/l0192-2-efcf.jpg",
            "symbol": "$",
            "nowprice": null,
            "origprice": null,
            "listingId": "04832e09-d914-1004-874c-d371c9ab96c0",
            "sku": null,
            "comment": "jlsjdfkjdslhfwoierjlksjldjslkfjsdlfjsjflsdjflkwjeoruewoijfdsnnvdsvnskjfnhlsjfoieleqkflilknflashfiwnjeknlsdflskdjfoaflskjfoweijfndsnksdjkfjnvksndshfowiehgtuwjfjlkshgtewoitpweruqpryqpqwuopitpyiquorowqieopiooweijtpwrieeywtoewiryoewjfdskjaljioweyriwyroiewtyewryewytewuoiyorpewiyopewiyropewytoiewptyewiytoweyoeiwyrueryeutyryweiutewfuyreowhfjdsfbvmnvmbuityiuytiyuiuyiuyiuiuytiuyihfhghkjnvc xbv,nlkfnwnfvvlkwjkeofhwiefewwtte",
            "stars": 5,
            "createDate": 1448338717009,
            "countryName": null
        },
        {
            "title": "58mm 2x HD Telephoto Zoom Lens for Canon Nikon Sony Pentax 58MM DSLR Camera",
            "url": null,
            "imageUrl": "p/tt/d/1/d1207-4-4f48_1.jpg",
            "symbol": "$",
            "nowprice": null,
            "origprice": null,
            "listingId": "5c318459-c650-4272-b184-59c650a272f4",
            "sku": null,
            "comment": "adsfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffwerwrfdsfafwerwfsa",
            "stars": 5,
            "createDate": 1445875093577,
            "countryName": null
        },
        {
            "title": "58mm 2x HD Telephoto Zoom Lens for Canon Nikon Sony Pentax 58MM DSLR Camera",
            "url": "58mm-2x-hd-telephoto-zoom-lens-for-canon-nikon-sony-pentax-58mm-dslr-camera-d1207",
            "imageUrl": "p/tt/d/1/d1207-4-4f48_1.jpg",
            "symbol": "$",
            "nowprice": null,
            "origprice": null,
            "listingId": "00c4cc62-d914-1004-874c-d371c9ab96c0",
            "sku": null,
            "comment": "adsfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffwerwrfdsfafwerwfsa",
            "stars": 5,
            "createDate": 1445875093577,
            "countryName": null
        }
    ]
}

```
#### 3.hot-sellers商品查询
```
GET   ${website}/ic/v1/product/hotsellers
```

  Parameters

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| lang|   int|   语言 1 en  必须|
| website|   String    | 站点id|
| currency|   String    | 货币|
| cpath|   String    | 类目路径|
| page|   int | 默认为1|
| size|   int | 默认为20|
| depotName|   int | 默认为CN|


Response  如果成功返回

```
Status: 200 OK
```
```

{
    "ret": 1,
    "data": [
        {
            "title": "Service of removing Tomtop logo for Dropship orders",
            "url": "service-of-removing-tomtop-logo-for-dropship-orders-x01",
            "imageUrl": "p/tt/f/i/filesss_81_45_1.jpg",
            "symbol": "US$",
            "nowprice": "77.00",
            "origprice": "77.00",
            "listingId": "0092bcc8-d914-1004-874c-d371c9ab96c0",
            "sku": "X01",
            "collectNum": 0,
            "reviewCount": null,
            "avgScore": null
        },
        {
            "title": "7Pcs Punk Style Gold Color Skull Bowknot Heart Design Simple Nail Band Stacking Finger Rings Set for Women",
            "url": "7pcs-punk-style-gold-color-skull-bowknot-heart-design-simple-nail-band-stacking-finger-rings-set-for-women-j0059",
            "imageUrl": "p/tt/j/0/j0059-1-2e3f.jpg",
            "symbol": "US$",
            "nowprice": "77.00",
            "origprice": "77.00",
            "listingId": "008def08-d914-1004-874c-d371c9ab96c0",
            "sku": "J0059",
            "collectNum": 5,
            "reviewCount": 5,
            "avgScore": 4.8
        }
    ]
}