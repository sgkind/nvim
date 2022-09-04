## 依赖
### global
* apt按照
```bash
sudo apt install global
```
* 编译
```
sudo apt build-dep global
sudo apt install libncurses5-dev libncursesw5-dev
```

下载源码
```
wget https://ftp.gnu.org/pub/gnu/global/global-6.6.8.tar.gz
```

编译安装
```
./configure --with-sqlite3 #使用sqlite3作为数据库
make -j8
sudo make install
```
### ctags
```
sudo apt install ctags
```
### sshpass
vim-arsync需要
```
sudo apt install sshpass
```

