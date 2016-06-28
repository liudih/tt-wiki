用户接口文档
UAT测试地址：http://192.168.220.55:8086/
需用代理地址：member.api.tomtop.com host: http://192.168.220.56
------------------------------------------------
#### 1.登陆验证 (已升级V2往下看)
```
POST   ${website}/member/v1/login
```
注：Parameters 必须以json格式请求

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String    | 邮箱账号  必须|
| pwd|   String    | 密码  必须                            |
| client|   int    | 站点ID    不是必须,默认为=1                             |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "id": 12,
        "email": "2853789707@qq.com",
        "account": "2853789707@qq.com",
        "country": "AT",
        "token": "4575131530a7ace8bb75da9477d4f9a0",
        "uuid": "24929554-abf1-46db-9295-54abf1d6dbe4"
    }
}

```
------------------------------------------------
#### 2.用户注册 (已升级V2往下看)
```
PUT   ${website}/member/v1/register
```
注：Parameters 必须以json格式请求

|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |
| email|   String    | 邮箱账号  必须|
| pwd|   String    | 密码  必须|
| countryShort|   String | 国家简写   必须 |
| client|   int    | 站点ID    不是必须,默认为=1 |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}

```
------------------------------------------------
#### 3.忘记密码发送
```
POST   ${website}/findpwd/v1/send
```
注：Parameters 必须以json格式请求

|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |
| email|   String    | 邮箱账号  必须|
| website|   int    | 站点ID    不是必须,默认为=1 |
| lang|   int    | 语言ID    不是必须,默认为=1 |
Response  如果成功返回


```
Status: 200 OK
```
```
{
    "ret": 1
}

```
------------------------------------------------
#### 4.修改忘记密码
```
POST   ${website}/findpwd/v1/alert
```
注：Parameters 必须以json格式请求

|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |
| cid |   String    | uuid  必须|
| pwd |   String    | 密码 必须|
| website|   int    | 站点ID    不是必须,默认为=1 |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}

```
------------------------------------------------
#### 5.获取第三方登陆链接
```
GET   ${website}/other/v1/signIn
```

|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": [
        {
            "url": "https://www.facebook.com/dialog/oauth?client_id=826674510776293&redirect_uri=http://127.0.0.1:9003/other/facebook&response_type=code&scope=email",
            "type": "facebook"
        },
        {
            "url": "https://accounts.google.com/o/oauth2/auth?client_id=438380739349-aic3n3kmkb4o2uio19675n0sqj9r1v9r.apps.googleusercontent.com&redirect_uri=http://127.0.0.1:9003/other/google&response_type=code&state=state&scope=https://www.googleapis.com/auth/plus.login email",
            "type": "google"
        },
        {
            "url": "https://www.sandbox.paypal.com/webapps/auth/protocol/openidconnect/v1/authorize?client_id=AUOCRsoRDtP7rDk3jYVh_YQrsiTZoS_YSFqcvZKwGvjAuX7yQRVU-dfK470WcjX7UZB1j2xoz9AmBsRx&redirect_uri=http://127.0.0.1:9003/other/paypal&response_type=code&scope=openid email phone profile address",
            "type": "paypal"
        }
    ]
}

```
------------------------------------------------
#### 6.FaceBook登陆回调
```
GET   ${website}/other/facebook
```

|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |
| code |   String    | token  必须|

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}

```
------------------------------------------------
#### 7.Google登陆回调
```
GET   ${website}/other/google
```

|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |
| code |   String    | token  必须|

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}

```
------------------------------------------------
#### 8.Paypal登陆回调
```
GET   ${website}/other/paypal
```

|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |
| code |   String    | token  必须|

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}

```
------------------------------------------------
#### twitter获取第三方登陆链接
```
GET   ${website}/other/v1/signIn/twitter
```

|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |

Response  如果成功返回

```
Status: 200 OK
```
```
{"ret":1,"data":"https://api.twitter.com/oauth/authenticate?oauth_token=Osw10wAAAAAAvxKYAAABVZDWxZw"}
```

#### twitter登陆回调
```
GET   ${website}/other/callback/twitter
```

|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |
| oauth_verifier |   String    | token  必须|

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}

```
------------------------------------------------
#### 9.根据UUID获取邮箱账号(已升级V2往下看)
```
GET  ${website}/member/v1/email/{uuid}
```
注：Parameters 必须以json格式请求

|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |
| uuid|   String    | uuid  必须|


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}
```
------------------------------------------------
#### 10. 会员中心修改密码
```
POST   findpwd/v1/pwd/_update
```
注：Parameters 必须以json格式请求

{"cemail":"bladefy@gmail.com","cpassword":"cnewpassword","cnewpassword":"bladefy@gmail.com","ccnewpassword":"bladefy@gmail.com","client":1,"cuuid":"39c5d9cf-175e-47f6-85d9-cf175e97f6d4"}


|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |
| cemail|   String    | 会员邮箱 必须|
| cpassword|   String    | 旧密码 必须|
| cnewpassword|   String        | 新密码 |
| ccnewpassword|   String        | 新确认密码 |
| website|   Integer| 站点ID |
| cuuid|   String | UUID |


Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}

```

#### 11.登陆验证 .v2
```
POST   ${website}/member/v2/login
```
注：Parameters 必须以json格式请求

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String    | 邮箱账号  必须|
| pwd|   String    | 密码  必须                            |
| website|   int    | 站点ID    不是必须,默认为=1                             |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": {
        "id": 12,
        "email": "2853789707@qq.com",
        "account": "2853789707@qq.com",
        "country": "AT",
        "token": "4575131530a7ace8bb75da9477d4f9a0",
        "uuid": "24929554-abf1-46db-9295-54abf1d6dbe4"
    }
}

```
------------------------------------------------
#### 12.用户注册 .V2
```
PUT   ${website}/member/v2/register
```
注：Parameters 必须以json格式请求

|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |
| email|   String    | 邮箱账号  必须|
| pwd|   String    | 密码  必须|
| countryShort|   String | 国家简写   必须 |
| website|   int    | 站点ID    不是必须,默认为=1 |

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}
```
------------------------------------------------
#### 13.根据UUID获取邮箱账号 .V2
```
GET  ${website}/member/v2/email/{uuid}
```
注：Parameters 必须以json格式请求

|  名 称   |   类 型  |                    说明  |
| -------- | -------- | ----------------------------------------------- |
| uuid|   String    | uuid  必须|
| website|   int| 站点ID  必须|

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1
}
