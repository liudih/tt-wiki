
  **产品详情页各模块说明**
-------------

整个产品详情页是在product模块 views.product.detail.scala.html ,整个产品详情页是有很多个小模块组成的，如下：

![各个模块介绍](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/35a8bf2e54/%E5%90%84%E4%B8%AA%E6%A8%A1%E5%9D%97%E4%BB%8B%E7%BB%8D.png)

其中每一个编号代表的是一个模块。

> 产品详情页是以贡献的方式得到的，由多个模块贡献组成,相关的类如下：
* IProductFragmentPlugin.java    
* IProductFragmentProvider.java   各个模块获取该片段的
* IProductFragmentRenderer.java
* 
* 


## 一、**面包屑导航**
### 在detail.scala.html中对应位置
```javascript
@renderer.renderFragment(vo, "breadcrumb")
```
### **相关类**
* ProductBreadcrumbFragmentProvider.java  获取数据
* ProductBreadcrumbFragmentRenderer.java  返回页面


# **二、产品橱窗图**
### 产品橱窗图在detail.scala.html对应的位置为：
```javascript
@renderer.renderFragment(vo, "images")
```

![橱窗图](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/805f35bc26/%E6%A9%B1%E7%AA%97%E5%9B%BE.jpg)

图中分为三个区域在图中标记为1,2,3 ,当进入产品详情页面时候，位置1和位置3放置的是产品的主图，位置2是产品的缩略图

### 相关类 product模块 
* services.product.fragment.ProductImagesFragmentProvider.java （获取产品橱窗图数据的类）
* services.product.fragment.renderer.ProductImagesFragmentRenderer.java (渲染返回html页面的类)
* views.product.fragment.product_images.scala.html (橱窗图模块具体展示页面 )
* valueobjects.product.ProductImages.java (返回到页面的 valueobject)，其中值得注意一下,在这个valueobject的构造方法里面调用的排序，如下：

```javascript
public ProductImages(List<ProductImage> images) {
		this.images = images;
		this.thumbnails = Lists.newLinkedList(Collections2.filter(images,
				i -> i.getBthumbnail()));
		this.baseImages = Lists.newLinkedList(Collections2.filter(images,
				i -> i.getBbaseimage()));
		this.smallImages = Lists.newLinkedList(Collections2.filter(images,
				i -> i.getBsmallimage()));
		Collections.sort(thumbnails, new ProductImageComparator());   //缩略图第一次排序
		Collections.sort(thumbnails, new ProductImageComparator2());  //缩略图第二次排序
		Collections.sort(baseImages, new ProductImageComparator());   //根据主图排序
		Collections.sort(smallImages, new ProductImageComparator());  //根据小图排序
	}
```
具体的排序方法，请详看valueobjects.product.ProductImages.java这个valueobject


### **三、产品基本信息**

产品的基本信息包括： title, sku, 原价, 促销价(倒计时), 卖点, 分享等。

![详情页产品信息](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/49f37b63f8/%E8%AF%A6%E6%83%85%E9%A1%B5%E4%BA%A7%E5%93%81%E4%BF%A1%E6%81%AF.png)

* @renderer.renderFragment(vo, "base")包括了上图中的1,2,3
* @renderer.renderFragment(vo,"entity-map")上图中并没有体现，这是针对多属性产品的，会展示多属性产品
* @** @renderer.renderFragment(vo, "selling-points") **@    图中4体现， 卖点目前是被屏蔽了
* @renderer.renderFragment(vo, "product-storage")  产品所在仓库
* @renderer.renderFragment(vo, "price_match")图中5的第一个部分
* @renderer.renderFragment(vo, "wholesale_inquiry")图中5的第二个部分
* @renderer.renderFragment(vo, "report_error")图中5的第三个部分
				

### **产品片段provider and renderer**

![product1](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/0d7655b27d/product1.png)
![product2](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/472b3ff970/product2.png)


## **三、产品描述**

![product3](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/9d773a8b94/product3.png)

产品描述值得注意的地方是：**description = entity_map + description + images**

我们可以在查询product base 信息sql 中发现，如下图：

![product_description](http://192.168.7.15:10080/uploads/tomtopwebsite/tomtopwebsite/496899f81d/product_description.png)

我们在上图中可以发现${attributes} 和 ${product_images} 这两个东西，我们称它为 `描述变量`，具体文档请详看 [产品描述和模版变量](product-detail-variables) 

### **相关类**
* IProductDescriptionVariableProvider.java  产品描述变量接口
* ProductAttributeVariableProvider.java    获取产品属性
* ProductImagesVariableProvider.java       获取产品图片
* ProductDescriptionRenderer.java          使用freemark的一些方法，替换之前提到的${attributes} 和 ${product_images}这两个变量。


>  # **产品其他模块的数据获取和展示方式，都与上面提到的几个示例类似，再此不在累赘叙述......**
