#!/bin/bash
#install nginx....................................CHECK ONCE.

yum -y update

yum install epel-release -y

#mkdir -p /etc/yum.repos.d/nginx.repo

cat <<EOF > /etc/yum.repos.d/nginx.repo
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/mainline/centos/7/\$basearch/
gpgcheck=0
enabled=1
EOF

yum install -y epel-release

yum -y update

yum -y install nginx

firewall-cmd --zone=public --permanent --add-port=8091/tcp

firewall-cmd --reload

systemctl start nginx

systemctl enable nginx

systemctl status nginx 
