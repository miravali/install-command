#install 7zip
mkdir -p /opt/softwares/7zip
cd /opt/softwares/7zip
wget https://www.mirrorservice.org/sites/dl.fedoraproject.org/pub/epel/7/x86_64/Packages/p/p7zip-16.02-10.el7.x86_64.rpm
wget https://www.mirrorservice.org/sites/dl.fedoraproject.org/pub/epel/7/x86_64/Packages/p/p7zip-plugins-16.02-10.el7.x86_64.rpm
rpm -U --quiet p7zip-16.02-10.el7.x86_64.rpm
rpm -U --quiet p7zip-plugins-16.02-10.el7.x86_64.rpm
