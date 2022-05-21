#!/bin/sh

# Git pull all the repos in the given directory and print all the repos that are updated
dir=$1
cd $dir
for repo in $(ls -d */); do
    cd $repo
    git pull
    if [ $? -eq 0 ]; then
        echo $repo
    fi
    cd ..
done
