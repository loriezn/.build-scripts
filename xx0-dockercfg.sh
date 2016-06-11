sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo touch /etc/apt/sources.list.d/docker.list
sudo echo "deb https://apt.dockerproject.org/repo ubuntu-wily main" >> /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install linux-image-extra-$(uname -r)
sudo apt-get install docker-engine
apt-cache policy docker-engine
sudo systemctl status docker
sleep 5
sudo systemctl enable docker
sudo systemctl start docker


