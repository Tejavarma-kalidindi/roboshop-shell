dnf module disable mysql -y 
yum install mysql-community-server -y

cp /home/centos/roboshop-shell/mysql.repo /etc/yum.repos.d/mysql.repo

systemctl enable mysqld
systemctl restart mysqld  

mysql_secure_installation --set-root-pass RoboShop@1
mysql -uroot -pRoboShop@1