AWS EC2 Docker Web Hosting Project
Overview

This project demonstrates how to deploy a static portfolio website using Docker on an AWS EC2 instance.
It showcases containerized web hosting, cloud deployment, and basic web server configuration using Apache inside a Docker container.

Tech Stack
AWS EC2 (Amazon Linux)
Docker
Apache HTTP Server (httpd)
HTML & CSS
Objectives
Deploy a web application on the cloud
Use Docker for containerized hosting
Understand EC2-based deployment workflow
Serve a static website using Apache inside a container
Architecture
Local Machine → AWS EC2 Instance → Docker Container → Apache Server → Web Page
Deployment Steps
1. Launch EC2 Instance
Amazon Linux instance created on AWS
Security group configured to allow HTTP (port 80)
2. Install Docker
yum update -y
yum install docker -y
service docker start
3. Pull & Run Docker Container
docker pull amazonlinux

docker run -dit --name webserver -p 80:80 amazonlinux
docker exec -it webserver /bin/bash
4. Configure Web Server (Inside Container)
yum update -y
yum install httpd -y
cd /var/www/html
5. Deploy Website
Copy HTML file into /var/www/html
Start Apache server:
httpd
6. Access Application
http://<EC2-PUBLIC-IP>
Features
Containerized web hosting
Lightweight Apache server setup
Cloud-based deployment using AWS EC2
Custom HTML/CSS portfolio page
Key Learnings
Difference between virtual machines and containers
Docker container lifecycle basics
Web server deployment in cloud environments
Real-world DevOps workflow for hosting applications
Challenges Faced
Missing system services inside containers (no systemctl)
Understanding container-based Apache execution
Configuring runtime environment inside minimal Linux images
Author

Ursula Amoaku

Status

Completed
Fully functional cloud deployment
DevOps learning project
