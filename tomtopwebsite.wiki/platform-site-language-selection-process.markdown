Input (New Visit)
=================

1. Server Hostname (vhost): www.tomtop.com
2. Client IP Address (client_ip): 113.91.227.155

Process
=======

1. vhost 如果能在 t_website 找到的，直接用 t_website 所描述的语言、币种，因为用户是直接去相关网站（如：es.tomtop.com）
  * vhost -> platform, language (t_website)
2. 不然，用地理位置判断：
  * client_ip -> country (GeoIP service)
  * 截取 vhost 域名匹配 t_platform -> platform_id
  * country, platform_id -> website (t_country_website)

Output
======
1. Cookie: `TT_LANG`
2. Cookie: `TT_SITE`
