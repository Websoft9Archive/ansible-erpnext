# SSL/HTTPS

Before setting, you have to complete [binding domain](/solution-more.md) and make sure you can access ERPNext by HTTP.

ERPNext deployment package has installed the SSL module of Nginx and open Certificate Authority **[Let's Encrypt](https://letsencrypt.org/)** for you to configure the HTTPS quickly and conveniently.

> Except for the [vhost configuration file](/stack-components.md#nginx), it doesn't need modify any Nginx configuration file for HTTPS.

## Quick start

### Automatic deployment

If you want to use a free certificate, just run the one command `sudo certbot` on your instance to start the HTTPS deployment.

```
sudo certbot
```

### Manual deployment

If you have applied for a commercial certificate, complete the HTTPS configuration in just three steps:

1. Upload your certificate, file of the certificate chain and secret key to the directory: */data/cert*.

2. Open the vhost configuration file: */etc/nginx/conf.d/default.conf*.

3. Insert the **HTTPS template** into *server{  }* and modify your certificate path.
   ``` text
   #-----HTTPS template start------------
   listen 443 ssl; 
   ssl_certificate /data/cert/xxx.crt;
   ssl_certificate_key /data/cert/xxx.key;
   ssl_trusted_certificate /data/cert/chain.pem;
   ssl_session_timeout 5m;
   ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
   ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:HIGH:!aNULL:!MD5:!RC4:!DHE;
   ssl_prefer_server_ciphers on;
   #-----HTTPS template end------------
   ```
4. save file and [restart Nginx service](/admin-services.md).

## Special Guide

If failed to set HTTPS by taking the above steps, please view the [HTTPS Special Guide](https://support.websoft9.com/docs/faq/tech-https.html#nginx) provided by Websoft9, which includes solutions about configuring HTTPS pre-conditions, HTTPS configuration segment templates, precautions, detailed steps, troubleshooting and more.