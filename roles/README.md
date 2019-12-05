### Centos
PHP 使用 webtatic 源 安装 

```
yum install epel-release
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
```

安装软件
`yum install php70w` 包命名方式 程序名称+版本+w


Apache/python 等 使用 IUS 源 安装

```
rpm -ivh https://rhel7.iuscommunity.org/ius-release.rpm
```

安装软件
`yum install httpd24u` 包命名方式 程序名称+版本+u

