yum -y install epel-release
yum -y install python-pip
pip install --upgrade pip
pip install shadowsocks
echo -e "{\n"server":"0.0.0.0",\n"server_port":26,\n"password":"fankiwu",\n"timeout":600,\n"method":"aes-256-cfb",\n"auth": true\n}" >  /etc/shadowsocks.json
/etc/shadowsocks start 
