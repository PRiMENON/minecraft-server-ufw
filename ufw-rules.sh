#!/bin/bash -eu

# reset UFW rules
sudo ufw reset

# set logging level
sudo ufw logging low

# policy
sudo ufw default deny

######################################################
# deny section
######################################################

sudo ufw deny from 103.154.143.0/24
sudo ufw deny from 103.75.8.0/22
sudo ufw deny from 111.105.32.0/19
sudo ufw deny from 130.61.0.0/16
sudo ufw deny from 138.199.43.0/24
sudo ufw deny from 141.98.255.0/24
sudo ufw deny from 146.70.117.0/24
sudo ufw deny from 146.70.119.0/24
sudo ufw deny from 146.70.128.0/24
sudo ufw deny from 146.70.144.0/24
sudo ufw deny from 146.70.189.0/24
sudo ufw deny from 146.70.197.0/24
sudo ufw deny from 146.70.225.0/24
sudo ufw deny from 149.102.246.0/24
sudo ufw deny from 151.115.0.0/17
sudo ufw deny from 154.213.192.0/24
sudo ufw deny from 156.146.63.0/24
sudo ufw deny from 156.229.232.0/24
sudo ufw deny from 156.253.224.0/19
sudo ufw deny from 159.203.128.0/17
sudo ufw deny from 176.65.149.0/24
sudo ufw deny from 185.65.134.0/24
sudo ufw deny from 191.101.216.0/22
sudo ufw deny from 193.233.134.0/24
sudo ufw deny from 198.54.132.0/24
sudo ufw deny from 199.58.80.0/22
sudo ufw deny from 209.38.96.0/19
sudo ufw deny from 212.83.128.0/17
sudo ufw deny from 23.96.0.0/13
sudo ufw deny from 35.195.0.0/16
sudo ufw deny from 45.135.194.0/24
sudo ufw deny from 45.148.10.0/24
sudo ufw deny from 45.83.220.0/24
sudo ufw deny from 45.95.147.0/24
sudo ufw deny from 46.101.0.0/16
sudo ufw deny from 5.231.70.0/24
sudo ufw deny from 65.49.0.0/18
sudo ufw deny from 69.48.192.0/19
sudo ufw deny from 76.112.0.0/12
sudo ufw deny from 82.66.192.0/18
sudo ufw deny from 91.92.40.0/22
sudo ufw deny from 94.131.100.0/24
sudo ufw deny from 97.112.0.0/12
sudo ufw deny from 97.80.0.0/12

######################################################
# allow section
######################################################

# allow SSH
sudo ufw allow from 192.168.0.0/16 to any port 22
# limit SSH connections
sudo ufw limit ssh

# allow Nginx
sudo ufw allow 'Nginx HTTP'
sudo ufw allow 'Nginx HTTPS'

# allow Minecraft Server
sudo ufw allow from any to any port 25565

# enable ufw
sudo ufw enable

# load ufw rules
sudo ufw reload
