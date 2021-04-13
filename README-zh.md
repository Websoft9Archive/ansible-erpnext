# ERPNext 自动化安装与部署

本项目是由 [Websoft9](http://www.websoft9.com) 研发的 [ERPNext](https://erpnext.com/) 自动化安装程序，开发语言是 Ansible。使用本项目，只需要用户在 Linux 上运行一条命令，即可自动化安装 ERPNext，让原本复杂的安装过程变得没有任何技术门槛。  

本项目是开源项目，采用 LGPL3.0 开源协议。

## 配置要求

操作系统：目支持 Ubuntu16.x以上部署此脚本，确保是干净的操作系统  
硬件配置：最低1核2G，20G系统盘空间，否则无法运行    

更多配置要求，参考[官方文档](https://github.com/frappe/bench)

## 组件

包含的核心组件为：ERPNext, Nginx, Node.js 等  

更多请见[参数表](/docs/zh/stack-components.md)

## 本项目安装的 ERPNext 最新版吗？

本项目采用官方提供的安装脚本进行安装，官方会在安装脚本中对 ERPNext 的版本进行控制，即每一次安装均可保证为 ERPNext 官方发布的最新稳定版。

我们会定期检查安装脚本 URL 地址的准确性，以保证用户可以顺利安装。

## 安装指南

登录 Linux，运行下面的**命令脚本**即可启动自动化部署，然后耐心等待，直至安装成功。  

```
#非 root 用户登录后，需先提升成为 root 权限
sudo su -

#自动化安装命令
wget -N https://raw.githubusercontent.com/Websoft9/ansible-linux/main/scripts/install.sh; bash install.sh -r erpnext
```  

注意：  

1. 自动化脚本需服务器上已经安装 Python 2.7 或以上版本，一般操作系统会自带 Python，如果无法运行脚本，请先安装 Python
2. 由于自动化安装过程中有大量下载任务，若网络不通（或速度太慢）会引起下载失败，从而导致安装程序终止运行。此时，请重置服务器后再次尝试安装，若仍然无法完成，请使用我们在公有云上发布的 [ERPNext 镜像](https://apps.websoft9.com/erpnext) 的部署方式

## License

[LGPL-3.0](/License.md), Additional Terms: It is not allowed to publish free or paid image based on this repository in any Cloud platform's Marketplace.
Copyright (c) 2016-present, Websoft9

## 文档

文档链接：https://support.websoft9.com/docs/erpnext

## FAQ

- 命令脚本部署与镜像部署有什么区别？请参考[镜像部署-vs-脚本部署](https://support.websoft9.com/docs/faq/zh/bz-product.html#镜像部署-vs-脚本部署)
- 本项目支持在 Ansible Tower 上运行吗？支持
