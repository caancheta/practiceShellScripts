#!/bin/bash

# Introduction to variables in Shell Scripting

MY_MESSAGE="Hello World"
echo -e "$MY_MESSAGE\nI'm interested in knowing you. What is your name?: "
# 'read' is the command to take in user input into script at runtime
read MY_NAME
echo "Why, Hello $MY_NAME. Hope all is well"

#'$(cmd)' allows one to store the value outputted by the command. In this case, cmd
CURRENT_DIR=$(pwd)
echo "Did you know your pwd is $CURRENT_DIR."
