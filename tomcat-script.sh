#!/bin/sh
rm -rf apache
#sudo yum remove java -y
sudo yum install java -y
java -version
md5hash=$(md5sum apache-tomcat-10.0.8.tar.gz | cut -d" " -f1)
echo "Hash is $md5hash"
if [ -f "apache-tomcat-10.0.8.tar.gz" ]
then
    echo "------------------- Zip File Exist-------------------"
else
           wget https://mirrors.estointernet.in/apache/tomcat/tomcat-10/v10.0.8/bin/apache-tomcat-10.0.8.tar.gz

fi
mkdir apache
tar -xvf apache-tomcat-10.0.8.tar.gz -C apache
cd apache/apache-tomcat-10.0.8
ls
cd bin
ls
sh startup.sh
