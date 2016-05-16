#!/bin/bash


for dir in public uploads etc
  do
      mkdir $dir
      cd $dir
      touch .test.txt
      cd ..
  if [ $dir = public ]; then
    cd public
    for subdir in img css js
      do
	  mkdir $subdir
	  cd $subdir
	  touch .test.txt
	  cd ..
    done
    cd .. 
  fi
done
