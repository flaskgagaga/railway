FROM debian
RUN apt update
RUN apt upgrade -y
RUN apt install vim -y
RUN apt install neofetch -y 
RUN apt install htop -y
RUN apt install chromium-driver -y
RUN apt install python3-pip -y
RUN pip3 install selenium
RUN pip3 install pymysql
RUN pip3 install retry
RUN pip3 install requests
RUN apt install ssh wget npm -y
RUN  npm install -g wstunnel
RUN mkdir /run/sshd 
RUN echo 'wstunnel -s 0.0.0.0:80 &' >>/1.sh
RUN echo '/usr/sbin/sshd -D' >>/1.sh
RUN echo 'PermitRootLogin yes' >>  /etc/ssh/sshd_config 
RUN echo root:uncleluo|chpasswd
RUN chmod 755 /1.sh
EXPOSE 80
CMD  /1.sh
