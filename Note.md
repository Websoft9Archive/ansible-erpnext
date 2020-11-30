# erpnext extend 
---
[toc]
## logwatch

默认安装中没有，logwatch-系统日志分析器和报告器，**Logwatch**是可定制的，可插入的日志监视系统。它会在给定的时间段内遍历您的日志，并在您想要的区域中提供您想要的详细信息的报告。Logwatch用于Linux和许多类型的UNIX。

### 概要

**logwatch [--detail** *level* **] [--logfile** *log-file-group* **] [--service** *service-name* **] [--print] [--mailto** *address* **] [--archives] [--range** *range* **] [--debug** *level* **] [--save** *file-name* **] [--logdir** *directory* **] [--hostname** *hostname* **] [--splithosts] [--multiemail] [--output** *output-type* **] [--numeric] [--no-oldfiles-log] [--version] [--help|--usage]**

### 选项

**--detail** 级别

这是报告的详细级别。*level*可以是正整数，也可以是high，med，low，分别对应于整数10、5和0。

**--format**

输出格式，有text，html选项可以选择。

**--logfile**日志文件组

这将迫使Logwatch仅处理由*日志文件组*定义的*日志文件集*（即消息，xferlog等）。因此，Logwatch将处理使用这些日志文件的所有服务。可以多次指定此选项以指定多个日志文件组。

**--service** 服务名称

这将迫使 Logwatch 仅处理服务*名称中*指定的*服务*（即登录名，pam，identd等）。因此，Logwatch也将处理处理这些服务所需的任何日志文件组。可以多次指定此选项，以指定要处理的多个服务。一个有用的 *服务名*是*All*，它将处理您为其安装了过滤器的所有服务（和日志文件组）。存在 All ，可以监控所有的服务。

**--print**

将结果打印到标准输出（即屏幕）。

**--mailto** 邮件地址

将结果邮寄到电子邮件地址或*地址中*指定的用户*。*此选项将覆盖--print选项。

**--range** 范围

您可以指定要处理的日期范围。常见范围是“*Yesterday*”，“Today”，“All”和“Help”。*使用*Help*参数调用时，还会列出其他选项。

```ini
Range = "1 hours ago for that hour"
Range = "-7 days"
Range = "between -7 days and -3 days"
Range = "since March 15, 2017"
Range = "first Friday in October"
Range = "2017/04/15 12:50:15 for that second"
Range = "Yesterday"
```

**--archives**

每个日志文件组都有基本的日志文件（即/ var / log / messages）和存档（即/ var / log / messages？或/var/log/messages.?.gz）。当与“ --range all”一起使用时，此选项将使Logwatch在常规日志文件之外还搜索归档文件。对于--range的其他值，Logwatch将搜索适当的存档日志。

**--debug **级别

用于调试目的。*级别*范围可以从0到100。这*确实*会使您的输出混乱。您可能不想使用它。

**--save** 文件名

将输出保存到*文件名，*而不是显示或通过邮件发送。

**--logdir** 目录

在*目录中*查找日志子目录或日志文件，而不是默认目录。

**--hostname **主机名

为报告使用*主机名*，而不是此系统的主机名。另外，如果在logwatch.conf配置文件中设置了HostLimit（请参阅 下面的**更多信息**），则仅处理来自该主机名的日志（在适当的情况下）。

**--numeric**

禁止其他名称查找，以数字方式显示IP地址。

**--no-oldfiles-log**

禁止显示logwatch日志，该日志通知logwatch tmpdir中的旧文件。

**--help**

### 文件

显示使用情况信息。

/usr/share/logwatch

> 该目录包含Logwatch发行版随附的所有perl可执行文件和配置文件。

/etc/logwatch

> 此目录包含覆盖默认配置的本地配置文件。有关**更多信息**，请参见下面的更多信息。

/etc/logwatch/conf/logwatch.conf

Logwatch的配置文件为  /etc/logwatch/conf/logwatch.conf ，初始安装后，这个配置文件是空的。你可以将配置文件的模板拷贝过来，如果不做这一步，就会默认使用/usr/share/logwatch/default.conf/logwatch.conf 这个配置文件。

`/etc/logwatch/conf/`会自动覆盖`/usr/share/logwatch/default.conf/`下的同名文件。

### 例子

**logwatch --service ftpd-xferlog --range all --detail high --print --archives**

> 这将打印出所有存储在所有当前xferlogs和已归档xferlogs中的FTP传输。

**logwatch --service pam_pwdb --range yesterday --detail high **

> 这将打印出前一天的登录信息

**logwatch --detail High --Service All --range All --print**   

> 基本就可以显示出所有日志的情况了

**logwatch --service sshd --detail High** 

>  只看sshd的日志情况

### 使用

```shell
# centos
yum install logwatch -y
# ubuntu
apt-get install logwatch -y

```



## fail2ban

[配置](https://wiki.archlinux.org/index.php/fail2ban#Configuration)| [安装](https://wiki.archlinux.org/index.php/fail2ban#Installation)

默认安装中没有，***Fail2ban***扫描日志文件（例如`/var/log/apache/error_log`），并禁止显示恶意迹象的IP-过多的密码失败，寻找利用等。通常，Fail2Ban然后用于更新防火墙规则以拒绝IP地址在指定的时间内，也可以配置任何其他任意**操作**（例如，发送电子邮件）。Fail2Ban带有针对各种服务（apache，courier，ssh等）的**过滤器**。

Fail2Ban能够减少不正确的身份验证尝试的发生率，但是它不能消除弱身份验证带来的风险。如果您确实想保护服务，则将服务配置为仅使用两种因素或公共/专用身份验证机制。

安装：

```shell
#centos
yum install fail2ban -y
#ubuntu
apt-get install fail2ban -y

# 启动服务
systemctl start fail2ban
# 查看sshd状态
fail2ban-client status sshd

```

再/etc/fail2ban/jail.conf在发行版中可能会覆盖或改善文件，建议创建一个/etc/fail2ban/jail.conf文件。例如，将默认时间改为一天。

```shell
/etc/fail2ban/jail.d/sshd.local
[DEFAULT]
bantime = 1d
```

```
/etc/fail2ban/jail.local
[sshd]
enabled   = true
filter    = sshd
banaction = iptables
backend   = systemd
maxretry  = 5
findtime  = 1d
bantime   = 1d
ignoreip  = 127.0.0.1/8
```

当前，Fail2ban必须以*root*身份运行。因此，可以考虑使用`systemd`强化该过程，添加

```shell
/etc/systemd/system/fail2ban.service.d/override.conf
[Service]
PrivateDevices=yes
PrivateTmp=yes
ProtectHome=read-only
ProtectSystem=strict
ReadWritePaths=-/var/run/fail2ban
ReadWritePaths=-/var/lib/fail2ban
ReadWritePaths=-/var/log/fail2ban
ReadWritePaths=-/var/spool/postfix/maildrop
ReadWritePaths=-/run/xtables.lock
CapabilityBoundingSet=CAP_AUDIT_READ CAP_DAC_READ_SEARCH CAP_NET_ADMIN CAP_NET_RAW
```

默认情况下，Fail2ban使用iptables。但是，大多数防火墙和服务的配置都很简单。例如，使用nftables：

```ini
/etc/fail2ban/jail.local
[DEFAULT]
banaction = nftables
banaction_allports = nftables[type=allports]
```

## NetworkManager

默认安装中有.

网络管理器(NetworManager)是检测网络、自动连接网络的程序。无论是无线还是有线连接，它都可以令您轻松管理。对于无线网络,网络管理器优先连接已知的网络并可以自动切换到最可靠的无线网络。利用网络管理器的程序可以自由切换在线和离线模式。网络管理器会相对无线网络优先选择有线网络，支持 VPN。网络管理器最初由 Redhat 公司开发，现在由GNOME管理。

安装包括了一个daemon、一个命令行界面`nmcli`和一个基于curses的界面`nmtui`,支持基本的DHCP功能。

### 使用

```shell
systemctl start NetworkManager

#禁用 NetworkManager
#由于服务是通过 dbus 自动启动的, 所以要完全禁用可以用 systemctl 来屏蔽:
systemctl mask NetworkManager
systemctl mask NetworkManager-dispatcher
```

### nmcli 使用示例

显示附近的 wifi:

```
$ nmcli device wifi list
```

连接 wifi:

```
$ nmcli device wifi connect SSID password password
```

连接到隐藏的 wifi:

```
$ nmcli device wifi connect SSID password password hidden yes
```

通过 `wlan1` wifi 网卡(interface)连接 wifi:

```
$ nmcli device wifi connect SSID password password ifname wlan1 profile_name
```

断开一个网卡(interface)上的连接:

```
$ nmcli device disconnect ifname eth0
```

重新连接一个被标记为“已断开”的网卡：

```
$ nmcli connection up uuid UUID
```

显示一个所有连接过的网络的UUID的列表:

```
$ nmcli connection show
```

查看所有网络设备及其状态:

```
$ nmcli device
```

关掉 wifi:

```
$ nmcli radio wifi off
```

## ntp

ntpd（Network Time Protocol daemon）是 Linux 操作系统的一个守护进程，用于校正本地系统与时钟源服务器之前的时间，完整的实现了 NTP 协议。`ntpd `与 `ntpdate` 的区别是 ntpd 是步进式的逐渐校正时间，不会出现时间跳变，而 ntpdate 是断点更新。NTP 服务端口 是UDP 123 端口。

Linux 中有三个命令可用于验证 NTP 同步情况。详情如下。

- `ntpq`：ntpq 是一个标准的 NTP 查询程序。
- `ntpstat`：显示网络世界同步状态。
- `timedatectl`：它控制 systemd 系统中的系统时间和日期。

可以通过以下命令查看ntp是否同步

```shell
ntpq -p
或
ntpstat
或
timedatectl status
```

ntpdate同步时间命令：

```shell
ntpdate -u 0.centos.pool.ntp.org iburst
```

crontab同步时间(每隔半小时):

```shell
*/30 * * * * ntpdate -u time.nist.gov  
```

使用ntp可以自建服务器来同步时间，修改/etc/ntp.conf配置文件添加同步时间服务器，

```ini
server 0.centos.pool.ntp.org iburst

server 1.centos.pool.ntp.org iburst

server 2.centos.pool.ntp.org iburst

server 3.centos.pool.ntp.org iburst

server 4.centos.pool.ntp.org iburst
```

执行重启命令`systemctl restart ntpd`生效