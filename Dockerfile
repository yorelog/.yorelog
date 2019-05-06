FROM debian:stretch

# 更新apt 源
RUN mv /etc/apt/sources.list /etc/apt/sources.list.defaultbak && \
    echo "deb http://mirrors.163.com/debian stretch main" > /etc/apt/sources.list && \
    echo "deb http://mirrors.163.com/debian stretch-updates main" >> /etc/apt/sources.list && \
    echo "deb http://mirrors.163.com/debian-security/ stretch/updates main" >> /etc/apt/sources.list && \
    echo "deb http://mirrors.163.com/debian stretch-backports main" >> /etc/apt/sources.list
# apt update & base dev tools
RUN apt update && apt -y install zsh vim vim-python-jedi

