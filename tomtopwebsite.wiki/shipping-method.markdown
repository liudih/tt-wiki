# 筛选物流方式及计算物流费用

筛选物流（services.shipping.ShippingMethodService）
------

* 先决条件（valueobjects.order_api.shipping.ShippingMethodRequst）：

```java      
private Integer storageId;//仓库ID
private String country;//国家代码
private Double weight;//总重量
private Double shippingWeight;//计算重量（减去免邮sku的重量）
private Integer lang;//语言ID
private Double grandTotal;//总价格
private List<String> listingIds;//listingID的list
private Boolean isSpecial;//是否包含特殊商品
private String currency;//货币代码 
private Integer websiteId;//站点ID
```

* 获取参数的方法

1.weight（总重量）：

services.order.FreightService

```java 
Double getTotalWeight(Map<String, Integer> map,Boolean isNeedFreeShippingLabel);
```
其中，map是以listingID为key，qty为value的Map，isNeedFreeShippingLabel为是否将免邮加入运算，获取总重量这里为isNeedFreeShippingLabel = false。

2.shippingWeight（计算重量）：同上，isNeedFreeShippingLabel = true。

3.isSpecial（是否包含特殊商品）：

services.shipping.ShippingMethodService

```java 
boolean isSpecial(List<String> listingIds);
```

* 获取物流方式

services.shipping.ShippingMethodService

```java
ShippingMethodInformations getShippingMethodInformations(ShippingMethodRequst requst);
```

1.将参数传入数据库得到原始数据

services.shipping.ShippingMethodService

```java 
List<ShippingMethodDetail> getShippingMethods(Integer storageId,String country, Double weight, Integer lang, Double subTotal,Boolean isSpecial);
```

SQL如下：

```xml
<select id="getShippingMethods"  resultType="dto.ShippingMethodDetail">
	select m.*,d.cname, d.ctitle, d.ccontent, d.cfreecontent, d.ilanguageid, d.cimageurl, d.igroupid 
	from t_shipping_method m 
	inner join t_shipping_method_detail d on d.ccode = m.ccode 
	where m.istorageid = ${storageId} 
	and (m.ccountrys like '%${country}%' or m.ccountrys is null) 
	and (${weight} &lt; m.iendweight and ${weight} &gt;= m.istartweight) and 
	d.ilanguageid = #{lang} and m.benabled = true 
	and (#{price} &lt; m.fendprice and #{price} &gt;= m.fbeginprice) 
	<if test="isSpecial != false">
		and m.bisspecial = #{isSpecial} 
	</if>
	order by iid 
</select>
```

2.一些empty的处理

services.shipping.ShippingMethodService

```java
List<ShippingMethodDetail> list = methodMapper.getShippingMethods(
	storageId, country, weight, lang, subTotal, isSpecial);
if (list.isEmpty()) {
	list = methodMapper.getShippingMethods(storageId, country, weight,
		languageService.getDefaultLanguage().getIid(), subTotal,
		isSpecial);
}//可能是语言导致的empty
storageId = storageEnquiryService.getNotOverseasStorage().getIid();
if (list.isEmpty()) {
	list = methodMapper.getShippingMethods(storageId, country, weight,
		languageService.getDefaultLanguage().getIid(), subTotal,
		isSpecial);
}//可能是仓库导致的empty
```

3.计算物流费用，填充物流信息

4.过滤物流

services.shipping.ShippingMethodService

```java
List<ShippingMethodInformation> filterShippingMethod(Collection<ShippingMethodInformation> list, Boolean isSpecial);
```

同一code只留价格最高的一个

同一groupid如果存在特殊和非特殊的方式，则去掉特殊的，取非特殊中最高的价格

同一groupid若不存在特殊和给特殊的方式，则留价格最高的一个

5.对物理方式的后期处理

services.shipping.ShippingMethodService

```java
List<ShippingMethodInformation> processingInPlugin(List<ShippingMethodInformation> list, ShippingMethodRequst requst);
```

插件

extensions.order.shipping.IFreightPlugin

```java
public interface IFreightPlugin {
	/**
	 * 处理过程
	 * 
	 * @param list
	 *            滤后的List<ShippingMethodInformation>
	 * @param requst
	 * @return 返回处理后的List<ShippingMethodInformation>
	 */
	public List<ShippingMethodInformation> processing(
			List<ShippingMethodInformation> list, ShippingMethodRequst requst);

	/**
	 * 处理顺序，越大越后处理
	 * 
	 * @return
	 */
	public int order();
}
```


计算物流费用（services.order.FreightService）
------

* 计算方法

```java
public Double getFinalFreight(ShippingMethodDetail shippingMethod,
		Double weight, Double shippingWeight, String currency,
		double grandTotal) {
	Double actualWeight = weight;
	// 如果是免邮的，则取去掉了免邮产品之后的重量
	if (shippingMethod.getBexistfree()) {
		actualWeight = shippingWeight;
	}
	Double freight = getFreight(shippingMethod, actualWeight, currency);
	Logger.debug("************** freight: {} **************", freight);
	if (null == freight) {
		return null;// 这里返回null是因为后面需要null值来进行一些判断
	}
	return freight;
}
```