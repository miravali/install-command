#install Couchbase
mkdir -p /opt/softwares/couchbase
cd /opt/softwares/couchbase
#rpm -qa | grep couchbase-server
#rpm -e
curl -O "https://packages.couchbase.com/releases/5.5.1/couchbase-server-enterprise-5.5.1-centos7.x86_64.rpm"
rpm --install couchbase-server-enterprise-5.5.1-centos7.x86_64.rpm
firewall-cmd --zone=public --permanent --add-port=8091/tcp 
firewall-cmd --reload

