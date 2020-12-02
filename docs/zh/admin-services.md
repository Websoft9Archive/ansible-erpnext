# 服务启停

使用由Websoft9提供的 ERPNext 部署方案，可能需要用到的服务如下：

## ERPNext

```shell
sudo systemctl start erpnext
sudo systemctl stop erpnext
sudo systemctl restart erpnext
sudo systemctl status erpnext

```

### Nginx

```shell
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl status nginx
```

### MariaDB

```shell
sudo systemctl start mysql
sudo systemctl stop mysql
sudo systemctl restart mysql
sudo systemctl status mysql
```

### Redis

```shell
sudo systemctl start redis
sudo systemctl stop redis
sudo systemctl restart redis
sudo systemctl status redis
```