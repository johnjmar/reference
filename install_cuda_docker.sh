# Install CUDA
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/ppc64el/cuda-repo-ubuntu1604_9.1.85-1_ppc64el.deb
dpkg -i cuda-repo-ubuntu1604_9.1.85-1_ppc64el.deb
apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/ppc64el/7fa2af80.pub
sudo apt update && apt upgrade -y
sudo apt install cuda -y

# Install docker
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository  "deb https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update && apt install docker-ce -y

# Install nvidia-docker2
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID) && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update
sudo apt install nvidia-docker2 -y
sudo pkill -SIGHUP dockerd

