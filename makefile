
.SILENT:	debian mac 
.PHONY:		debian mac hosts

debian:
	test ! -f ~/.screenrc			&& ln -s ~/setup/.screenrc		~/ || echo "Already exists: ~/.screenrc"
	test ! -f ~/.bashrc			&& ln -s ~/setup/.bashrc		~/ || echo "Already exists: ~/.bashrc"
	test ! -f ~/.git-completion.bash	&& ln -s ~/setup/.git-completion.bash	~/ || echo "Already exists: ~/.git-completion.bash"
	test ! -d ~/.emacs.d			&& ln -s ~/setup/.emacs.d		~/ || echo "Already exists: ~/.emacs.d"
mac:
	test ! -f ~/.screenrc			&& ln -s ~/setup/.screenrc		~/ || echo "Already exists: ~/.screenrc"
	test ! -f ~/.bash_profile		&& ln -s ~/setup/.bashrc.mac ~/.bash_profile || echo "Already exists: ~/.bash_profile"
	test ! -f ~/.git-completion.bash	&& ln -s ~/setup/.git-completion.bash	~/ || echo "Already exists: ~/.git-completion.bash"
	test ! -d ~/.emacs.d			&& ln -s ~/setup/.emacs.d		~/ || echo "Already exists: ~/.emacs.d"

hosts:
	cat ./hosts >> /etc/hosts
