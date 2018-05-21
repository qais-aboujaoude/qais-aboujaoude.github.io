#!/usr/bin/env bash

MESSAGE=$1
BRANCH=$(git rev-parse --abbrev-ref HEAD)

echo $BRANCH
if [ "$BRANCH" != "master" ]
then
  git add . && git commit -m "$MESSAGE" && \
  git checkout master && \
  git merge $BRANCH && \
  npm run generate && \
  npm run deploy && \
  git checkout $BRANCH
fi
