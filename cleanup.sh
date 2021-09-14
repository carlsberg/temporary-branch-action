#!/bin/sh -l

git checkout $STATE_BASE_BRANCH

echo "Deleting temporary branch"

git branch -D $STATE_TEMP_BRANCH