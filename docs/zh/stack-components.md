---
sidebarDepth: 3
---

# 参数

ERPNext 预装包包含 ERPNext 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

本部署方案中的 ERPNext 采用 Docker 部署，运行 `docker ps` 查看运行的容器。

```
CONTAINER ID   IMAGE                        COMMAND                  CREATED             STATUS             PORTS                                       NAMES
949746dc0e88   frappe/frappe-socketio:v13   "docker-entrypoint.s…"   About an hour ago   Up About an hour                                               erpnext-socketio
030c4324b810   frappe/erpnext-worker:v13    "docker-entrypoint.s…"   About an hour ago   Up About an hour                                               erpnext-schedule
5816692bb579   frappe/erpnext-worker:v13    "docker-entrypoint.s…"   About an hour ago   Up About an hour                                               erpnext-worker-long
09b2e2242549   frappe/erpnext-worker:v13    "docker-entrypoint.s…"   About an hour ago   Up About an hour                                               erpnext-worker-short
2252928c2230   frappe/erpnext-worker:v13    "docker-entrypoint.s…"   About an hour ago   Up About an hour                                               erpnext-worker-default
4108b4ca06d5   redis:latest                 "docker-entrypoint.s…"   About an hour ago   Up About an hour   6379/tcp                                    erpnext-redis-cache
bbe639069a28   redis:latest                 "docker-entrypoint.s…"   About an hour ago   Up About an hour   6379/tcp                                    erpnext-redis-queue
29f4870961b4   mariadb:10.3                 "docker-entrypoint.s…"   About an hour ago   Up About an hour   0.0.0.0:3306->3306/tcp, :::3306->3306/tcp   erpnext-mariadb
9aecda1e6f3e   redis:latest                 "docker-entrypoint.s…"   About an hour ago   Up About an hour   6379/tcp                                    erpnext-redis-socketio
a404ca45d127   frappe/erpnext-nginx:v13     "/docker-entrypoint.…"   About an hour ago   Up About an hour   0.0.0.0:8000->80/tcp, :::8000->80/tcp       erpnext-nginx
39d908b3132e   frappe/erpnext-worker:v13    "docker-entrypoint.s…"   About an hour ago   Up About an hour                                               erpnext-worker
```

> erpnext-worker-default 为项目主容器

### ERPNext

ERPNext 路径:  */data/wwwroot/erpnext*  
ERPNext 数据库配置文件: */data/wwwroot/erpnext/.env*  
ERPNext 日志路径:  */data/wwwroot/erpnext/volumes/erpnext-logs-vol*  
ERPNext 应用路径 : */data/wwwroot/frappe-bench/volumes/erpnext-site-vol*  
ERPNext 附件路径:  */data/wwwroot/frappe-bench/volumes/erpnext-assets-vol*   

### Nginx

Nginx 虚拟主机配置文件：*/etc/nginx/conf.d/default.conf*  
Nginx 主配置文件： */etc/nginx/nginx.conf*  
Nginx 日志文件： */var/log/nginx*  
Nginx 伪静态规则目录： */etc/nginx/conf.d/rewrite*

### MariaDB

MariaDB 数据目录 */data/db/mariadb/data*  
MariaDB 日志目录: */data/db/mariadb/log*  
MariaDB 配置文件：*/data/db/mariadb/config/conf.d*  

MySQL 可视化管理参考 [MySQL 管理](/zh/admin-mysql.md) 章节。

###  phpMyAdmin

phpMyAdmin 是一款可视化 MySQL 管理工具，在本项目中它基于 Docker 安装。  

phpMyAdmin directory：*/data/apps/phpmyadmin*  
phpMyAdmin docker compose file：*/data/apps/phpmyadmin/docker-compose.yml* 

### Docker

Docker 根目录: */var/lib/docker*  
Docker 镜像目录: */var/lib/docker/image*   
Docker daemon.json 文件：默认没有创建，请到 */etc/docker* 目录下根据需要自行创建   

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

# Docker Version
docker -v

# Nginx version
nginx -v
```