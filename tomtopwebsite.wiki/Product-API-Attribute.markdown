产品属性修改接口
===============

1.添加多属性接口
```
POST http://localhost:9000/api/mutilproduct/attribute
content-type:application/json

{"sku":"G0408W-XL","websiteId":1,"parentSku":"G0408","listingId":"asd-fsfda","multiAttributes":[{"keyId":null,"key": "size","valueId": null,"value":"XL","languangeId":1,"showImg":"false","visible":false}]}
```
结果
```
//成功
successfully
//失败
"failure: ..."
```



2.删除一个多属性产品属性接口（会将同时删除parentSku下所有sku的属性）
```
DELETE http://localhost:9000/api/mutilproduct/attribute/{parentSku}/{key}/{languageId}/{websiteId}

http://localhost:9000/api/mutilproduct/attribute/G0408/Size/1/1

```
结果
```
//成功
successfully
//失败
"failure: ..."
```

3.添加产品属性接口

```
POST http://localhost:9000/api/product/attribute
content-type:application/json

{"sku":"G0408W-XL","websiteId":1,"listingId":"asd-fsfda","attributes":[{"keyId":null,"key": "size","valueId": null,"value":"XL","languangeId":1,"showImg":"false","visible":false}]}
```
结果
```
//成功
successfully
//失败
"failure: ..."
```

4.删除产品属性接口

```
DELETE http://localhost:9000/api/mutilproduct/attribute/{listingid}/{key}/{languageId}

http://localhost:9000/api/product/attribute/5918d6e8-d950-1004-85b9-56e0eef2de30/size/1

```
结果
```
//成功
successfully
//失败
"failure: ..."
```

