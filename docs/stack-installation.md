# Initial Installation

If you have completed the ERPNext deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** of Server on your Cloud Platform.
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:80 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for ERPNext

## ERPNext Installation Wizard

1. Using local Chrome or Firefox to visit the URL *http://DNS* or *http://Server's Internet IP*, you will enter installation wizard of ERPNext
   ![ERPNext login](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-login-websoft9.png)

2. Log in to ERPNext web console([Don't have password?](/stack-accounts.md#erpnext)), select your language and go to next step 
   ![ERPNext install lang](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-installlanguage-websoft9.png)

3. Follow the installation wizard to complete installation wizard

4. You can see the interface when you complete the installation successfully
   ![ERPNext background](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-ok-websoft9.png)

   There may be an installation error prompt, then you should retry it again until success
   ![ERPNext wizard installation error](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-wizarderror-websoft9.png)

5. A search box is provided in the top menu for quick retrieval and access to all functions of ERPNext
   ![ERPNext quick search](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-usersearch-websoft9.png)

6. Example: enter the 【user】 settings to manage all accounts
   ![ERPNext user management](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-userlist-websoft9.png)

> More useful ERPNext guide, please refer to [ERPNext Documentation](https://docs.erpnext.com/)

## Q&A

#### I can't visit the start page of ERPNext?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### Error prompt in the last step of the ERPNext installation wizard?

![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/erpnext/erpnext-wizarderror-websoft9.png)
Cause: unknown  
Solution: repeat the installation several times until success

#### ERPNext service can't start? 

Make sure your **hostname** of Server not include the str ".". e.g erpnext12.14.0 is a not regular for ERPNext

you can rename hostname by the following command

```
hostnamectl set-hostname erpnext
```