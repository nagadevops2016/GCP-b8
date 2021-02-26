#Step 1: Update System and Install Required Packages
#Before installing any software, you need to update and upgrade the system you are 
#working on. To do so, run the commands:

sudo yum update -y
sudo yum upgrade -y

#Also, make sure to install (or check whether you already have) the following required packages:

sudo yum install curl
sudo yum install apt-transport-https

#Step 3: Install Minikube
#With VirtualBox set up, move on to installing Minikube on your Ubuntu system.
#1. First, download the latest Minikube binary using the wget command:

wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

#2. Copy the downloaded file and store it into the /usr/local/bin/minikube directory with:

sudo cp minikube-linux-amd64 /usr/local/bin/minikube

#There will be no output if the command was executed correctly.

#3. Next, give the file executive permission using the chmod command:

sudo chmod 755 /usr/local/bin/minikube

#4. Finally, verify you have successfully installed Minikube by checking the version of the software:

minikube version

#Step 4: Install Kubectl
#To deploy and manage clusters, you need to install kubectl, the official command line tool for Kubernetes.

#1. Download kubectl with the following command:

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

#. Make the binary executable by typing:

chmod +x ./kubectl

#3. Then, move the binary into your path with the command:

sudo mv ./kubectl /usr/local/bin/kubectl

#4. Verify the installation by checking the version of your kubectl instance:

kubectl version -o json

#: Install Docker

curl -fsSL https://get.docker.com -o get-docker.sh

sudo chmod +x get-docker.sh

./get-docker.sh 

sudo usermod -aG docker $USER && newgrp docker
