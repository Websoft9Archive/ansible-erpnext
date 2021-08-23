# Parameters

The ERPNext deployment package contains a sequence software (referred to as "components") required for ERPNext to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

This solution use Docker to deploy all service, you can run the command `docker ps` to list them  

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

> erpnext-worker-default is the main container, you can run the command `docker exec -it erpnext-worker-default bash` to connect it

### ERPNext

ERPNext application installation directory:  */data/wwwroot/erpnext*  
ERPNext site installation directory:  */var/lib/docker/volumes/docker-erpnext_sites-vol*  
ERPNext access directory: */var/lib/docker/volumes/docker-erpnext_assets-vol*  
ERPNext logs directory:  */var/lib/docker/volumes/docker-erpnext_logs-vol*   

### Nginx

Nginx default configuration file：*/etc/nginx/conf.d/default.conf*  
Nginx main configuration file： */etc/nginx/nginx.conf*  
Nginx logs directory： */var/log/nginx*  
Nginx pseudo static directory： */etc/nginx/conf.d/rewrite*

### MariaDB on Docker

MariaDB data directory: */data/db/mysql/data*  
MariaDB log directory: */data/db/mysql/logs*  

MariaDB Web Management refer to [MariaDB Management](/admin-mysql.md)

###  phpMyAdmin

phpMyAdmin is a visual MySQL management tool, is installed based on docker.  

phpMyAdmin directory：*/data/apps/phpmyadmin*  
phpMyAdmin docker compose file：*/data/apps/phpmyadmin/docker-compose.yml* 

### Docker

Docker root directory: */var/lib/docker*  
Docker image directory: */var/lib/docker/image*   
Docker daemon.json: please create it when you need and save to to the directory */etc/docker*   

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