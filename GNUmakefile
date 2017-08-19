
.SILENT:	debian mac 
.PHONY:		debian mac hosts

default:	debian

pwd			= $(shell pwd)
bashrc			= $(HOME)/.bashrc
bash_profile		= $(HOME)/.bash_profile
screenrc		= $(HOME)/.screenrc
emacsd			= $(HOME)/.emacs.d
git_completion		= $(HOME)/.git-completion.bash

debian:		$(bashrc) $(screenrc) $(emacsd) $(git_completion)
	echo "Done"
mac:		$(bash_profile) $(screenrc) $(emacsd) $(git_completion)
	echo "Done"

$(screenrc):
	ln -s "$(pwd)"/.screenrc $@
$(bashrc):
	ln -s "$(pwd)"/.bashrc $@
$(bash_profile):
	ln -s "$(pwd)"/.bash_profile $@
	ln -s "$(pwd)"/.bash_profile $(bashrc)
$(emacsd):
	ln -s "$(pwd)"/.emacs.d $@
$(git_completion):
	ln -s "$(pwd)"/.git-completion.bash $@

hosts:
	cat ./hosts >> /etc/hosts
