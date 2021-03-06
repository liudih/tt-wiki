代码格式 存为xml文件 
eclipse导入路径：window->preferencs->java->Code Style->Code Template

````
<?xml version="1.0" encoding="UTF-8"?>
<templates>
    <template
                autoinsert="false"
                context="filecomment_context"
                deleted="false"
                description="Comment for created Java files"
                enabled="true"
                id="org.eclipse.jdt.ui.text.codetemplates.filecomment"
                name="filecomment">
    /**  
    * @Title: ${file_name}
    * @Package ${package_name}
    * @Description: ${todo}(用一句话描述该文件做什么)
    * @author ${user}
    * @date ${date}
    * @version V1.0  
    */
    </template>
    <template
                autoinsert="false"
                context="typecomment_context"
                deleted="false"
                description="Comment for created types"
                enabled="true"
                id="org.eclipse.jdt.ui.text.codetemplates.typecomment"
                name="typecomment">
    /**
    * @ClassName: ${type_name}
    * @Description: ${todo}(这里用一句话描述这个类的作用)
    * @author ${user}
    * @date ${date}
    *
    * ${tags}
    */
    </template>
    <template
                autoinsert="false"
                context="fieldcomment_context"
                deleted="false"
                description="Comment for fields"
                enabled="true"
                id="org.eclipse.jdt.ui.text.codetemplates.fieldcomment"
                name="fieldcomment">
    /**
    * @Fields ${field} : ${todo}(用一句话描述这个变量表示什么)
    */
    </template>
    <template
                autoinsert="false"
                  context="constructorcomment_context"
                deleted="false"
                description="Comment for created constructors"
                enabled="true"
                id="org.eclipse.jdt.ui.text.codetemplates.constructorcomment"
                name="constructorcomment">
    /**
     * 创建一个新的实例 ${enclosing_type}.
     *
     * ${tags}
     */
    </template>
        <template
                autoinsert="false"
                context="methodcomment_context"
                deleted="false"
                description="Comment for non-overriding methods"
                enabled="true"
                id="org.eclipse.jdt.ui.text.codetemplates.methodcomment"
                name="methodcomment">
    /**
    * @Title: ${enclosing_method}
    * @Description: ${todo}(这里用一句话描述这个方法的作用)
    * @param ${tags}    参数
    * @return ${return_type}    返回类型
    * @throws
 * @author ${user}
    * @date ${date}
    */
    </template>
    <template
                autoinsert="true"
                context="overridecomment_context"
                deleted="false"
                description="Comment for overriding methods"
                enabled="true"
                id="org.eclipse.jdt.ui.text.codetemplates.overridecomment"
                name="overridecomment">
    /* (非 Javadoc)
    * <p>Title: ${enclosing_method}</p>
    * <p>Description: </p>
    * ${tags}
    * ${see_to_overridden}
    */
    </template>
        <template
                autoinsert="true"
                context="delegatecomment_context"
                deleted="false"
                description="Comment for delegate methods"
                enabled="true"
                id="org.eclipse.jdt.ui.text.codetemplates.delegatecomment"
                name="delegatecomment">
    /**
     * ${tags}
     * ${see_to_target}
     */
    </template>
    <template
                autoinsert="false"
                context="gettercomment_context"
                deleted="false"
                description="Comment for getter method"
                enabled="true"
                id="org.eclipse.jdt.ui.text.codetemplates.gettercomment"
                name="gettercomment">
    /**
    * @return ${bare_field_name}
    */
    </template>
    <template
                autoinsert="true"
                context="settercomment_context"
                deleted="false"
                description="Comment for setter method"
                enabled="true"
                id="org.eclipse.jdt.ui.text.codetemplates.settercomment"
                name="settercomment">
    /**
     * @param ${param} the ${bare_field_name} to set
     */
    </template>
 </templates>
`````
​