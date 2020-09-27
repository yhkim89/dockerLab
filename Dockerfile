# Step1: Ubuntu (base image)
FROM ubuntu:latest 
# Step2: Nginx install 
RUN apt-get update && apt-get install -y -q nginx 
# Step3: file copy
COPY ./index.html /var/www/html/
EXPOSE 80
# Step4: Nginx start (container 실행 시) 
CMD ["nginx", "-g", "daemon off;"]
