#!/usr/bin/env bash

MESSAGE=$1

git add . && git commit -m $MESSAGE && \
git checkout master && \
git merge dev && \
npm run generate && \
npm run deploy && \
git checkout dev
