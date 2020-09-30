#!/usr/bin/env bash

# remove previous publication
rm -rf public/*

# generate
hugo --gc --minify
  
# commit the changes in the clone and push them back to the local master branch    
cd public && git add --all && git commit -m "Publishing to master" && git push origin master
