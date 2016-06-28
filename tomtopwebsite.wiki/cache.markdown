缓存 Cache
==========
一个函数的返回结果，可以通过注解`CachaResult`进行缓存。

做缓存前，特别注意以下几点。不注意的话，可能会做成回话的交叉结果，导致安全隐患。

注意事项
=======
1. 函数输出，是绝对通过输入参数来判断的，不存在任何外在因数影响结果
2. 必须考虑缓存的时效

说明
====
函数的输入输出，必须有必然关系。下面的例子，如果做缓存，结果会非常危险：

```java
    @CacheResult
    public Price getPrice(String listingID) {
        // 计算价格的时候，会员的分组直接影响计算方法
    }
```

在业务定义上我们知道，会员分组会影响批发价格。
但是因为参数列没有会员相关信息，推论在这个方法里，程序会调用其他服务找到当前会员。

如果在这个方法做了结果缓存，导致第一次调用这个方法的时候，假如是A会员身份，
而当会员B登入后，也用这个方法来查询相同ListingID的价格，结果会拿到A会员的第一次调用的缓存价格。

这个问题的触发点是因为参数列没有包括当前会员信息。

抽象点说，任何需要做缓存的函数，必须在输入参数，和输出参数，有必然的关系，而且没有其他因数会影响到函数结果。

CacheResult应用
===============

任何Guice管理的对象，其方法都可以用 @CacheResult。

CacheResult注解有两个配置项：
1. @CacheResult("config")
2. @CacheResult(expiration=300)

第一个方式，我们用application.conf的配置来说明这个方法的结果到底需要缓存多久

```ini
# application.conf
cache.price=60
cache.product.rating=300
```

* 如果我们用 @CacheResult("price") 缓存时间为 60 秒。
* 如果我们用 @CacheResult("product.rating") 缓存时间为 300 秒。

第二个方式，直接注明expiration 时间。



