# **产品推荐的获取逻辑**

------------------------

没有设置定时器任务，只有一个手动触发脚本http://localhost:9000/interaction/getrecommend

当手动触发这个开关时，会删掉所有的推荐产品，然后重新获取所有产品的推荐产品，相关代码请看 services.interaction.InteractionEnquiryService.java , 具体方法如下：

```java
    public void getRecommendByBrowse() {
		String dropShipingListing = systemParameterService.getSystemParameter(
				1, 1, "DropShipping", "0092bcc8-d914-1004-874c-d371c9ab96c0");
		List<String> listings = productEnquiryService.getLisingsByStatus(1); //取出所有在售（状态1）的产品
		int deleteCount = productRecommendEnquiryDao
				.deleteAllRecommendProduct();   //删掉所有产品的推荐产品
		Logger.debug("======delete  recomend product count is {} ", deleteCount);
		int count = 0;
		for (String listing : listings) {
			List<String> recommendListings = browseEnquityDao
					.getBrowseListingsByListing(listing);    //根据浏览历史，为每个产品进行推荐其他产品
			for (String recommendListing : recommendListings) {
				if (!dropShipingListing.equals(recommendListing)) {
					int result = productUpdateService.insertProductRecommend(
							listing, recommendListing, "Auto");
					if (result > 0) {
						count++;
					}
				}
			}
		}
		Logger.debug("======insert recomend product count is {} ", count);
	}

```

具体推荐逻辑的方法如下：
```java
	@Select("select clistingid from t_interaction_product_browse where clistingid!=#{0} and cltc in "
			+ " (select cltc from t_interaction_product_browse where clistingid=#{0}) "
			+ "  group by clistingid order by count(1) desc limit 10")
	List<String> getBrowseListingsByListing(String listind);
```










