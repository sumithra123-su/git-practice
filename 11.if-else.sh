#!/bin/bash

USERID=$(id -u)
# echo user id is:$USERID
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
  if [ $? -ne 0 ]
     then
       echo "git installation is not success, please check it"
    else
        echo "git installation is success"
         exit 1
   fi
else
    echo "git is already installerd, nothing to do"
fi  

dnf list install mysql -y

if [ $? -ne 0 ]
then
echo "mysql nis not installed going to install it"
dnf lnstall mysql -y
  if [ $? -ne 0 ]
     then
       echo "mysql installation is not success, please check it"
    else
        echo "mysql installation is success"
         exit 1
   fi
else
    echo "mysql is already installerd, nothing to do"
fi  
