#!/bin/usr/env bash

git checkout master && \
git merge dev && \
npm run generate && \
npm run deploy && \
git checkout dev
