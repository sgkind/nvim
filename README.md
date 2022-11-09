## 快捷键
### insert模式

|快捷键| 绑定 | 作用 |
|:-----:|:----:|:-----|
|Ctrl+f| <Right> | <不知道> |


### normal模式
|快捷键| 绑定 | 作用 |
|:-----:|:----:|:----|
|<leader>ss|:vsp<CR>|垂直分割窗口|


### visual 模式
 快捷键| 绑定 | 作用 |
|:------:|:------:|:------|
|Ctrl+y| +y |复制到系统剪贴板|
|<     | <gv  |缩进代码|
|>     | >gv  |缩进代码|
|J     |:move '>+1<CR>gv-gv| |
|K     |:move '<-2<CR>gv-gv| |

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
### markdown-preview
在nvim中执行如下命令
```
:call mkdp#util#install()
```



## markdown
[Vim Markdown](https://github.com/preservim/vim-markdown)

[markdown-preview](https://github.com/iamcco/markdown-preview.nvim)

预览命令
* :MarkdownPreview
* :MarkdownPreviewStop
* :MarkdownPreviewToggle


