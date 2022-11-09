#!/opt/homebrew/bin/fish
set now =  date '+%Y%m%d%H%M%S'
git pull
sudo softwareupdate -ia --verbose && brew update && brew upgrade && brew bundle -v && brew cleanup && brew doctor -v && mas upgrade && brew bundle dump -f && az upgrade && git add Brewfile &&  git commit -m "ran update on $now" && git push

