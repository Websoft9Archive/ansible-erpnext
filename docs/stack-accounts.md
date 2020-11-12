# Username and Password

You use the **SSH** to connect your Server and run the command `cat /credentials/password.txt` to get the username and password of this deployment solution.

These accounts are required for ERPNext image installation and configuration

## ERPNext

* ERPNext administrator username: `admin`
* ERPNext administrator password: stored in the file of your server */credentials/password.txt*
  > If there no password.txt exist, the administrator password is `admin`


## Linux

* Host Name: Internet IP or Public IP of your Instance
* Connect by: Online SSH on Cloud Console or SFTP/SSH tools on your local computer
* Password: It was set by yourself when created instance
* Username: Different Cloud Platform has differences
   |  Cloud Platform   |  Administrator Username   | Other |
   | --- | --- | --- |
   |  Azure   |  It was set by yourself when created instance   | [How to enable root access?](https://support.websoft9.com/docs/azure/server-login.html#sample2-enable-the-root-username) |
   |  AWS CentOS   |  centos   | [How to enable root access?](https://support.websoft9.com/docs/aws/server-login.html#sample2-enable-the-root-username) |
   |  AWS Ubuntu   |  ubuntu   | [How to enable root access?](https://support.websoft9.com/docs/aws/server-login.html#sample2-enable-the-root-username) |
   |  Alibaba Cloud, HUAWEI CLOUD, Tencent Cloud |  root   |

   > If don't remember the password of Linux, you should reset password on Cloud Console