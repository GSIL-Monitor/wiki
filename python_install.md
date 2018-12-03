yum install openssl-devel bzip2-devel expat-devel gdbm-devel readline-devel sqlite-devel wget -y
wget "https://www.python.org/ftp/python/3.5.0/Python-3.5.0.tgz"
tar -zxvf Python-3.5.0.tgz
mkdir /usr/local/python3
Python-3.5.0/configure --prefix=/usr/local/python3
make && make install
mv /usr/bin/python /usr/bin/python.bak
ln -s /usr/local/python3/bin/python3  /usr/bin/python
vim /usr/bin/yum
将第一行指定的python版本改为python2.7(#!/usr/bin/python 改为 #!/usr/bin/python2.7)
