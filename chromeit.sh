#!/bin/bash

if which live-server; then
    echo 'live-server is installed'
else
    echo 'live-server is not  installed. installing'
    npm i -g live-server
fi

if [ $# -eq 0 ]
  then
    echo "Give me a filename ... like this 'grump chromeit filename.js"
fi

for arg
do
  echo '<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><title>Document</title></head><body><script src="' $arg '"type="text/javascript"></script></body></html>' > _chromeit.html
  live-server --entry-file="_chromeit.html"
done
