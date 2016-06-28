HTML META 的处理
===============

一个在请求中，其上下文Context中我们创建了一个MetaBuilder对象。
只要在Controller中获取并提出更改（不建议在Service层），
`views.html.base.master` 模版会因应这个Meta来显示。

```java
	MetaUtils.currentMetaBuilder().setTitle("一个HTML标题")
			.setDescription("在meta里的description")
			.addKeyword("一个keyword")
			.addKeyword("可以继续多次addKeyword");
```

HTML添加额外Javascript/Stylesheet
================================

通常添加Javascript会在`<head>`段，还有些会放在`</body>`前，所以我们提供下面两个方法，在任何地点（controller, scala.html, fragment等）都可以使用，通常在scala.html会更贴切一点。

```scala
    @import services.base._
    @HtmlUtils.misc().addHead{
        <script src="yoursource.js" />
    }
    @HtmlUtils.misc().addTail{
        <script>
        someOnloadMethod();
        </script>
    }
```

用在重复调用的模版，如果不想每次执行都会额外添加头部和尾部，可以使用 `addHeadOnce` 或 `addTailOnce` 取代 `addHead` 或 `addTail`