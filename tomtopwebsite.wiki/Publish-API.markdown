发布时所需基础信息接口
```             
// 获取平台品类
http://localhost:9000/api/websitecategory/:websiteid/:languageid   
// 品类属性
http://localhost:9000/api/category/attribute
// 产品自定义属性列表                          
http://localhost:9000/api/attribute
// 仓库列表											                                 
http://localhost:9000/base/storage 
// 站点列表
http://localhost:9000/base/website
// 语言列表
http://localhost:9000/base/language
```


Product API 
==============
1.发布产品接口 
ProductUpdateService.createProduct(JsonNode node, String userName)
```
POST http://localhost:9000/api/product/push
content-type:application/json
token:test

[{"websiteId":1,"sku":"F1214R","status":2,"newFromDate":null,"newToDate":null,"special":null,"qty":1000,"price":3.89,"weight":62.01,"cleanrstocks":false,"featured":false,"isNew":false,"hot":null,"visible":true,"categoryIds":[10,60],"items":[{"languageId":1,"title":"New Aluminum Cover Case Shell for SONY PSP 3000 PSP3000","description":"<p>100% Brand New<br />Compatible with Sony PSP 3000 console<br />Anodized aluminum case, ultra slim and lightweight<br />360 degree free angle cover<br />Innovate idea of high reliability<br />Precision molded case for perfectly fitting<br />Protects PSP 3000 console from scratches, drops, damage, dust and other particles<br />Allows easy access to all buttons and ports<br />Durable and colorful aluminum material<br />Gives your PSP console a new look depending on your choice</p><p>NOTE: PSP 3000 console NOT included.</p><p>Colors: black, light golden, red, green, blue optional<br />Dimension: 170*72mm<br />Weight: 25g</p><p>Package include: <br />1* Aluminum Cover Case for SONY PSP 3000 console</p><p>Package weight: 62g</p>","shortDescription":"<p>&#160;</p>","keyword":null,"metaTitle":"New Aluminum Cover Case Shell for SONY PSP 3000 PSP3000 ","metaDescription":"Are you looking for New Aluminum Cover Case Shell for SONY PSP 3000 PSP3000? Come to TOMTOP and get it with only $6.16.","metaKeyword":"Sony PSP Case,  PSP Accessories, PSP Aluminum Case","sellingPoints":null,"url":"new-aluminum-cover-case-shell-for-sony-psp-3000-psp3000-f1214r"}],"images":[{"imageUrl":"http://www.tomtop.com/media/catalog/product/1/2/12628290350_3.jpg","label":null,"order":1,"thumbnail":true,"smallImage":true,"baseImage":true,"showOnDetails":true},{"imageUrl":"http://www.tomtop.com/media/catalog/product/1/2/12628290351_3.jpg","label":null,"order":2,"thumbnail":true,"smallImage":true,"baseImage":true,"showOnDetails":true}],"videos":[{"videoUrl":"","label":null}],"attributes":null,"storages":[1,2],"freight":0.7,"cost":18}]

```
返回结果
```
//成功
[{"sku":"F1214R","websiteId":1,"listingId":"","errorResult":"duplicate SKU: F1214R"}]
//失败
"failure: ..."
```

2.发布多属性产品接口 
ProductUpdateService.createMutilProduct(JsonNode node, String userName)
```
POST http://localhost:9000/api/mutilproduct/push
content-type:application/json
token:test

{"websiteId":1,"sku":"C001","status":1,"newFromDate":1424921494630,"newToDate":1430019094630,"special":false,"qty":10,"price":20.3,"weight":0.5,"cleanrstocks":false,"featured":false,"isNew":true,"hot":false,"visible":true,"categoryIds":[10],"items":[{"languageId":1,"title":"aaaaaaaaaaaaaaaaa test","description":"<p>my desciprt</p>","shortDescription":"my short","keyword":"kool","metaTitle":"m my firt test","metaDescription":"desc","metaKeyword":"kool","sellingPoints":["my point!!1","my point!!2"],"url":null}],"images":[{"imageUrl":"http://img2.tomtop.com/media/catalog/product/cache/1/image/560x560/ced77cb19565515451b3578a3bc0ea5e/2/0/20100614_img_090307.jpg","label":"label","order":1,"thumbnail":true,"smallImage":true,"baseImage":true,"showOnDetails":true}],"videos":[{"videoUrl":"www.youtube.com/embed/2LPjoATwgQA?feature=player_detailpage","label":"label"}],"attributes":[{"keyId":1,"valueId":2}],"storages":[1,2],"parentSku":"C00","multiAttributes":[{"keyId":1,"valueId":1}],"freight":0.7,"cost":18,"mainSku":true}

```
返回结果
```
//成功
[{"sku":"C001","websiteId":1,"listingId":"735464c4-d95e-1004-8635-fa10fb2ebb1a","errorResult":""}]
//失败
"failure: ..."
```
Category API
==============

1.发布基础类别
```
POST http://localhost:9000/api/category/push
content-type:application/json
token:test

[{"id":1,"parentId":null,"path":"","level":0,"position":1,"childrenCount":495,"languageId":1,"name":null,"title":null,"description":null,"keywords":null}]
```
返回结果
```
//成功
successfully
//失败
"failure: ..."
```
2.发布平台类别
```
POST http://localhost:9000/api/websitecategory/push
content-type:application/json
token:test

[{"id":null,"categoryId":1,"parentId":null,"path":"","level":0,"position":1,"childrenCount":495,"name":null,"title":null,"description":null,"keywords":null,"websiteId":1,"content":null}]
```
返回结果
```
//成功
successfully
//失败
"failure: ..."
```

ProductCategory API
==============

1.发布基础产品类别
```
POST http://localhost:9000/api/product/productCategory/push
content-type:application/json
token:test

[{"listingId":"0d16fc35-d914-1004-874c-d371c9ab96c0","categoryIds":[809,811]},{"listingId":"d4e7b697-d929-1004-835b-90389054983d","categoryIds":[807]}]
```
返回结果
```
//成功
successfully
//失败
"failure: ..."
```
