引入javascript
==========
* 现在所有的js都放在base模块下面，结构如下。

* base          
*    |--public
*        |--js
*           |--app                             // 用户实现
*                 |--product                    // 产品模块js
*                      |--controller            // 页面功能分配模块   目录   
*                           -detail.js
*                      |--model                 // 页面功能实现模块类  目录
*                           -Detail.js
*                      -mdetail.js              // 页面入口模块配置
*                 |--...                        //  其他模块js
*            |--lib                             // js插件         目录
*                 -jquery-1.11.2.min.js
*                 -r.js                         
*            -common.js                         // requirejs 基础配置；要添加到入口模块中



　定义好模块后，然后就在模块中引人js，如产品详细页，在 detail.scala.html 中添加如下代码就可以了。
```scala    
@services.base.HtmlUtils.misc().addTail{
	  <script src="@controllers.base.routes.Assets.at("js/lib/r.js")"    data-main="@controllers.base.routes.Assets.at("js/app/product/mdetail")" ></script>
    }
```
参考文档
==========
* http://makingmobile.org/docs/tools/requirejs-api-zh/
* http://www.requirejs.org/docs/start.html

