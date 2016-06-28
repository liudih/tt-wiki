* List<ProductImage> getProductImages(String listingId);
  ~~~~
获取产品图片
  ~~~~
	
* Img getImageByPath(String path, boolean withContent);
~~~~
获取图片信息，withcontent：是否返回图片的二进制流
~~~~

* Img getCachedImageByPath(String path, int width, int height);
~~~~
获取已生成的固定像素的图片
~~~~