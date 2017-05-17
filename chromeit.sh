#!/bin/bash

if which live-server; then
    echo 'live-server is installed'
else
    echo 'live-server is not  installed. installing'
    npm i -g live-server
fi

if which browserify; then
    echo 'browserify is installed'
else
    echo 'browserify is not  installed. installing'
    npm i -g browserify
fi

if [ $# -eq 0 ]
  then
    echo "Give me a filename ... like this 'grump chromeit filename.js"
fi

for arg
do
  browserify $arg > bundle.js
  echo '<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><title>Document</title></head><body><script src="' bundle.js '"type="text/javascript"></script></body></html>' > _chromeit.html
  live-server --entry-file="_chromeit.html"
done
