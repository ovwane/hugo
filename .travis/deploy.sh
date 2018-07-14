#!/bin/bash
echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
DIR=$TRAVIS_BUILD_DIR

msg="rebuilding site `date`"

if [ $# -eq 1 ]
  then msg="$1"
fi

if [ -d "$DIR/public" ]; then
  echo -e "\033[0;32mdeploying to github.com\033[0m"
  # Go To Public folder
  cd $DIR/public
  # Add changes to git.
  git add -A
  # Commit changes.
  git commit -m "$msg"
  # Push source and build repos.
  git push origin gh-pages
fi
