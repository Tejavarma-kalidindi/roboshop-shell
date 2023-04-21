echo -e "\e[31m>>>>>>>>>> Install Nginx <<<<<<<<<<\e[0m"
yum install nginx -y

echo -e "\e[31m>>>>>>>>>> Downlaod Application <<<<<<<<<<\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip

echo -e "\e[31m>>>>>>>>>> Remove Default Nginx Code <<<<<<<<<<\e[0m"
rm -rf /usr/share/nginx/html/*

echo -e "\e[31m>>>>>>>>>> Extract App <<<<<<<<<<\e[0m"
cd /usr/share/nginx/html 
unzip /tmp/frontend.zip

echo -e "\e[31m>>>>>>>>>> Copy roboshop Config file <<<<<<<<<<\e[0m"
cp /home/centos/roboshop-shell/roboshop.conf /etc/nginx/default.d/roboshop.conf 

echo -e "\e[31m>>>>>>>>>> Start Nginx <<<<<<<<<<\e[0m"
systemctl enable nginx
systemctl restart nginx