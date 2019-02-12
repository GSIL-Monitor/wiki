yum -y install epel-release
yum -y install python-pip
pip install --upgrade pip
pip install shadowsocks
echo -e "{\n\"server\":\"0.0.0.0\",\n\"server_port\":26,\n\"password\":\"fankiwu\",\n\"timeout\":6000,\n\"method\":\"aes-256-cfb\",\n\"auth\": true\n}" >  /etc/shadowsocks.json
ssserver -c /etc/shadowsocks.json -d start
systemctl stop firewalld.service
