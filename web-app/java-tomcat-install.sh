# Install Java
echo $1 >> ~/test.yml
sudo yum -y update
sudo yum install -y $1

echo $2 >> ~/test.yml
# Install tomcat
sudo yum install -y  $2

if netstat -tulpen | grep 8080
then
	exit 0
fi
