# Update & Upgrade

Updates and upgrades are one of the maintenance tasks for sytem. Programs that are not upgraded for a long time, like buildings that are not maintained for a long time, will accelerate aging and gradually lose functionality until they are unavailable.

You should know the differences between the terms **Update** and **Upgrade**([Extended reading](https://support.websoft9.com/docs/faq/tech-upgrade.html#update-vs-upgrade))
- Operating system patching is **Update**, Ubuntu16.04 to Ubuntu18.04 is **Upgrade**
- MySQL5.6.25 to MySQL5.6.30 is **Update**, MySQL5.6 to MySQL5.7 is **Upgrade**

For ERPNext maintenance, focus on the following two Update & Upgrade jobs

- Sytem update(Operating System and Running Environment) 
- ERPNext upgrade 

## System Update

Run an update command to complete the system update:

``` shell
#For Ubuntu&Debian
apt update && apt upgrade -y

#For Centos&Redhat
yum update -y

```
> This deployment package is preconfigured with a scheduled task for automatic updates. If you want to remove the automatic update, please delete the corresponding Cron

## ERPNext Update

Since our erpnext is installed with the bench command, its upgrade is also closely related to bench. The general principle is to prepare for upgrade through the bench command, and then the command will send the latest version of git in the response code base, and then complete the upgrade.

Erpnext officially provides complete[upgrade documentation](https://frappeframework.com/docs/user/en/production-setup#updating)

Upgrading is a complex and prudent task.Here we mainly list the key points of upgrading for users' reference:

``` shell

# cd to erpnext install directory and execute by erpnext user
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