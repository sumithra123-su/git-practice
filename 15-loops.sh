#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m" 
CHECK_ROOT()
{
  if [ $USERID -ne 0 ]
    then
     echo "please run this script with root priveleges"
     exit 1
   fi
}
VALIDATE()
{
    if [ $1 -ne 0 ]
     then
        echo -e "$2  is..$R FAILED $N"
     else
         echo  -e "$2  is.. $G SUCCESS $N"
    fi
}

CHECK_ROOT
for package in $@ # $@ refers all arguments passed to it
do

#    dnf list install $package -y  

#     if [ $? -ne 0 ]
#      then
#        echo "$package nis not installed going to install it"
#        dnf lnstall $package -y
#        VALIDATE $? "installing $package"
#      else
#        echo "$package is already installerd, nothing to do"
#    fi  
done   