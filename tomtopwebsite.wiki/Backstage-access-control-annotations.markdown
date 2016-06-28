
后台菜单权限控制的注解使用步骤


   1.在t_admin_menu表中找到菜单相应英文名称（cenname);例如：基本信息管理--->BasicInfoMgr

   2.在需要用到权限控制的方法或类上面添加注解控制，例如：广告管理

        @AdminRole(menuName="AdvertTwoLevelMgr")

	    public Result advertisingList(int page) {

        ｝

   3.注解解析：第一步会根据你写的 menuName找到菜单ID，再根据你登录的名称找到相应的角色ID，

     到t_admin_menu_role_map表查询你是否有权限查看此菜单，如果没有直接跳入登录界面。

   备注：t_admin_menu表的cenname列我已经添加了唯一键限制，以后添加菜单的时候注意一定要填写此列的值。
