"# Deha-Academy-Docker-Lap1" 


#1.
git clone https://github.com/DatD5/Deha-Academy-Docker-Lap1.git
cd Deha-Academy-Docker-Lap1

##2.Tạo Môi Trường Laravel với Laradock
git clone https://github.com/Laradock/laradock.git

cd laradock

cp env-example .env

Thay đổi cấu hình .env:


PHP_VERSION=8.1
WORKSPACE_INSTALL_NODE=true
WORKSPACE_INSTALL_YARN=true
NGINX_HOST_HTTP_PORT=8081
MYSQL_VERSION=8.0

Khởi động Laradock:

docker-compose up -d nginx mysql workspace

Cài đặt Laravel trong workspace:

Truy cập vào container Workspace:

docker-compose exec workspace bash

Cài đặt Laravel:

composer create-project --prefer-dist laravel/laravel laravel-app

