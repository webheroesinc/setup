

symbolic-links:
	test ! -f ~/.screenrc	&& ln -s ~/setup/.screenrc	~/.screenrc	|| echo "You must remove the existing files: ~/.screenrc"
	test ! -f ~/.bashrc	&& ln -s ~/setup/.bashrc	~/.bashrc	|| echo "You must remove the existing files: ~/.bashrc"
	test ! -d ~/.emacs.d	&& ln -s ~/setup/.emacs.d	~/.emacs.d	|| echo "You must remove the existing files: ~/.emacs.d"
