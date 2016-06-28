REST API
========

### 上传

* 路径（UAT环境）：`http://192.168.7.13/api/v1/img/<NAME>`  (NAME是档案名字，可以包含子目录)
* 方法：POST

例如：
```
POST /api/v1/img/funny/image01.png HTTP/1.1
Content-Type: image/png
Content-Length: xxxx

........你的图片资料..........
```

标准的POST必须有`Content-Length`，请参考HTTP/1.1协议。

### 下载

* 路径（UAT环境）：`http://192.168.7.13/img/<NAME>`  (NAME是档案名字，可以包含子目录)
* 方法：GET


表单提交和PlayFramework的处理
===========================

1. 表单 `<form>` 必须设置 `method="POST" enctype="multipart/form-data"` (这是常识)
2. `<input type="file" name="filefieldname" >` 可以夹杂 text 字段
3. 提交后处理如下

```java
	public Result doUpload() {
		play.mvc.Http.MultipartFormData body = request().body()
				.asMultipartFormData();
		// 资料字段
		String[] data = body.asFormUrlEncoded().get("textfieldname");
		Logger.debug("Data: {}", Arrays.asList(data));
		// 文件字段
		FilePart file = body.getFile("filefieldname");
		Logger.debug("File: {}", file);
		return ok("OK: " + file.getFilename());
	}
```

进阶班可以使用 FineUploader http://fineuploader.com 做更友好的用户界面。