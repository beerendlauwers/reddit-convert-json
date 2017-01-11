#!/bin/bash

compiler="./haskell-mustache"

if [ $# -ne 1 ]; then
  echo No haskell-mustache location provided, using the default haskell-mustache executable in the local folder.
else
  compiler=$1
fi

for file in ./input/*
do
  filename=$(basename "$file")
  extension="${filename##*.}"
  simplename="${filename%.*}"
  $compiler markdown.template $file > ./output/$simplename.md
done
