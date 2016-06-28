产品描述和模版变量
===============

产品描述通过FreeMarker模版引擎进行进一步处理，来达到可以嵌入固定和非固定描述区域（如商品属性）。

提供变量
-------

由于变量的可扩展性，我们使用模块框架来实现变量的贡献。只要在所在的模块对象(实现IModule/ModuleSupport)
同时实现｀IProductDetailVariableExtension`，并在注册方法中把`IProductDetailVariableProvider`注册到
Guice的`Multibinder`中。

实现IProductDetailVariableProvider时，提供变量名称和其变量的值。值是任何Object类，用在产品描述字段中
的FreeMarker变量替换字段。

因为变量值是跟随产品不同而改变。所以获取变量的get接口，提供了相关产品的ProductRenderComposite。可以在
这个ProductRenderComposite中获取产品的相关信息，用来做进一步在数据库获取的操作。

使用变量
-------

在描述字段中插入 `${varname}` 相当于在这个位置里插入该变量的值。

详细请看 FreeMarker 文档.

目前定义了${attributes}， ${product_images}， ${clothing_size_reference}三种变量。

| 变量 | 替换变量的值 |
| -------- | -------- |
| ${attributes}   | 产品的属性和属性值，例如： `颜色`：红色  `大小`：中码  |
| ${product_images}  | 将产品所有的图片展示出来  |
| ${clothing_size_reference}  | 衣服尺寸参考表格和图   |



 