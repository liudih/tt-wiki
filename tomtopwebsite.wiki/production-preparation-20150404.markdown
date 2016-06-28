上线内容
=======
* www.tomtop.com 指定到新网站
* 保持就有图片路径在线 (http://www.tomtop.com/media/catalog/xxxxxx）
* ERP对接部分：
    * 主要信息
        * ERP推送广告到新网站
        * ERP从新网站拉下订单
    * 其他信息
        * 物流信息推送到新网站

上线步骤
=======
1. 增加 img.tomtop.com 指向旧网站 （74.86.127.114）（已存在）
2. 修改 www.tomtop.com 指向新网站 （198.11.253.50）
3. 新站的 Nginx 做个重定向（/media/catalog/*）到 旧网站

注意事项
-------
* 以后新的图片服务器上线后，img.tomtop.com 会指向新的图片服务器（路径兼容性需要新图片服务器保障）
* 重定向规则 www.tomtop.com/media/catalog/*  ->  img.tomtop.com/media/catalog/* 仍然保留
* 所有新广告尽量用 img.tomtop.com 域名发布

影响部门
=======
* 新品上线流程涉及到的部门：图片上传、描述和价格调整、属性设定
* 处理订单的部门：监控一段时间

