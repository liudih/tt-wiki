用户接口文档
UAT测试地址：http://192.168.220.55:8086/
需用代理地址：member.api.tomtop.com host: http://192.168.220.56
------------------------------------------------
#### 1.登陆验证
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
#### 2.用户注册
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
| client|   int    | 站点ID    不是必须,默认为=1 |
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
#### 9.根据UUID获取邮箱账号
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