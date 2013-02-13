
.SILENT: symbolic-links

symbolic-links:
	test ! -f ~/.screenrc			&& ln -s ~/setup/.screenrc		~/.screenrc	|| echo "You must remove the existing files: ~/.screenrc"
	test ! -f ~/.bashrc			&& ln -s ~/setup/.bashrc		~/.bashrc	|| echo "You must remove the existing files: ~/.bashrc"
	test ! -f ~/.git-completion.bash	&& ln -s ~/setup/.git-completion.bash	~/.emacs.d	|| echo "You must remove the existing files: ~/.git-completion.bash"
	test ! -d ~/.emacs.d			&& ln -s ~/setup/.emacs.d		~/.emacs.d	|| echo "You must remove the existing files: ~/.emacs.d"
