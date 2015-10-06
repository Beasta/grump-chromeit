#!/bin/bash

if [ $# -eq 0 ]
  then
    say "I got no arguments to say, buddy"
fi

for arg
do
  say $arg
done