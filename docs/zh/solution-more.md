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
   server_name www.example.com;  # 此处修改为你的域名
   index index.html index.htm index.php;
   root  /data/wwwroot/www.example.com;
   ...
   }
   ```
3. 保存配置文件，重启 [Nginx 服务](/zh/admin-services.md#nginx)

## 重置密码

常用的 ERPNext 重置密码相关的操作主要有修改密码和找回密码两种类型：

### 修改密码


1. 登录 RabbiERP 后台，依次打开：【设置】>【个人设置】，找到修改密码项
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
2. 编辑[数据库配置文件](/zh/stack-components.md#erpnext) 中。添加 db_host 为外部数据库地址即可
3. 修改其中的账号信息
4. 测试更改数据库后的连接可用性

> 更多数据库连接参数参考官方文档[Standard Config](https://frappeframework.com/docs/user/en/basics/site_config#mandatory-settings)