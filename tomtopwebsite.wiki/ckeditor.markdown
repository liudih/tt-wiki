使用ckeditor的步骤：

1.在html页面head中引入js: ckeditor.js;

2.在需要ckeditor标签的
```html
<textarea name="textareaName" ></textarea>
如不需修改当前编辑器的样式，可以使用
<script type="text/javascript">
   CKEDITOR.replace('textareaName');  //替换页面中name为textareaName的标签为ckeditor编辑器,如果没有找到name为textareaName的标签,会查找id为textareaName的标签
</script>
```

若需要修改样式，
```html
<script type="text/javascript"> 
	CKEDITOR.replace('textareaName', {
	      height : 300,  //修改编辑器的高度
	      width : 837
              // 还可以修改皮肤、样式等等
	});
        //如果需要给编辑框内容添加样式或者验证：
	CKEDITOR.config.bodyClass = 'className';   //className为需要添加的验证或样式
</script>
```
如若修改系统中所有编辑器的样式或功能,可以在config.js中进行修改，具体可以参考ckeditor文档.


3.提交表单时,要在js中添加
```js
for ( instance in CKEDITOR.instances )
   CKEDITOR.instances[instance].updateElement();
```
用来获取文本编辑器的值，传送给当前替换的文本标签.
获取编辑器的内容可以使用 
```js
CKEDITOR.instances[textareaName].getData();
```