# FAQ

#### which is install way of erpnext?

Use the bench command to install, the official provides more source code installation methods.

The general installation process of erpnext is as follows:

1. Use the bench command to initialize a Frappe framework
2. Install erpnext app
3. Create a site with the same name as erptext
4. Connect the site with the app

#### What are the relationships and differences between Frappe, bench and erpnext?

Erpnext is based on [Frappe](https://github.com/frappe/frappe)Free ERP framework development. Frappe is a framework for rapid development of JS and python integrated applications. [Bench](https://github.com/frappe/bench)Is a cli tool in Frappe framework, which is used to create and manage Frappe based applications.

#### What is the principle of creating a site when installing erpnext?

Frappe framework is mainly composed of two parts: app and site. App is the back-end Python code, and site is the front-end part for handling HTTP requests.

#### Does erptext support external databases?

Yes, only in the database configuration file(/zh/stack)-components.md#erpnext)Add dB in_ Host is the external database address. For more database connection parameters, please refer to the official document [standard config](https://frappeframework.com/docs/user/en/basics/site_config#mandatory-settings)

#### What databases does erptext support?

MariaDB and PostgreSQL

#### What is the password for the database root user?

The password is stored in the server related file: `/credentials/password.txt`

#### Is there a web-base GUI database management tools?

Yes, phpMyAdmin is on it, visit by *http://Internet IP:9090*

#### Is it possible to modify the source path of ERPNext?

Not recommended

#### Is there API documentation for erptext?

Yes, including python, JavaScript, Jinja API, refer to the official document [erptext API](https://frappeframework.com/docs/user/en/api)

#### How to change the permissions of filesytem?

Change owner(group) or permissions like below:

```shell
chown -R apache.apache /data/wwwroot/frappe-bench
find /data/wwwroot/frappe-bench -type d -exec chmod 750 {} \;
find /data/wwwroot/frappe-bench -type f -exec chmod 640 {} \;
```

#### What's the difference between Deployment and Installation?

- Deployment is a process of installing and configuring a sequence of software in sequence in a different order, which is a complex system engineering.  
- Installation is the process of starting the initial wizard after the application is prepared.  
- Installation is simpler than deployment. 

#### What's Cloud Platform?

Cloud platform refers to platform manufacturers that provide cloud computing services, such as: **Azure, AWS, Alibaba Cloud, HUAWEI CLOUD, Tencent Cloud**, etc.


#### What is the difference between Instance, Cloud Server, Virtual Machine, ECS, EC2, CVM, and VM?

No difference, just the terminology used by different manufacturers, actually cloud servers