插件接口
------

# 接口（extensions.payment.IPaymentProvider）

![QQ截图20150902151223](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/cb4767198c/QQ%E6%88%AA%E5%9B%BE20150902151223.jpg)

# 接口中的每一个方法都有注释，解释方法的作用

# 接口的注册（extensions.payment.IPaymentExtension）

![QQ截图20150902152008](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/641bdf67c6/QQ%E6%88%AA%E5%9B%BE20150902152008.jpg)

# 获取支付插件（services.payment.PaymentService）

![QQ截图20150902153308](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/f91e7b19c2/QQ%E6%88%AA%E5%9B%BE20150902153308.jpg)

根据订单标签去过滤支付插件，在scala模版中还会根据国家来显示支付方式:(views/order/payment/new_select.scala.html)

# paypal api 参考：

https://developer.paypal.com/webapps/developer/docs/classic/paypal-payments-standard/integration-guide/formbasics/

https://developer.paypal.com/webapps/developer/docs/classic/paypal-payments-standard/integration-guide/Appx_websitestandard_htmlvariables/#id08A6HF080O3


# 回调数据

* paypal

```json
{
    "mc_gross": "242.47", //订单总金额
    "invoice": "US-0805815-040107", //订单号
    "protection_eligibility": "Eligible", 
    "address_status": "unconfirmed", 
    "tax": "0.00", 
    "payer_id": "QLCEKHF6WDDCY", 
    "address_street": "NO 1 Nan Jin Road", 
    "payment_date": "21:02:26 Aug 04, 2015 PDT", 
    "payment_status": "Completed", //付款状态
    "charset": "gb2312", 
    "address_zip": "200000", 
    "mc_shipping": "0.00", 
    "mc_handling": "0.00", 
    "first_name": "qq", 
    "mc_fee": "8.54", 
    "address_country_code": "CN", //传过去的Country代码
    "address_name": "qq qq", 
    "notify_version": "3.8", 
    "custom": "", 
    "payer_status": "verified", 
    "business": "yaozuodaoforfly@163.com", 
    "address_country": "China", 
    "num_cart_items": "2", 
    "mc_handling1": "0.00", 
    "address_city": "Shanghai", 
    "verify_sign": "A--8MSCLabuvN8L.-MHjxC9uypBtAIpbrF6ToZEDOTGG0Eta8EDoXr59", 
    "payer_email": "2853375175@qq.com", 
    "mc_shipping1": "0.00", 
    "tax1": null, 
    "txn_id": "93U430871U706800C", 
    "payment_type": "instant", 
    "payer_business_name": null, 
    "last_name": "qq", 
    "address_state": "Shanghai", 
    "item_name1": "Photography/VideoStudioTripleLightingKitwith10ft*12ftBlackWhiteGreenMuslinsBackdropsBackgroundSupportSystemwithCase", 
    "receiver_email": "yaozuodaoforfly@163.com", 
    "payment_fee": "8.54", 
    "quantity1": "1", 
    "receiver_id": "ZFGB7CGJGAAGY", 
    "pending_reason": null, 
    "txn_type": "cart", 
    "mc_gross_1": "131.12", 
    "mc_currency": "USD", 
    "residence_country": "CN", 
    "test_ipn": "1", 
    "transaction_subject": "Shopping CartPhotography/VideoStudioTripleLightingKitwith10ft*12ftBlackWhiteGreenMuslinsBackdropsBackgroundSupportSystemwithCaseshipping Cost", 
    "payment_gross": "242.47", 
    "ipn_track_id": "241cc80d5c9e6"
}
```



* OceanPayment

![QQ截图20150908154346](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/cd74e59ab9/QQ%E6%88%AA%E5%9B%BE20150908154346.jpg)

![QQ截图20150908154359](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/d84af331da/QQ%E6%88%AA%E5%9B%BE20150908154359.jpg)

![QQ截图20150908154410](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/dba2b74cb6/QQ%E6%88%AA%E5%9B%BE20150908154410.jpg)
