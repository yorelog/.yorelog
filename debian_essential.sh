 sed "s;//.*debian.org;//ftp2.cn.debian.org;" /etc/apt/sources.list > chinasources.list
 sudo mv /etc/apt/sourses.list /etc/apt/sourses.list.bak
 sudo mv chinasources.list /etc/apt/sources.list
sudo apt install vim zsh git vim-python-jedi php-fpm curl wget
