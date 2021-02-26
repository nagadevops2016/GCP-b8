steps to install the minikube ion ubuntu-18

download the script and execute
 1. Download the script
 2. run command "chmod +x autominikube.sh"
 3. run command "./autominikube.sh"

after the execution exit from root user and run command "sudo usermod -aG docker $USER && newgrp docker"


finally start  the minikube by command "minikube start --driver=docker"
