#!/bin/bash

# Introduction to while-loops. As will be seen here, this control structure is ideally used when designing a Shell interface menu.
INPUT="init"
echo "Enter 'quit' to exit application"
while [ "${INPUT^^}" != "QUIT" ]
do
  read -p "Enter input: " INPUT
  if [ "${INPUT^^}" == "QUIT" ]
  then
    echo "Thank you for using this application. Goodbye"
  else
    echo "Your input: $INPUT"
  fi
done

while read f
do
  case $f in
    1)  echo "Command 1 selected" ;;
    2)  echo "Command 2 selected" ;;
    3)  echo "Command 3 selected" ;;
    *)  echo "Invalid input entered"  ;;
  esac
done
