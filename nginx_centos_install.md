yum install gcc-c++ -y
yum install -y pcre pcre-devel
yum install -y zlib zlib-devel
yum install -y openssl openssl-devel
cd /tmp
wget https://nginx.org/download/nginx-1.14.1.tar.gz
tar -zxvf nginx-1.14.1.tar.gz 
 cd nginx-1.14.1
./configure
make
make install
whereis nginx
