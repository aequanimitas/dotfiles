#!/usr/bin/env bash

# clone my projects, not the forked ones

for i in justmath algo sentire sleepsnear dotfiles tedious snips taradayo lagas karasa curo sicp-redux psex endo chow math-notes vaporwhere; do 
	git clone git@github.com:$GITHUB_USERNAME/$i.git;
done

for i in $(ls); do
	cd $i
	# git config per project
	git config user.name $GITHUB_USERNAME
	git config user.email $GITHUB_EMAIL
        git config include.path ~/.gitconfig
        git config commit.template ~/.gitmessage.txt
	if [ -e  "$i/package.json" ];
	then 
		echo "Installing $i dependencies..."
		cd $i
                # install dependecies
		npm install
	fi
	cd ..
done
