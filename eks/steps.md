**IAM**

Create a user “eks-admin” with AdministratorAccess
Create Security Credentials Access Key and Secret access key 

**EC2**

Create an ubuntu instance (region us-west-2)

**ssh to the instance from local**

**Install AWS CLI v2**

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

sudo apt install unzip

unzip awscliv2.zip

sudo ./aws/install -i /usr/local/aws-cli -b /usr/local/bin --update

Setup your access by

**aws configure**

**Install kubectl**

curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl

chmod +x ./kubectl

sudo mv ./kubectl /usr/local/bin

kubectl version --short --client

**Install eksctl**

curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp

sudo mv /tmp/eksctl /usr/local/bin

eksctl version

**Setup EKS Cluster**

eksctl create cluster --name my-cluster --region us-west-2 --node-type t2.micro --nodes-min 2 --nodes-max 2

aws eks update-kubeconfig --region us-west-2 --name my-cluster

kubectl get nodes

**Run Manifests**

kubectl create namespace two-tier-ns

kubectl apply -f .

Kubectl delete -f .

**Delete Cluster**

eksctl delete cluster --name my-cluster --region us-west-2
