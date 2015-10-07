#!/bin/bash

if [ $# -eq 0 ]
  then
    say "Give me a filename ... like this 'grump chromit filename.js"
fi

for arg
do
  # say $arg
  cat '<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><title>Document</title></head><body><script src=' $arg 'type="text/javascript"></script></body></html>' >> index.html

do
  live-server 

done