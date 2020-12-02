---
sidebarDepth: 3
---

# 参数

ERPNext 预装包包含 ERPNext 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

### ERPNext

ERPNext application installation directory:  */data/wwwroot/frappe-bench/apps/erpnext*  
ERPNext site installation directory:  */data/wwwroot/frappe-bench/sites*  
ERPNext database configuration file: /data/wwwroot/frappe-bench/sites/erpnext/site_config.json  
ERPNext configuration : */data/wwwroot/frappe-bench/config*  
ERPNext logs directory:  */data/wwwroot/frappe-bench/logs*   

### Node.js

Node.JS modules directory: */usr/lib/node_modules*  
Node.js application directory: */data/wwwroot*  
Node.JS log file: */root/.pm2/pm2.log*

### MariaDB

MariaDB data directory: */data/mysql*  
MariaDB configuration file: */etc/my.cnf*    
MariaDB Web Management URL: *http://Internet IP/phpmyadmin*, [get credential](/stack-accounts.md)

### phpMyAdmin

phpMyAdmin installation directory: */data/apps/phpmyadmin*  
phpMyAdmin configuration file: */data/apps/phpmyadmin/config.inc.php*   
phpMyAdmin vhost configuration file: */etc/httpd/conf.d/phpMyAdmin.conf* or */etc/nginx/php.conf* 



## 端口号

在云服务器中，通过 **[安全组设置](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** 来控制（开启或关闭）端口是否可以被外部访问。 

通过命令`netstat -tunlp` 看查看相关端口，下面列出可能要用到的端口：

| 名称 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| HTTP | 80 | 通过 HTTP 访问 ERPNext | Required |
| HTTP | 443 | 通过 HTTPS 访问 ERPNext| Required |
| TCP | 9090 | phpmyadmin 可视化工具 | Optional |
| TCP | 3306 | mariadb 数据库 | Optional |

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

# MariaDB version:
mysql -V

# Redis version
redis-server -v

```