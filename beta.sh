#!/bin/bash

TAG=v0
CUR_BRANCH=$(git rev-parse --abbrev-ref HEAD)

# delete old tag
git checkout $TAG && git tag -d $TAG
git push --delete origin $TAG

# switch back to dev branch and release new tag
git checkout $CUR_BRANCH
git tag -a -m "beta release" $TAG
git push origin $TAG