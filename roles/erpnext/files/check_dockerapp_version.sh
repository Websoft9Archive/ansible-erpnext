 #!/bin/bash
 sudo sh -c "echo "redis_version:" $(docker exec -it erpnext_redis-queue_1 /bin/bash -c 'redis-server -v |cut -d " " -f 3') &>> /data/logs/install_version.txt"  

 sudo sh -c "echo $(docker exec -it erpnext_erpnext-nginx_1 /bin/bash -c "nginx -v") &>> /data/logs/install_version.txt"

 sudo sh -c "echo $(docker exec -it erpnext_erpnext-worker-default_1 /bin/bash -c "cat app_versions.json |sed -n 2p |sed 's/\"//g'") &>> /data/logs/install_version.txt"
             
 rm $0 