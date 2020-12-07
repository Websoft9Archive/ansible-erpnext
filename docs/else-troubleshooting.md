# Troubleshooting

We collect the most common troubleshooting of using ERPNext for your reference:

> Most of the failures are closely related to the cloud platform. If you can confirm that the fault is caused by the cloud platform, please refer to [online document](https://support.websoft9.com/docs/faq/zh/tech-instance.html)

#### How can I use the logs?

Get an error for ERPNext, there are several entries that can be used to analyze the log:

1. ERPNext program running log */data/logs/erpnext*
2. Run `sudo systemctl status erpnext -l` to view the process management log
3. Nginx log */data/logs/nginx*

Search the keywords failed or error to view the error


#### The ERPNext service failed to start?

1. Run `sudo systemctl status erpnext -l`  to view the startup status and errors
2. Open the log file */data/logs/erpnext*, retrieve the failed keyword, and analyze the cause of the error 

#### ERPNext service can't start?

1. Execute `systemctl status erpnext` and you can see the errors
2. Search the keywords **Failed** or **error** from logs: */data/logs/erpnext*

#### Error in Chrome when modify password?

This error is not attribute to ERPNext server, once you have upgraded you local Chrome, it solved

#### Why I get the message "You should not run this command as root" when run bench?

The bench commands only can run for the user name frapper, you must change the user first
```shell
su - frapper
```

#### Error prompt in the last step of the ERPNext installation wizard?

![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-wizarderror-websoft9.png)
Cause: unknown  
Solution: repeat the installation several times until successful