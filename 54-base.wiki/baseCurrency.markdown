------------------------------------------------
#### 1.价格转换
```
GET   ${website}、base/currency/v1/exchange
```

|  名 称   |   类 型  |                    说明                                         |
| -------- | -------- | -----------------------------------------------                 |
| money | Double | 价格                 |
| oldCy | String | 当前货币  如:USD              |
| newCy | String  | 转换成 目标货币 如:JPY              |

备注:日元想去除小数点 如: moneny=10.29202&oldCy=JPY&newCy=JPY 即可

Response  如果成功返回

```
Status: 200 OK
```
```
{
    "ret": 1,
    "data": 169
}

```