#!/bin/bash

USERID=$(id -u)

if [ USERID -ne 0 ]
then
    echo "Error:: Please run the script as with root access"
    exit 1
else
    echo "You are running the script with root access"
fi

VALIDATE() {
    if [ $1 -ne 0 ]
    then
        echo "Installing $2 is .. SUCCESS"
    else
        echo "installing $2 is ... FAILURE"
        exit 1
    fi        

}

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MYSQL is not installed. Going to install mysql"
    dnf istall mysql -y
    VALIDATE $? "Mysql"
else
    echo "MYSQL is already Installed.. No need to install again"
fi

dnf list installed python3

if [ $? -ne 0 ]
then
    echo "Python is not installed. Going to install Python"
    dng install python3
    VALIDATE $> "Python"
else
    echo "Python3 is already installed, Dont install again"
fi

dnf list installed nginx

if [ $? -ne 0 ]
then
    echo "nginx is not installed. I will install now"
    dnf install nginx
    VALIDATE $? "nginx"
else
    echo "nginx is already installed, No need to install again"
fi


