#!/bin/bash
#
# Script to ease updating of the gh-pages branch for pushing out scripts

git checkout gh-pages && git merge master && git push && git checkout master
