事件触发支持
==========

我们采用了Guava的EventBus，分开两方面：事件发送方、和监听器。

发送方
=====

* 定义事件的对象和内容：如 `ProductViewEvent`。事件对象是一个普通的POJO。
* 在需要发送事件的地方，调用 `EventBus.post` 方法发布消息。`EventBus` 可以通过 `@Inject` 来获取。

监听方
=====

* 在模块定义对象里，实现 `IEventExtension` ，并在接口里面实现注册监听器。只要注册需要的监听器，你就会收到你想监听的事件。
* 监听器的要求：监听方法需要用 `@Subscribe` 来标注一下，这个方法只有一个参数就是你需要监听事件的对象。

参考
====
https://code.google.com/p/guava-libraries/wiki/EventBusExplained
