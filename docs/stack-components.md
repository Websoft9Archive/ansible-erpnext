# Parameters

The ERPNext deployment package contains a sequence software (referred to as "components") required for ERPNext to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

### ERPNext

ERPNext application installation directory:  */data/wwwroot/frappe-bench/apps/erpnext*  
ERPNext site installation directory:  */data/wwwroot/frappe-bench/sites*  
ERPNext database configuration file: /data/wwwroot/frappe-bench/sites/erpnext/site_config.json  
ERPNext configuration : */data/wwwroot/frappe-bench/config*  
ERPNext logs directory:  */data/wwwroot/frappe-bench/logs*   

### Nginx

Nginx default configuration file：*/etc/nginx/conf.d/default.conf*  
Nginx main configuration file： */etc/nginx/nginx.conf*  
Nginx logs directory： */var/log/nginx*  
Nginx pseudo static directory： */etc/nginx/conf.d/rewrite*

### Python

Python application installation directory： */usr/lib/python*   
Python virtual directory：: */usr/bin/python*  
*is version 2.7/3/3.6/3.7  

### Node.js

Node.JS modules directory: */usr/lib/node_modules*  
Node.JS log file: */root/.pm2/pm2.log*

### MariaDB

MariaDB installation directory: */usr/local/mysql*  
MariaDB data directory: */data/mysql*  
MariaDB configuration file: */etc/my.cnf*    

MariaDB Web Management refer to [MariaDB Management](/admin-mysql.md)


###  phpMyAdmin

phpMyAdmin is a visual MySQL management tool, is installed based on docker.  

phpMyAdmin directory：*/data/apps/phpmyadmin*  
phpMyAdmin docker compose file：*/data/apps/phpmyadmin/docker-compose.yml* 

### Redis

Redis configuration file： */etc/redis.conf*  
Redis data directory： */var/lib/redis*  
Redis logs directory： */var/log/redis/redis.log*

## Ports

Open or close ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/tech-instance.html)** of your Cloud Server to decide whether the port can be accessed from Internet.  

You can run the cmd `netstat -tunlp` to check all related ports.  

The following are the ports you may use:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| HTTP | 80 | HTTP requests for ERPNext Console| Required |
| HTTP | 443 | HTTP requests for ERPNext Console| Optional |
| HTTP | 8000 | access ERPNext server by ip&port | Optional |
| TCP | 9090 | mariadb web GUI tool phpmyadmin | Optional |
| TCP | 3306 | remote to mariadb server | Optional |

## Version

You can see the version from product page of Marketplace. However, after being deployed to your server, the components will be automatically updated, resulting in a certain change in the version number. Therefore, the exact version number should be viewed by running the command on the server:

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