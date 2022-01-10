# FAQ

#### 本项目中 ERPNext 采用何种安装方式？

采用 Docker 安装，查看我们提供的 [Docker-Compose for ERPNext](https://github.com/Websoft9/docker-erpnext) 开源项目

#### ERPNext 支持非 Docker 安装方式吗？

支持，具体的安装大致流程如下：

1. 使用Bench命令初始化一个Frappe框架
2. 安装ERPNext app
3. 创建一个名称同样为 ERPNext 的site
4. 将site与app 连接起来

#### Frappe，bench，ERPNext 有什么关系和区别？

ERPNext 是基于 [Frappe](https://github.com/frappe/frappe) 框架开发的免费 ERP 。而 Frappe 是一个用于快速开发JS和Python集成化应用的框架。[Bench](https://github.com/frappe/bench) 是Frappe框架体系中的 CLI 工具，用于创建和管理基于 Frappe 的应用程序。

#### ERPNext 安装的时候需要创建 site 是什么原理？

Frappe 框架主要由两个部分组成：app 和 site，app 是后端Python代码，site 是用于处理 HTTP 请求的前端部分。

#### ERPNext 支持外部数据库吗？

支持，只需在[数据库配置文件](/zh/stack-components.md#erpnext) 中添加 db_host 为外部数据库地址即可。更多数据库连接参数参考官方文档[Standard Config](https://frappeframework.com/docs/user/en/basics/site_config#mandatory-settings)

#### ERPNext 支持哪些数据库？

MariaDB 和 PostgreSQL

#### 数据库用户对应的密码是多少？

密码存放在服务器相关文件中：`/credentials/password.txt`

#### 是否有可视化的数据库管理工具？

有可视化数据库管理工具 phpMyAdmin,访问地址：*http://服务器公网IP:9090*

#### 是否可以修改 ERPNext 的源码路径？

不建议

#### 是否有ERPNext的API文档？

有，包括Python，Javascript，Jinja API等，参考官方文档[ERPNext API](https://frappeframework.com/docs/user/en/api)

#### 如何修改上传的文件权限?

```shell
# 拥有者
chown -R erpnext.erpnext /data/wwwroot/erpnext
# 读写执行权限
find /data/wwwroot/erpnext -type d -exec chmod 750 {} \;
find /data/wwwroot/erpnext -type f -exec chmod 640 {} \;
```

#### 部署和安装有什么区别？

部署是将一序列软件按照不同顺序，先后安装并配置到服务器的过程，是一个复杂的系统工程。  
安装是将单一的软件拷贝到服务器之后，启动安装向导完成初始化配置的过程。  
安装相对于部署来说更简单一些。 

#### 云平台是什么意思？

云平台指提供云计算服务的平台厂家，例如：Azure,AWS,阿里云,华为云,腾讯云等

#### ERPNext如何进行备份？

ERPNext备份涉及到3种不同的文件：数据库文件，配置文件，日志文件
详情参考官方备份文档：[Backing up ERPNext](https://docs.erpnext.org/en/latest/maintenance/backups.html)

云平台指提供云计算服务的平台厂家，例如：Azure,AWS,阿里云,华为云,腾讯云等

#### 实例，云服务器，虚拟机，ECS，EC2，CVM，VM有什么区别？

没有区别，只是不同厂家所采用的专业术语，实际上都是云服务器