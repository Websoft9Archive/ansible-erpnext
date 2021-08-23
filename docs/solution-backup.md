---
sidebarDepth: 3
---

# Backup & Restore

## Why

Users with experience in Cloud Server operation and maintenance understand the truth: "IT systems can't maintain 100% stability for a long time. Any system may fail, but the probability of failure is different and the degree of harm is different."

When system failure, we first seek the help of a professional to quickly repair and recovery it, but unfortunately, some failure cannot be solved smoothly or even in the expected time period.

Obviously, there is a backup is so important, it can guarantee that the system can be restored to the normal state through the existing backup file when the failure occurs, which means that the huge loss due to the unrecoverable can be avoided.

> Must develop the habit of backup, there is no luck

## How

From the specific backup object, due to the existence of four backup objects on the server: **operating system, environment software, database and application**, each object may have unpredictable failures that cannot be solved as expected.

Based on the backup object, we believe that the following two backup measures are necessary:

### Automation Backup for Instance

Automation Backups for Instance is using the **Snapshot** or **Cloud Server Backup Service** on your Cloud Platform, A snapshot is a full, read-only copy of a disk. You can take a snapshot of an OS or data disk to use as a backup, or to troubleshoot instance issues.

```
- Backup scope: All data on a Disk
- Backup effect: Very Good
- Backup frequency: Automatic backup per hour if you need
- Recovery methond: One key recovery on Cloud platform
- Skill requirement: Very easy 
- Automation or Manual: Fully automated on backup strategy
```

Different Cloud Platform's snapshot settings slightly different, refer to [Cloud platform backup solution](https://support.websoft9.com/docs/faq/tech-instance.html)

### Manual backup for application

Manual backup for application is based on the **Exporting source code and database of application** to achieve a minimized backup scheme.

```
- Backup scope: Source code and database of application
- Backup effect: Good
- Backup frequency: You can operate when you need
- Recovery methond: Import
- Skill requirement: Easy 
- Automation: manual
```
The general manual backup operation steps are as follows:

1. Just compression and download the entire */data/wwwroot/frappe-bench* directory by SFTP 
2. Export ERPNext database by **mysqldump**
   ```
   mysqldump -uroot -p erpnext>erpnext.sql
   ```
   > There are more than 1000 tables and too many fields in some tables of ERPNext database. If you export the database with phpMyAdmin, you may lose data
3. Put the source code file and database file in the same folder, named according to the date
4. Backup completed


### ERPNext 备份

ERPNext 提供了自动备份（计划任务）和[手动输入命令](https://frappeframework.com/docs/user/en/bench/reference/backup)的两种备份方式。


1. 登录 ERPNext 后，依次打开：【Settings】>【System Settings】
   ![ERPNext backup](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-autobk-websoft9.png)

2. 进入 ERPNext 主容器
   ```
   docker exec -it erpnext-worker-default  bash
   ```
3. 在容器中运行备份命令
   ```
   # 查询项目文件夹名称（IP 或 域名）
   ls

   # 备份
   bench --site 121.41.86.118 backup
   ```

4. 在宿主机的 Docker VOLUME 中获取备份文件。备份位置：*/var/lib/docker/volumes/docker-erpnext_sites-vol/_data/IP/private/backups*

   > 后台 Download Backups 处下载失败，原因有待研究。故，直接从上面的路径下载即可