#!/bin/sh -l

SHOULD_PUSH=$INPUT_PUSH

git checkout $STATE_BASE_BRANCH

echo "Deleting temporary branch"

git branch -D $STATE_TEMP_BRANCH

if [ ! -z "$SHOULD_PUSH" ]; then
  echo "Deleting temporary branch remotely"

  git push -d origin $TEMP_BRANCH
fi
