# More

Each of the following solutions has been proven to be effective and we hope to be helpful to you.


## Domain binding

The precondition for binding a domain is that ERPNext can accessed by domain name.

Nonetheless, from the perspective of server security and subsequent maintenance considerations, the **Domain Binding** step cannot be omitted.

ERPNext domain name binding steps:

1. Connect your Cloud Server
2. Modify [Nginx vhost configuration file](/stack-components.md#nginx), change the **server_name**'s value to your domain name
   ```text
   server
   {
   listen 80;
   server_name www.example.com;  # 此处修改为你的域名
   index index.html index.htm index.php;
   root  /data/wwwroot/www.example.com;
   ...
   }
   ```

## Resetting Password

Reset password by bench shell.

### Changing password

   ```shell
   sudo -H -u erpnext bash -c "cd /data/wwwroot/frappe-bench && export GIT_PYTHON_REFRESH=quiet && /usr/local/bin/bench set-admin-password $new_password"
   ```