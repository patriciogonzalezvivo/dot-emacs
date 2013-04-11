This repo is to backup of my Emacs configuration

## Install

1. Clone it in the root folder

		cd ~	
		git clone git@github.com:patriciogonzalezvivo/dot-emacs.git

2. Rename it

		mv dot-emacs .emacs.d

3. Access to it and initialate the submodules

		cd .emacs.d
		git pull && git submodule init && git submodule update && git submodule status
