#!/bin/bash

#Remove old site
rm -rf _site

#Build new site with changes
bundle exec jekyll build

#Recreate the CNAME
cd _site
echo "gclarson.id.au" >> CNAME

#Add that shiz
git add .
git commit -m "HydeSerum Build"