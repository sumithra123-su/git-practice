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

dnf list install git -y

if [ $? -ne 0 ]
then
echo "git nis not installed going to install it"
dnf lnstall git -y
  VALIDATE $? "installing git"
else
    echo "git is already installerd, nothing to do"
fi  

dnf list install mysql -y


if [ $? -ne 0 ]
then
echo "mysql nis not installed going to install it"
dnf lnstall mysql -y
  VALIDATE $? "installing mysql"
else
    echo "mysql is already installerd, nothing to do"
fi  
