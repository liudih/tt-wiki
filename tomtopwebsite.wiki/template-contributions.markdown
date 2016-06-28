模版
====

简单说，模版是一个函数，具备以下定义：（输入：Html，输出：Html）

    (body: Html) -> Html  （最终结果的 Html）

通常模版会把你的部分 body 内容，嵌入到某个区域，如下：

```html
<html>
<body>
   <div id="navigation">
     ...左边区域：菜单定义...
   </div>
   <div id="content">
     ...右边区域：内容嵌套到这里来...
   </div>
</body>
</html>
```

以上表达的是，如果内容content区域不同，用相同的模版，产生出的 HTML 只会在content区域有变化，
其他地方如navigation区域也会保持一致，以达到风格上的一致性。

依赖分析
=======
由于模版是被各个模块调用，来产生最终的HTML码，在依赖关系的角度分析，每一个模块需要依赖模版所存在的模块，比如说：

* 基础模块 `BASE` 定义了模版 `T`
* 会员模块 `MEMBER` 引用了模版 `T` ，故此 `MEMBER` 需要依赖 `BASE`: `MEMBER` -> `BASE`
* 商品模块 `PRODUCT` 也引用了模版 `T` ，故此 `PRODUCT` 也需要依赖 `BASE`: `PRODUCT` -> `BASE`

由于模版的部分内容如 navigation，很可能是从 `PRODUCT` 模块来的 （如：品类），如果`BASE`直接去`PRODUCT`模块拿数据的话，
这样逻辑上形成了循环依赖：

    PRODUCT -> BASE
    BASE -> PRODUCT

循环依赖在软件架构上是一定要避免的，所以`BASE`直接调用`PRODUCT`的方法，要改变一下思路。

模版扩展性
=========
为了方便其他模块也能贡献到模版的其他非body的区域，我们提供了一个注册方法，让模块启动的时候注册到基础模块，
让基础模块能被其他模块扩展。

模块实现方需要实现 `ITemplateFragmentProvider`，并要在启动的时候通过实现 `ITemplateExtension` 来注册到 BASE 模块。
注册后，BASE模块就能调用每一个 `ITemplateFragmentProvider` 的实现，取到部分 HTML 的内容。

每一个 `ITemplateFragmentProvider` 生成的部分 HTML，我们会用名字来区分，而这个名字需要声明在 `ITemplateFragmentProvider.getName()` 方法。

以下做一个最简单的实现：

```java
public class HelloFragment implements ITemplateFragmentProvider {
	@Override
	public String getName() {
		return "hello";
	}
	@Override
	public Html getFragment() {
		return Html.apply("Hello World!");
	}
}
```

```java
public class HelloModule extends ModuleSupport ITemplateExtension {
	@Override
	public void registerTemplateProviders(
			Multibinder<ITemplateFragmentProvider> binder) {
		binder.addBinding().to(HelloFragment.class);
	}
}
```

最后注册 `HelloModule` 到平台的`Global`上，实现结束。


模版扩展区域的引用
===============

```scala

@(body: Html)
@tp = @{services.base.template.TemplateService.getInstance().getContents()}
<div id="hello-world">
    @tp.get("hello")
</div>
<div id="content">
    @body
</div>

```

参考 [modules/base/app/views/base/master.scala.html](../blob/master/modules/base/app/views/base/master.scala.html)

