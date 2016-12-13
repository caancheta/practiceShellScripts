#!/bin/bash

# Introduction to variables in Shell Scripting

# MY_MESSAGE="Hello World"
# echo -e "$MY_MESSAGE\nI'm interested in knowing you. What is your name?: "
# 'read' is the command to take in user input into script at runtime
#read MY_NAME
# echo "Why, Hello $MY_NAME. Hope all is well"

#'$(cmd)' allows one to store the value outputted by the command. In this case, cmd
USER_NAME="caancheta"
CURRENT_DIR=$(pwd)
echo "Did you know your pwd is $CURRENT_DIR."
echo "Creating file: ${USER_NAME}_file.txt"
echo "test file demo" > ${USER_NAME}_file.txt
if [[ -n $(find . -name ${USER_NAME}_file.c) ]]
then
  echo "${USER_NAME}_file.txt was created"
  echo "Deleting file: ${USER_NAME}_file.txt"
  rm ${USER_NAME}_file.txt
else
  echo "Error when creating: ${USER_NAME}_file.txt"
fi
