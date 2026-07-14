#!/bin/bash

echo "$1 to $2"

for((i=$1;i<=$2;i++))
do
  docker run -d --name py_$i -p $i:5000 py_flask
  echo "num is $i"
done
