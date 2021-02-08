export DEBIAN_FRONTEND=noninteractive
# Startup commands go here

sudo apt-get update
sudo apt-get -y install docker.io
sudo systemctl start docker
sudo systemctl enable docker

sudo docker pull dustnic82/nginx-test
sudo docker run --name nginx -p 80:80 -d dustnic82/nginx-test

sudo ip addr add 192.168.4.2/22 dev enp0s8
sudo ip link set enp0s8 up

sudo ip route add 10.0.0.0/30 via 192.168.4.1 dev enp0s8
sudo ip route add 192.168.0.0/20 via 192.168.4.1 dev enp0s8
