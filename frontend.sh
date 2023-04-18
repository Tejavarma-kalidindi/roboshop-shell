yum install nginx -y
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip

rm -rf /usr/share/nginx/html/*
cd /usr/share/nginx/html 
unzip /tmp/frontend.zip

cp roboshop.config /etc/nginx/default.d/roboshop.conf 

systemctl enable nginx 
systemctl restart nginx