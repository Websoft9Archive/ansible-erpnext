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

要更新您的站点，只需运行以下命令。它将更新您的所有应用（git pull），在所有网站上运行补丁，构建JS和CSS资产并重新启动主管。

``` shell
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