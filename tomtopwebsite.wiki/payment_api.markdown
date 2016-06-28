1.获取CLIENT_TOKEN【POST】
----------

接口地址
-------------
 1. 测试地址:http://192.168.220.122:9000/payment/gettoken
 

### 返回结果
{"re":1,"token":"xxxxxxxxxxxx","msg":""}
### 结果集说明
参数名称    |参数类型|备注说明
| :------- | ----: | :---: | :---: | :---: |
re|int|状态码，[1:成功,0:失败]
msg|String|服务器消息
token|String|密钥

2.请求支付接口【POST】
----------
参数名称    | 参数值|参数类型|可否为空|备注说明
| :------- | ----: | :---: | :---: | :---: |
账单地址id(信用卡支付需要)| billAddressId| String|是|
支付方式密匙|payment_method_nonce|String|否|
激活风控需要传的|device_data|String|否|
订单号|order_number|String|否|

接口地址
-------------
 1. 测试地址:http://192.168.220.122:9000/payment/checkout

 

### 返回结果
{"re":1,"msg":""}
### 结果集说明
参数名称    |参数类型|备注说明
| :------- | ----: | :---: | :---: | :---: |
re|int|状态码，[1:成功,0:失败]
msg|String|服务器消息