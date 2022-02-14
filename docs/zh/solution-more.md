# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 域名绑定

当服务器上只有一个网站时，不做域名绑定也可以访问网站。但从安全和维护考量，**域名绑定**不可省却。

以示例网站为例，域名绑定操作步骤如下：

1. 确保域名解析已经生效  
2. 使用 SFTP 工具登录云服务器
2. 修改 [Nginx虚拟机主机配置文件](/zh/stack-components.md#nginx)，将其中的 **server_name** 项的值修改为你的域名
   ```text
   server
   {
   listen 80;
   server_name name;  # modify it to your domain
   root /data/wwwroot/frappe-bench/sites;
   ...
   }
   ```
3. 保存配置文件，重启 [Nginx 服务](/zh/admin-services.md#nginx)
4. 修改 ERPNext 环境变量，绑定域名:
   进入 ERPNext 目录 /data/wwwroot/erpnext
   修改 .env 文件域名配置项
   ```
   ...
   APP_SITE_URL=your domain
   APP_SITE_NAME=`your domain`
   ...
   ```
6. 重启 ERPNext 
   ```
   docker-compose up -d 
   ```

## 重置密码

常用的 ERPNext 重置密码相关的操作主要有修改密码和找回密码两种类型：

### 修改密码


1. 登录 ERPNext后台，依次打开：【设置】>【个人设置】，找到修改密码项
  ![ERPNext 修改密码](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-modifypw-websoft9.png)

2. 直接设置新密码，保存后生效

### 找回密码

如果用户忘记了 ERPNext 密码，可以通过如下的命令直接设置一个新密码：

```
sudo -H -u erpnext bash -c "cd /data/wwwroot/frappe-bench && export GIT_PYTHON_REFRESH=quiet && /usr/local/bin/bench set-admin-password newpassword"
```

### 使用RDS

如果用户不喜欢使用服务器上安装的 MariaDB，而希望迁移到云数据库中（RDS），大致流程：

1. 备份已有数据库，并导入到 RDS 中（适合于 ERPNext 已经完成安装）

2. 修改 [ERPNext 容器配置文件:/data/wwwroot/erpnext/.env](/zh/stack-components.md#erpnext) 中的数据库相关信息
   ```
   DB_MRAIADB_USER=root
   DB_MARIADB_PASSWORD=123456
   DB_MARIADB_HOST=mariadb
   DB_MARIADB_PORT=3306
   DB_MARIADB_VERSION=10.6
   ```

   > DB_MARIADB_HOST 设置为外部数据库地址

3. 重新运行容器
   ```
   cd /data/wwwroot/erpnext
   docker-compose up -d
   ```

4. 测试更改数据库后的连接可用性
