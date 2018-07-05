
.SILENT:	debian mac 
.PHONY:		debian mac hosts

default:	debian

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
	rsync -va .screenrc $@
$(bashrc):
	rsync -va .bashrc $@
$(bash_profile):
	rsync -va .bash_profile $@
	rsync -va .bash_profile $(bashrc)
$(emacsd):
	rsync -va .emacs.d/ $@
$(git_completion):
	rsync -va .git-completion.bash $@

clean:
	rm $(bash_profile) $(screenrc) $(emacsd) $(git_completion)

hosts:
	cat ./hosts >> /etc/hosts
