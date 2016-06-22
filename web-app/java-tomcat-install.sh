# Install Java
sudo yum -y update
sudo yum install -y $1

# Install tomcat
sudo yum install -y  $2

if netstat -tulpen | grep 8080
then
	exit 0
fi
