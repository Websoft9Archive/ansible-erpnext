#!/bin/bash

# 获取mysql 默认密码
old_password=$(cat /credentials/password.txt | awk 'NR==2' |awk -F ":" '{print $2}' )

 # 截取随机生成的用户名
nexterp_user=$(cat /home/frapper/frappe-bench/sites/site1.local/site_config.json | awk 'NR'==2 | awk -F "\"" '{print $4}')

# 截取 随机生成的密码
old_nexterp_pwd=$(cat /home/frapper/frappe-bench/sites/site1.local/site_config.json | awk 'NR'==3 | awk -F "\"" '{print $4}')  

# 生成随机root密码
new_password=$(</dev/urandom tr -dc '12345qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c10)

# 生成随机erpnext密码
new_erpnext_pwd=$(</dev/urandom tr -dc '12345qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c10)

# 重启MySQL
systemctl restart mariadb

# 修改Root密码
mysqladmin -uroot -p${old_password} password $new_password  

mysql -uroot -p${new_password} -e "use mysql;UPDATE mysql.user SET password = PASSWORD('$new_erpnext_pwd') WHERE USER = '$nexterp_user';FLUSH PRIVILEGES;" # 修改erpnext密码

echo -e 'MySQL username:root\nDatabases root Password:'$new_password  > /credentials/password.txt

sed -i "s/$old_nexterp_pwd/$new_erpnext_pwd/" /home/frapper/frappe-bench/sites/site1.local/site_config.json

sed -i -e "s/\/root\/init.sh//" /etc/rc.local

rm -rf /root/init.sh

