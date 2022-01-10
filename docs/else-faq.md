# FAQ

#### Which install solution for this ERPNext?

Use Docker installation, you can access our [Docker-Compose for ERPNext](https://github.com/Websoft9/docker-erpnext) open source project on Github

#### Can I install ERPNext by **Manual installation**?

Yes, the general installation process of ERPNext is as follows:

1. Use the **bench** command to initialize a Frappe framework
2. Install ERPNext app
3. Create a site with the same name as ERPNext
4. Connect the site with the app

#### What are the relationship and difference between Frappe, bench and ERPNext?

[ERPNext](https://github.com/frappe/erpnext) is based on Frappe for free ERP framework development.  
[Frappe](https://github.com/frappe/frappe) is a framework for rapid development of JS and Python integrated applications.  
[Bench](https://github.com/frappe/bench) is a CLI tool of Frappe framework, which used to create and manage Frappe by commands.

#### Why should create *site* for ERPNext installation?

Frappe framework is mainly composed of two parts: app and site. App is the back-end Python code, and site is the front-end part for handling HTTP requests.

#### Does ERPNext support external databases?

Yes. Just need to modify the [database configuration file](/zh/stack-components.md#erpnext) and add db_host items in it.   
For more database connection parameters, please refer to the official document [Standard Config](https://frappeframework.com/docs/user/en/basics/site_config#mandatory-settings)

#### What databases does ERPNext support?

MariaDB and PostgreSQL

#### What is the password for the database root user?

The password is stored in the server related file: `/credentials/password.txt`

#### Is there a web-base GUI database management tools?

Yes, phpMyAdmin is on it, visit by *http://Server's Internet IP:9090*

#### Is it possible to modify the source path of ERPNext?

Not recommended

#### Is there API documentation for ERPNext?

Yes, including python, JavaScript, Jinja API, refer to the official document [ERPNext API](https://frappeframework.com/docs/user/en/api)

#### How to change the permissions of filesytem?

Change owner(group) or permissions like below:

```shell
chown -R apache.apache /data/wwwroot/erpnext
find /data/wwwroot/erpnext -type d -exec chmod 750 {} \;
find /data/wwwroot/erpnext -type f -exec chmod 640 {} \;
```

#### What's the difference between Deployment and Installation?

- Deployment is a process of installing and configuring a sequence of software in sequence in a different order, which is a complex system engineering.  
- Installation is the process of starting the initial wizard after the application is prepared.  
- Installation is simpler than deployment. 

#### What's Cloud Platform?

Cloud platform refers to platform manufacturers that provide cloud computing services, such as: **Azure, AWS, Alibaba Cloud, HUAWEI CLOUD, Tencent Cloud**, etc.


#### What is the difference between Instance, Cloud Server, Virtual Machine, ECS, EC2, CVM, and VM?

No difference, just the terminology used by different manufacturers, actually cloud servers