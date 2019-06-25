# ERPNext自动化安装与部署

本项目是基于Ansible的[ERPNext](https://erpnext.com/)自动化安装脚本，实现在Ansible上一键安装ERPNext。本项目是开源项目，支持MIT开源协议。如果您不熟悉Ansible的使用，您可以直接使用我们在公有云上提供的镜像。

## 操作系统

目前仅支持Ubuntu16.x以上部署此脚本

## 服务器配置要求

最低1核2G，保证有20G磁盘空间，否则安装失败 [详细查看](https://github.com/frappe/bench)

## 版本

本项目采用的ERPNext官方提供的python脚本安装，每次安装均可以保证为最新版（[查看最新版](https://github.com/frappe/erpnext/releases)）。

## 安装指南

本Ansible脚本支持root用户、普通用户（+su权限提升）等两种账号模式，也支持密码和秘钥对登录方式。

其中普通用户登录需要增加变量：

~~~
//假设普通用户的username为
admin_username: websoft9
~~~

注意事项：

- 由于网络环境，即使是海外服务器安装，过程中也有可能出现错误，再次运行即可；
- 官方的ansible playbook的dns_caching role有一个小错误，目前采用fork到自己仓库，修正后将install.py里的仓库地址改为自己的地址，
   install脚本通过ansible从本地上传到服务器；

## 组件
ERPNext,Nginx,JAVA,MYSQL,phpMyAdmin(Docker)

## 使用指南

后台账号：
   - demo_admin/demo_admin
   - demo_user/demo_user
   
配置文件：/data/wwwroot/Knowage-Server-CE/conf/server.xml

文档链接：[readme.txt](readme.txt)
