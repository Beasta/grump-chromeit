#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Give me a filename ... like this 'grump chromit filename.js"
fi

for arg
do
  echo '<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><title>Document</title></head><body><script src="' $arg '"type="text/javascript"></script></body></html>' > index.html

  live-server 

done