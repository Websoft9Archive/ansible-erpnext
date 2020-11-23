# install erpnext
---
[安装](https://github.com/frappe/frappe/wiki/The-Hitchhiker%27s-Guide-to-Installing-Frappe-on-Linux)   

## 安装简介
erpnext,官网给出三种安装方式:    
其中,docker安装方式优势在于初始化和第一次安装;但是随机化密码困难,docker容器过多,更适用于测试安装;  
而官网给出的一键安装脚本,其本质上是通过本地跑ansible的方式,对我们而言,这种"ansible套ansible"不可控,故不采用;
最终采用手动安装方式

## requirest
MariaDB 10.3
Redis
Node.js 12.X
nginx

## install erpnext requirest package on centos
```shell
   yum install git
   # on python2.7 
   yum install python-setuptools python-pip python-devel
   # on python3.5+
   yum install python3-setuptools python3-pip python3-devel
   yum install python-virtualenv
```

## install erpnext requirest package on ubuntu
```shell

```
## install erpnext 
```shell
   create a user:
   adduser my_user
   usermod -aG sudo my_user
   su - my_user
   
   install and use bench:
   sudo -H pip install frappe-bench
   bench init --frappe-branch version-12 frappe-bench
   bench init --frappe-branch version-12 --python /usr/bin/python3 frappe-bench
  
   cd frappe-bench
   ./env/bin/pip install -e apps/frappe/
   ./env/bin/pip3 install -e apps/frappe/
   bench start
   
   bench new-site  <MY_SITE>
   
```
##  configure
mariadb:
edit /etc/my.cnf:  
[mysqld]  
character-set-client-handshake = FALSE  
character-set-server = utf8mb4  
collation-server = utf8mb4_unicode_ci  

[mysql]  
default-character-set = utf8mb4  

edit /frappe-bench/sites/common_site_config.json:  
"db_host": "127.0.0.1"  
 


























