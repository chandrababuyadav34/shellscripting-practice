#!/bin/bash

USERID=$(id -u)

if [ USERID -ne 0 ]
then
    echo "ERROR :: Please run the script with root access"
else
    echo "You are running with root access"
fi

dng install mysql -y

if [ $? -eq 0 ]
then
    echo "Installation of Mysql is... SUCCESS"
else
    echo "Installation of Mysql is... FAILURE"
fi    