#install FFMPEG
yum install epel-release -y
yum update -y
#shutdown -r now
rpm --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro
rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm 
yum install ffmpeg ffmpeg-devel -y
ffmpeg -h
ffmpeg -version
