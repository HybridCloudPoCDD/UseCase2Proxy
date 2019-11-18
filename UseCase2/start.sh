#!/bin/bash 
#Runme as root

setenforce 0
yum install -y git
yum install -y httpd
systemctl start httpd
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
yum install -y nodejs
npm init -y
npm set strict-ssl false
npm install express -save
npm install mysql -save
npm install body-parser
npm install --save-dev nodemon
npm install appdynamics@4.5.13

git clone https://github.com/HybridCloudPoCDD/UseCase2.git  ###Change it to the final repository. Repo need to be open.
cp -rv UseCase2/UseCase2/html/* /var/www/html/
nohup node UseCase2/UseCase2/firstapp/server.js &
