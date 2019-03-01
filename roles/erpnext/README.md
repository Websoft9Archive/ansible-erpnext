* 执行安装脚本之前，先更新pip，再安装 cryptography ；
* 若运行脚本出错，需重新运行；
* 目前此版本官方提供的的plyabook有一个小错误，运行过程中会出错，修改 ```/tmp/.bench/playbook/roles/dns_caching/handlers/main.yml/main.yml``` 中的 'Restart network manager' 为 'restart network manager'，然后重新运行即可