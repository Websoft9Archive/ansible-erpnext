# 初始化安装

在云服务器上部署 ERPNext 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:80** 端口是否开启
3. 若想用域名访问 ERPNext，请先到 **域名控制台** 完成一个域名解析

## ERPNext 安装向导

1. 使用本地电脑 Chrome 或 Firefox 浏览器访问网址：*http://域名* 或 *http://服务器公网IP*, 进入初始化页面
   ![erpnext安装登录](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-login-websoft9.png)

2. 输入账号密码（[不知道账号密码？](/zh/stack-accounts.md#erpnext)），选择语言， 进入下一步 
   ![erpnext安装](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-language-websoft9.png)

3. 根据安装向导依次完成后续步骤

4. 安装完成之后，ERPNext 会弹出如下界面
   ![erpnext后台](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-cpsetup-websoft9.png)

   可能会出现安装错误提示，此时需要反复安装：
   ![erpnext 向导安装报错](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-wizarderror-websoft9.png)

5. ERPNext 顶部菜单中提供了搜索框，用于快速检索并进入 ERPNext 所有的功能
   ![erpnext 快速检索](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-sbar-websoft9.png)

6. 通过检索功能，进入【用户】设置，可以管理当前系统下所有账号
   ![erpnext 用户管理](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-users-websoft9.png)


> 需要了解更多 ERPNext 的使用，请参考官方文档：[ERPNext Documentation](https://docs.erpnext.com)

## 常见问题

#### 浏览器打开IP地址，无法访问 ERPNext（白屏没有结果）？

您的服务器对应的安全组80端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### ERPNext 安装向导最后一步出现错误提示？
![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-wizarderror-websoft9.png)
原因：未知  
方案：重复安装几次直至成功  

#### ERPNext 服务启动失败？

请确认hostname是否包含字符串 "."，例如 erpnext12.14.0对于ERPNext来说是一个不合规的hostname

你可以使用下列命令来修改hostname：

```
hostnamectl set-hostname erpnext
```