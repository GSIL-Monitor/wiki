cd /tmp
git clone git@gitee.com:wufangbing/vim.git
# 安装必要的依赖
yum install gcc -y
yum install make -y
yum install ncurses-devel -y
yum install lua-devel -y
cd /tmp/vim/src
# 编译命令
./configure --help
./configure --enable-luainterp=yes
make 
make install

# 重新编译清理
make distclean     重新编译前执行

mv /usr/bin/vi /usr/bin/bi.bak
ln -s /usr/local/bin/vim /usr/bin/vi
