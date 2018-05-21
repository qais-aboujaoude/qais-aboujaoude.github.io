#!/usr/bin/env bash

git add . && git commit -m "testing" && \
git checkout master && \
git merge dev && \
npm run generate && \
npm run deploy && \
git checkout dev
