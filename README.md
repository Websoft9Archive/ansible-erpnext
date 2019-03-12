# ERPNEXT 安装注意事项：
1. 使用Python脚本安装时，由于网络环境，只能在海外区域安装成功；
2. 已实现交互式脚本，自动输入密码；
3. 即使是海外服务器安装，过程中也有可能出现错误，再次运行即可；
4. 官方的ansible playbook的dns_caching role有一个小错误，目前采用fork到自己仓库，修正后将install.py里的仓库地址改为自己的地址，
   install脚本通过ansible从本地上传到服务器.