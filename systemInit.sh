#双系统时，更新grub选项，使其能够选择进入windows
sudo update-grub2

#更新软件源
sudo apt-get update 

#升级firefox，然后登录firefox帐号，进行插件、书签同步
sudo apt-get install firefox

#安装中文输入法
sudo apt-get install fcitx fcitx-pinyin fcitx-table-wubi
sudo apt-get install im-switch
im-switch -s fcitx -z default

#下面是vim安装和配置
sudo apt-get install vim
#安装vim-gnome和xsel配合使用系统剪切板
sudo apt-get install vim-gnome
sudo apt-get install xsel
#安装oh-my-vim，进行vim插件管理
sudo apt-get install python-pip
sudo apt-get install git
sudo pip install oh-my-vim
oh-my-vim upgrade
#通过oh-my-vim安装vim插件
oh-my-vim install https://github.com/msanders/snipmate.vim.git
oh-my-vim install https://github.com/vim-scripts/Auto-Pairs.git
oh-my-vim install https://github.com/scrooloose/syntastic.git
oh-my-vim install https://github.com/vim-scripts/taglist.vim.git
oh-my-vim install https://github.com/vim-scripts/Flake8-vim.git
oh-my-vim install https://github.com/hynek/vim-python-pep8-indent.git
oh-my-vim install https://github.com/scrooloose/nerdtree.git
oh-my-vim install https://github.com/vim-scripts/cscope.vim.git
oh-my-vim install https://github.com/JCLiang/vim-cscope-utils.git
oh-my-vim install https://github.com/portante/pycscope.git
oh-my-vim install https://github.com/JCLiang/vim-cscope-utils.git


#配置vim快捷键
echo "imap <C-b> <Left>"  >> ~/.vimrc
echo "imap <C-f> <Right>" >> ~/.vimrc 
echo "imap <C-j> <Down>"  >> ~/.vimrc
echo "imap <C-k> <Up>"    >> ~/.vimrc

#zsh安装和配置
sudo apt-get install zsh
#安装oh-my-zsh进行zsh配置
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
chsh -s /bin/zsh
exit
