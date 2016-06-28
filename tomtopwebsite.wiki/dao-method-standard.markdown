这里统一一下dao、mapper层method的命名。
* 查询:get(Xxxxx)By(Xxxxx),例如getLisingByStatus，getProductBaseBySkuAndSite
* 新增:add(Xxxxx)
* 修改:update(Xxxxx)
* 删除:delete(Xxxxx)

分层
* .mapper
* .dao
* .service 分两种更新与查询的 xxUpdateService, xxEnquiryService  