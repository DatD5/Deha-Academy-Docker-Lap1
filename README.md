"# Deha-Academy-Docker-Lap1" 


#1.
git clone https://github.com/DatD5/Deha-Academy-Docker-Lap1.git

cd Deha-Academy-Docker-Lap1


#2.Tạo Môi Trường Laravel với Laradock

git clone https://github.com/Laradock/laradock.git

cd laradock

cp env-example .env

#3.Thay đổi cấu hình .env:


PHP_VERSION=8.1

WORKSPACE_INSTALL_NODE=true

WORKSPACE_INSTALL_YARN=true

NGINX_HOST_HTTP_PORT=8081

MYSQL_VERSION=8.0

#4.Khởi động Laradock:

docker-compose up -d nginx mysql workspace

#5.Cài đặt Laravel trong workspace:

-Truy cập vào container Workspace:

docker-compose exec workspace bash

-Cài đặt Laravel:

composer create-project --prefer-dist laravel/laravel laravel-app


## Sử dụng Docker image: nginx, php, mysql, sử dụng Dockerfile và Docker compose tạo môi trường chạy ứng dụng PHP.
sửa 
nginx:
volumes:

      - ./nginx:/etc/nginx/conf.d
      - ./src:/var/www/html  # Mount thư mục src vào container

 php-fpm:
    volumes:
    
      - ./src:/var/www/html  # Mount thư mục src vào container

docker-compose down

cd Deha-Academy-Docker-Lap

docker-compose up -d

http://localhost:8080
![Screenshot 2024-12-26 022059](https://github.com/user-attachments/assets/84b9572c-b6df-4341-8ca5-9212e269584d)


