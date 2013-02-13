

symbolic-links:
	test ! -f ~/setup/.screenrc	&& ln -s ~/setup/.screenrc	~/.screenrc	|| echo "You must remove the existing files: ~/.screenrc"
	test ! -f ~/setup/.bashrc	&& ln -s ~/setup/.bashrc	~/.bashrc	|| echo "You must remove the existing files: ~/.bashrc"
	test ! -d ~/setup/.emacs.d	&& ln -s ~/setup/.emacs.d	~/.emacs.d	|| echo "You must remove the existing files: ~/.emacs.d"
