# SMTP

大量用户实践反馈，使用**第三方 SMTP 服务发送邮件**是一种最稳定可靠的方式。  

请勿在服务器上安装sendmail等邮件系统，因为邮件系统的路由配置受制与域名、防火墙、路由等多种因素制约，非常不稳定，且不易维护、诊断故障很困难。

下面以**QQ邮箱**为例，提供设置 ERPNext 发邮件的步骤：

1. 在QQ邮箱管理控制台获取 SMTP 相关参数
   ```
   SMTP host: smtp.qq.com
   SMTP port: 465 or 587 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: websoft9smpt
   SMTP password: #fdfwwBJ8f #这个密码不是邮箱密码，是需要通过QQ邮箱SMTP设置去获取的授权码
   ```
2. 登录 ERPNext控制台，在【设置】>【电子邮件域名】填写SMTP参数
![ERPNext SMTP](https://libs.websoft9.com/Websoft9/DocsPicture/en/erpnext/erpnext-smtp-websoft9.png)

3. 点击【保存】后，系统后进行一个 SMTP 初步验证，验证通过才能保存成功

更多邮箱设置（阿里云邮箱，Gmail，Hotmail等）以及无法发送邮件等故障之诊断，请参考由Websoft9提供的 [SMTP 专题指南](https://support.websoft9.com/docs/faq/zh/tech-smtp.html)