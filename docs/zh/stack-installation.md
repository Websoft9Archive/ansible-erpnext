# 初始化安装

在云服务器上部署 ERPNext 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:80** 端口是否开启
3. 若想用域名访问 ERPNext，请先到 **域名控制台** 完成一个域名解析

## ERPNext 安装向导

1. 使用本地电脑的 Chrome 或 Firefox 浏览器访问网址：*http://域名/_utils* 或 *http://Internet IP/_utils*, 进入初始化页面
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-init-websoft9.png)

2. 输入账号密码（[不知道账号密码？](/zh/stack-accounts.md#erpnext)），成功登录到 ERPNext 后台  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-bk-websoft9.png)

3. 登录后通过：【Users】设置新密码  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-pw-websoft9.png)

> 需要了解更多 ERPNext 的使用，请参考官方文档：[ERPNext Documentation](https://docs.erpnext.org)

## 常见问题

#### 浏览器打开IP地址，无法访问 ERPNext（白屏没有结果）？

您的服务器对应的安全组80端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### ERPNext 服务启动失败？

暂无