# Troubleshooting

We collect the most common troubleshooting of using ERPNext for your reference:

#### How can I use the logs?

You can find the keywords **Failed** or **error** from the logs directory: `/data/logs`

#### ERPNext service can't start?

1. Execute `systemctl status erpnext` and you can see the errors

2. Search the keywords **Failed** or **error** from logs: */data/logs/erpnext-server*

#### Error in Chrome when modify password?

This error is not attribute to ERPNext server, once you have upgraded you local Chrome, it solved

#### Why I get the message "You should not run this command as root" when run bench?

The bench commands only can run for the user name frapper, you must change the user first
```shell
su - frapper
```