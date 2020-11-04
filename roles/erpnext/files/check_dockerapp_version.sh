 #!/bin/bash
 sudo echo "redis_version:" $(docker exec -it erpnext_redis-queue_1 /bin/bash -c 'redis-server -v |cut -d " " -f 3') |sudo tee -a /data/logs/install_version.txt  

 sudo echo $(docker exec -it   erpnext_erpnext-nginx_1 /bin/bash -c "nginx -v") |sudo tee -a /data/logs/install_version.txt

 sudo echo $(docker exec -it erpnext_erpnext-worker-default_1 /bin/bash -c "cat app_versions.json |sed -n 2p |sed 's/\"//g'") |sudo tee -a /data/logs/install_version.txt

 rm $0 