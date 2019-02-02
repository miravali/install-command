#Install sync-gateway
cd /opt/
mkdir -p /softwares/sync_gateway
cd /softwares/sync_gateway
curl -O "https://packages.couchbase.com/releases/couchbase-sync-gateway/2.1.1/couchbase-sync-gateway-enterprise_2.1.1_x86_64.rpm"
rpm --install couchbase-sync-gateway-enterprise_2.1.1_x86_64.rpm
firewall-cmd --zone=public --permanent --add-port=4985/tcp
firewall-cmd --zone=public --permanent --add-port=4984/tcp
firewall-cmd --reload

