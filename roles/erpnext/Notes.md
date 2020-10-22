## 研究方案

**官方安装方案解读：**ERPNext 官方提供了 **python脚本+ansible** 的自动化安装方式（[详情](https://github.com/frappe/bench)），只需下载 install.py 到服务器，运行脚本即调用 ERPNext 的ansible项目。

由于ERPNext已经提供Ansible脚本，如果我们使用自己的模块化去集成官方的安装脚本，就会导致嵌套 ansible 的情况。这个问题是不可克服的，故此项目的方案需另辟蹊径。

经过集体探讨，最终确认为“**集成官方 install.py 的自动化方案**”方案如下：

1. 首先 Fork 官方的项目到 Websoft9 企业组织结构下
1. 增加 w9common, cloud, w9erpnext, end 是个roles 到官方项目中。其中 w9common,cloud,end 是我们的公共roles，w9erpnext 是用用于处理随机密码的项目个性化 roles
1. 拷贝一份 install.py ，命名为 w9install.py 作为用户的入口文件，但需要修正其中三处：

  
```
# 1. 项目URL地址 https://github.com/frappe/bench 更改为 https://github.com/websoft9/ansible-erpnext
# 2. 去掉数据库交互式密码问答，将root和ERPNext数据库管理密码直接设置为 123456 和 admin
```

4. Ansible 的主入口文件拷贝一份，命名为 w9site.yml

以上方案重复考虑与官方主项目的同步，通过增量的方式增加个性化的代码。

**集成官方 install.py 的自动化方案**方案由于 ERPNext 官方的自动化安装脚本存在大量 bug，即使直接 install.py 也无法安装成功，因此搁浅，采用手工安装的方式。

手工安装的方案设计如下：

1. 使用公共roles完成所有依赖

```
• Python 3.6+
• Node.js 12
• Redis 5					(caching and realtime updates)
• MariaDB 10.3 / Postgres 9.5			(to run database driven apps)
• yarn 1.12+					(js dependency manager)
• pip 15+					(py dependency manager)
• cron 						(scheduled jobs)
• wkhtmltopdf (version 0.12.5 with patched qt) 	(for pdf generation)
• Nginx 					(for production)		
```

2. 增加erpnext roles，完成官方要求 erpNext 安装

```
#Install bench as a non root user,
git clone https://github.com/frappe/bench bench-repo
pip install --user -e bench-repo

bench init frappe-bench && cd frappe-bench
bench new-site site1.local
bench get-app erpnext https://github.com/frappe/erpnext
bench --site site1.local install-app erpnext
bench start
```

3. 设置Nginx转发ERPNext所需的端口

具体方案：

erpnext.yml 采取分块运行，将通用模块以root/sudo方式运行（common, node.js, reids, nginx, mariadb, wkhtmltopdf, end），erpnext 以普通用户frappe创建

安装过程注意事项：

- 需要修改原来默认的mariadb配置文件，将引擎换成barracuda
- bench set-mariadb-host 127.0.0.1 修改mariadb的host
- bench start 的情况下开启另一个shell窗口，执行：bench update --patch

     通过创建服务，启动服务后，执行bench update --patch<br />     
