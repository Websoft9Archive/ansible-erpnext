# 故障处理

此处收集使用 ERPNext 过程中最常见的故障，供您参考

> 大部分故障与云平台密切相关，如果你可以确认故障的原因是云平台造成的，请参考[云平台文档](https://support.websoft9.com/docs/faq/zh/tech-instance.html)

#### 如何查看错误日志？

ERPNext 报错后，有如下几个可以分析日志的入口：

1. ERPNext 程序运行日志：*/data/logs/erpnext*
2. 进程管理日志，运行 `systemctl status erpnext -l` 查看
3. Nginx日志：*/data/logs/nginx*

检索关键词 **Failed** 或者 **error** 查看错误

#### ERPNext服务无法启动？

1. 运行`docker status erpnext`，便可以查看启动状态和错误

2. 打开日志文件：*/data/logs/erpnext*，检索 **failed** 关键词，分析错误原因


#### 在Chrome下修改密码后报错？

这个并不是服务器端的问题，只要更新浏览器即可。

#### 运行Bench时报错 "You should not run this command as root" when run bench?

Bench只能通过frapper运行,必须先切换到此用户

```shell
su - frapper
```

#### ERPNext 安装向导最后一步出现错误提示？
![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-wizarderror-websoft9.png)

原因：未知   
方案：重复安装几次直至成功   