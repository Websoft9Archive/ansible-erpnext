---
sidebarDepth: 3
---

# 参数

ERPNext 预装包包含 ERPNext 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

### ERPNext

ERPNext 应用安装路径:  */data/wwwroot/frappe-bench/apps/erpnext*  
ERPNext 站点安装路径:  */data/wwwroot/frappe-bench/sites*  
ERPNext 数据库配置文件: */data/wwwroot/frappe-bench/sites/erpnext/site_config.json*  
ERPNext 配置文件 : */data/wwwroot/frappe-bench/config*  
ERPNext 日志文件:  */data/wwwroot/frappe-bench/logs*   

### Nginx

Nginx 虚拟主机配置文件：*/etc/nginx/conf.d/default.conf*  
Nginx 主配置文件： */etc/nginx/nginx.conf*  
Nginx 日志文件： */var/log/nginx*  
Nginx 伪静态规则目录： */etc/nginx/conf.d/rewrite*

### Python

Python 安装目录： */usr/lib/python**  
Python 虚拟机目录: */usr/bin/python**  
*is version 2.7/3/3.6/3.7

### Node.js

Node.JS 模块路径: */usr/lib/node_modules*  
Node.JS 日志文件: */root/.pm2/pm2.log*

### MariaDB

MariaDB 安装路径: */usr/local/mysql*  
MariaDB 数据文件 */data/mysql*  
MariaDB 配置文件: */etc/my.cnf*  

MySQL 可视化管理参考 [MySQL 管理](/zh/admin-mysql.md) 章节。

###  phpMyAdmin

phpMyAdmin 是一款可视化 MySQL 管理工具，在本项目中它基于 Docker 安装。  

phpMyAdmin directory：*/data/apps/phpmyadmin*  
phpMyAdmin docker compose file：*/data/apps/phpmyadmin/docker-compose.yml* 

### Redis

Redis 配置文件： */etc/redis.conf*  
Redis 数据目录： */var/lib/redis*  
Redis 日志文件： */var/log/redis/redis.log*


## 端口号

在云服务器中，通过 **[安全组设置](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** 来控制（开启或关闭）端口是否可以被外部访问。 

通过命令`netstat -tunlp` 看查看相关端口，下面列出可能要用到的端口：

| 名称 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| HTTP | 80 | 通过 HTTP 访问 ERPNext | Required |
| HTTP | 443 | 通过 HTTPS 访问 ERPNext| Optional |
| HTTP | 8000 | 通过端口直接访问 ERPNext| Optional |
| TCP | 9090 | 数据库可视化工具 phpMyAdmin | Optional |
| TCP | 3306 | 远程访问 MariaDB 数据库 | Optional |

## 版本号

组件版本号可以通过云市场商品页面查看。但部署到您的服务器之后，组件会自动进行更新导致版本号有一定的变化，故精准的版本号请通过在服务器上运行命令查看：

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# Node.js version
node -v

# Docker Version
docker -v

# ERPNext Version
bench version

# Nginx version
nginx -v

# Python version
python -V

# MariaDB version:
mysql -V

# Redis version
redis-server -v
```