#!/bin/bash

USERID=$(id -u) 
VALIDATE()
{
    if [ $1 -ne 0 ]
    then
    echo "$2 is :faled"
    else
    echo "$2 is success"
    fi
}

if [ $USERID -ne 0 ]
then
echo "please run this script with root priveleges"
exit 1
fi

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
