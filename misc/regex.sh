#! /bin/bash

#find all files with an underscore in it's name
find -name "*_*" > tmp/out1.txt

#find all files that start with c m or d and contains an underscore
find -name "[cmd]*_"  > tmp/out2.txt

#find all files with an undescore in it's name in the current directory
#ls *_*
ls | grep ".*_.*"

cat tmp/out3.txt
