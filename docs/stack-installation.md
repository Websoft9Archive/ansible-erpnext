# Initial Installation

If you have completed the ERPNext deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:80 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for ERPNext

## ERPNext Installation Wizard

1. Using local Chrome or Firefox to visit the URL *http://DNS* or *http://Internet IP*, you will enter installation wizard of ERPNext
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-login-websoft9.png)

2. Log in to ERPNext web console([Don't have password?](/stack-accounts.md#erpnext)),select your language,go to next  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-installlanguage-websoft9.png)

3. Select Your Country/ Time Zone/ Currency,go to next

4. Set your administrator information
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-installadmin-websoft9.png)

5. Select the domains,go to next step
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-installdomains-websoft9.png)

6. Set your Company Name/Company Abbreviation, go to next step

7. Set your Organization, click "Complete Setup"
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-installcp-websoft9.png)

8. Complete your setup,start to ERPNext experience
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-adminui-websoft9.png)

9. Search "user" in the search bar,select the User tab,you can see the all users listed.please modify the Administrator password
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-changpw-websoft9.png)

> More useful ERPNext guide, please refer to [ERPNext Documentation](https://erpnext.com/)

## Q&A

#### I can't visit the start page of ERPNext?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox


#### ERPNext service can't start? 

Make sure your **hostname** of Server not include the str ".". e.g erpnext12.14.0 is a not regular for ERPNext

you can rename hostname by the following command

```
hostnamectl set-hostname erpnext
```