# Initial Installation

If you have completed the ERPNext deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:8161 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for ERPNext

## ERPNext Installation Wizard

1. Using local Chrome or Firefox to visit the URL *http://DNS/_utils* or *http://Internet IP/_utils*, you will enter installation wizard of ERPNext
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-init-websoft9.png)

2. Log in to ERPNext web console([Don't have password?](/stack-accounts.md#erpnext))  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-bk-websoft9.png)

3. Set you new password from: 【Users】
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-pw-websoft9.png)

> More useful ERPNext guide, please refer to [ERPNext Documentation](https://docs.erpnext.org)

## Q&A

#### I can't visit the start page of ERPNext?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### ERPNext service can't start? 