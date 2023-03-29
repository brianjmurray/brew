#!/bin/bash
sudo softwareupdate -ia --verbose && brew update && brew upgrade && brew bundle -v && brew cleanup && brew doctor -v && mas upgrade && brew bundle dump -f && az upgrade && mackup restore
