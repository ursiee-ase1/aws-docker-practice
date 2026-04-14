# ============================
# AWS EC2 + Docker + Apache Web Hosting
# Based on GeeksforGeeks Lab
# ============================

# 1. Switch to root
sudo su

# 2. Update system
yum update -y

# 3. Install Docker
yum install docker -y

# 4. Start Docker service
service docker start

# 5. Check Docker version
docker --version

# 6. Pull base image (Amazon Linux or httpd depending on lab)
docker pull amazonlinux

# OR (if using Apache directly)
# docker pull httpd

# 7. Run container with port mapping
docker run -td --name webserver -p 80:80 amazonlinux

# 8. Enter container
docker exec -it webserver /bin/bash

# ============================
# INSIDE CONTAINER
# ============================

# 9. Update container
yum update -y

# 10. Install Apache
yum install httpd -y

# 11. Go to web directory
cd /var/www/html

# 12. Start Apache (IMPORTANT: no systemctl in container)
httpd

# 13. Create web page
echo "<h1>My Docker Web Server on AWS EC2 🚀</h1>" > index.html

# 14. Exit container
exit

# ============================
# ACCESS WEBSITE
# ============================
# http://<EC2-PUBLIC-IP>
