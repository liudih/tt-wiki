用户接口文档
UAT测试地址：http://192.168.220.53:8003/
需用代理地址：member.api.tomtop.com host: http://192.168.220.56
------------------------------------------------
#### 1.删除评论接口  (add by Tony 20160414)
```
POST collect/v1/collects/delete
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| email|   String| 会员邮箱                                  |
| website|   int | 站点ID                               |
| ids|   String    |字符串格式为 listingId,listingId 用逗号分隔                         |

Response  如果成功返回

```
Status: 200 OK
```
```
{
   "ret":1
}