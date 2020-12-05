# 更新升级

网站技术日新月异，**更新升级**是维护工作之一，长时间不升级的程序，就如长时间不维护的建筑物一样，会加速老化、功能逐渐缺失直至无法使用。  

这里注意更新与升级这两词的差异（[延伸阅读](https://support.websoft9.com/docs/faq/zh/tech-upgrade.html#更新-vs-升级)），例如：
- 操作系统打个补丁常称之为**更新**，Ubuntu16.04 变更为 Ubuntu18.04，称之为**升级**
- MySQL5.6.25-->MySQL5.6.30 常称之为**更新**，MySQL5.6->MySQL5.7 称之为**升级**

ERPNext 完整的更新升级包括：系统级更新（操作系统和运行环境）和 ERPNext 程序升级两种类型

## 系统级更新

运行一条更新命令，即可完成系统级更新：

``` shell
#For Ubuntu&Debian
apt update && apt upgrade -y

#For Centos&Redhat
yum update -y
```
> 本部署包已预配置一个用于自动更新的计划任务。如果希望去掉自动更新，请删除对应的Cron


## ERPNext更新

由于我们的 ERPNext 是采用 Bench 命令安装的，因此它的升级也 Bench 密切相关，大致原理是通过 Bench 命令做好升级准备，然后命令会到响应的代码库中 Git 最新的版本，再完成升级。  

ERPNext 官方提供了完整的[升级文档](https://frappeframework.com/docs/user/en/production-setup#updating)。

升级是一项复杂慎重的任务，下面我们主要列出其中的升级要点供用户参考：


``` shell
#切换用户并进入应用目录
su erpnext
cd /data/wwwroot/frappe-bench

# update everything
bench update

# update apps
bench update --pull

# run patches only
bench update --patch

# build assets only
bench update --build

# update bench (the cli)
bench update --bench

# update python packages and node_modules
bench update --requirements
```