# Start or Stop the Services

These commands you must know when you using the ERPNext of Websoft9

### ERPNext

```shell
sudo docker start erpnext-worker
sudo docker stop erpnext-worker
sudo docker restart erpnext-worker
sudo docker status erpnext-worker

```

```shell
sudo docker start erpnext-worker-short
sudo docker stop erpnext-worker-short
sudo docker restart erpnext-worker-short
sudo docker status erpnext-worker-short

```

```shell
sudo docker start erpnext-worker-long
sudo docker stop erpnext-worker-long
sudo docker restart erpnext-worker-long
sudo docker status erpnext-worker-long

```

```shell
sudo docker start erpnext-nginx
sudo docker stop erpnext-nginx
sudo docker restart erpnext-nginx
sudo docker status erpnext-nginx

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
sudo docker start erpnext-mariadb
sudo docker stop erpnext-mariadb
sudo docker restart erpnext-mariadb
sudo docker status erpnext-mariadb

```

### Redis

```shell
sudo docker start erpnext-redis-queue
sudo docker stop erpnext-redis-queue
sudo docker restart erpnext-redis-queue
sudo docker status erpnext-redis-queue

```

```shell
sudo docker start erpnext-redis-cache
sudo docker stop erpnext-redis-cache
sudo docker restart erpnext-redis-cache
sudo docker status erpnext-redis-cache

```

```shell
sudo docker start erpnext-redis-schedule
sudo docker stop erpnext-redis-schedule
sudo docker restart erpnext-redis-schedule
sudo docker status erpnext-redis-schedule

```