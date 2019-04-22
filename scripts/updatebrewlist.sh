#!/bin/sh
export BREWLIST=~/dotfiles/brewlist.txt

pushd ~/dotfiles
git stash

echo Installed Leaves: > $BREWLIST
echo ================= >> $BREWLIST
brew leaves >> $BREWLIST
echo >> $BREWLIST
echo All Installed: >> $BREWLIST
echo ============== >> $BREWLIST
brew list >> $BREWLIST
echo >> $BREWLIST
echo Dependencies: >> $BREWLIST
echo ============= >> $BREWLIST
brew deps --installed >> $BREWLIST
echo >> $BREWLIST
echo Casks: >> $BREWLIST
echo ====== >> $BREWLIST
brew cask list >> $BREWLIST

git add brewlist.txt
git commit -m 'AUTOMATED: Updated the brew list'

git stash pop

popd

