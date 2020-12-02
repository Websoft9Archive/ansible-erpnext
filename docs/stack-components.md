# Parameters

The ERPNext deployment package contains a sequence software (referred to as "components") required for ERPNext to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

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

## Ports

You can control(open or shut down) ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** of your Cloud Server whether the port can be accessed from Internet.

You can run the cmd `netstat -tunlp` to list all used ports, and we list the following most useful ports for you:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| HTTP | 80 | HTTP requests for ERPNext Console| Required |
| HTTP | 443 | HTTP requests for ERPNext Console| Required |
| TCP | 9090 | phpmyadmin web GUI tool | Optional |
| TCP | 3306 | mariadb server | Optional |

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

# MariaDB version:
mysql -V

# Redis version
redis-server -v

```