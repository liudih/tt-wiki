路径定义
-------------------
路径全部是小写;


类路径
--------------
* 路径 模块/功能 

~~~
   如  base模块下面的 layout 功能   /base/layout
~~~


方法路径(参数传递如果是json格式 httpmethod 都用 post)
------------------
* GET 操作 httpmethod 选择  GET
~~~
 一个参数的就用 /get/{param}  如根据id获取  /get/{id}
 多个参数的就用 /get?pageno=1&pagelimit=10 如列表查询 /list?pageno=1&pagelimit=10 
~~~

* UPDATE ADD 操作 httpmethod 选择  POST
~~~
 post的数据要求是json格式 如  /update
~~~
* DELETE 操作 httpmethod 选择  DELETE
~~~
 一个参数的就用 /delete/{param}  如根据id删除  /delete/{id}
 多个参数的就用 /delete?{parame1}=&{param2}=
~~~


