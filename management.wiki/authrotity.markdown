1:权限管理 通过user_manager（用户表），user_role_map（角色用户映射表），admin_role（角色表）来管理;

2：用户可以通过配置不同的角色，来访问不同的授权请求

3：动态菜单：
       a:不同的角色的用户，只能看见当前角色对应权限的菜单
       b:每个动态菜单的访问，都会检查登录用户是否拥有访问菜单的权限

4：如访问路径不在动态菜单中，但接口有安全性问题，可设置方法级别访问权限@PreAuthorize("hasAuthority('ADMIN')") 
 eg: 拥有ADMIN权限的用户才能访问的方法，如果权限不够，会出现403错误
    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = "/user/create", method = RequestMethod.GET)
    public ModelAndView getUserCreatePage() {
        return new ModelAndView("user_create", "form", new UserCreateForm());
    }