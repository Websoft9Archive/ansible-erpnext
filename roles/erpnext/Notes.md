## [安装](https://github.com/frappe/frappe/wiki/The-Hitchhiker%27s-Guide-to-Installing-Frappe-on-Linux)

官方提供了三种安装方式：

* Docker 安装：容器过多，考虑客户使用ERP有个性化开发，担心不方便保存数据
* 自动化安装脚本：经过调研，发现本质上是通过本地跑ansible的方式，对我们而言,这种"ansible套ansible"不可控,故不采用;
* 手动安装：先安装CLI工具Bench，再安装Frappe框架以及其中的应用ERPNext

综合评估，采用手工安装方式。  

> ERPNext的架构原理：ERPNext是基于[Frappe](https://github.com/frappe/frappe)框架开发的免费ERP。而Frappe是一个用于快速开发JS和Python集成化应用的框架。[Bench](https://github.com/frappe/bench)是Frappe框架体系中的CLI工具，用于创建和管理基于Frappe的应用程序。


## Frappe

由于 Frappe 是 ERPNext 的基础，因此理解其关键要素，对于安装配置和维护显得非常重要。 


 
## FAQ

#### Bench Manager 是什么？

Bench Manager是具有相同功能的Bench GUI前端

#### ERPNext数据库配置有什么特殊之处？

1. 需要修改mariadb存储引擎为MyISAM   
2. 新建站点时需指定用户权限为 "%"
   ```
   bench new-site   --no-mariadb-socket  
   Set MariaDB host to % and use TCP/IP Socket instead of using the UNIX Socket
   ```





















