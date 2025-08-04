#!/bin/bash
now=$(date '+%Y%m%d%H%M%S')
git pull origin
git checkout -b $now
sudo softwareupdate -ia --verbose\
 && brew update\
 && brew upgrade\
 && brew bundle -v\
 && brew cleanup\
 && brew doctor -v\
 && mas upgrade\
 && brew bundle dump -f\
 && az upgrade\
 && mackup backup -f\
 && git add .\
 &&  git commit -m "ran update on $now"\
 && git push --set-upstream origin $now
gh pr create --fill -B "main"
gh pr merge --admin --squash
git checkout main
git pull origin

