#!/bin/bash

TAG=v0

git checkout $TAG && git tag -d $TAG
git push --delete origin $TAG
git tag -a -m "beta release" $TAG
git push origin $TAG