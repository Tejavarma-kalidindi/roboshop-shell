echo -e "\e[34mline1\e[0m"
yum install nginx -y
echo -e "\e[34mcopyhere\e[0m"
cp roboshop.conf /etc/nginx/default.d/roboshop.conf 
echo -e "\e[34mline2\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
echo -e "\e[34mline3\e[0m"
rm -rf /usr/share/nginx/html/*
echo -e "\e[34mline4\e[0m"
cd /usr/share/nginx/html 
echo -e "\e[34mline5\e[0m"
unzip /tmp/frontend.zip
echo -e "\e[34mline7\e[0m"
systemctl enable nginx
systemctl restart nginx