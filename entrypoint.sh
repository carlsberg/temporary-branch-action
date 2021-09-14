#!/bin/sh -l

BASE_BRANCH=$INPUT_BASE
TEMP_BRANCH="temp-$RANDOM"
SHOULD_PUSH=$INPUT_PUSH

if [ ! -z "$BASE_BRANCH" ]; then
  echo "Creating temporary branch from $BASE_BRANCH"

  git checkout $BASE_BRANCH
else
  BASE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
fi

echo "Checking out to $TEMP_BRANCH"

git checkout -b $TEMP_BRANCH

if [ ! -z "$SHOULD_PUSH" ]; then
  echo "Pushing $TEMP_BRANCH to remote origin"

  git push -u origin $TEMP_BRANCH
fi

echo "::set-output name=branch::$TEMP_BRANCH"

echo "::save-state name=BASE_BRANCH::$BASE_BRANCH"
echo "::save-state name=TEMP_BRANCH::$TEMP_BRANCH"
