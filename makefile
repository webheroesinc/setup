
.SILENT:	symbolic-links
.PHONY:		setup symbolic-links

setup:		symbolic-links
	mkdir -p ~/src/documentation

symbolic-links:
	test ! -f ~/.screenrc			&& ln -s ~/setup/.screenrc		~/ || echo "You must remove the existing files: ~/.screenrc"
	test ! -f ~/.bashrc			&& ln -s ~/setup/.bashrc		~/ || echo "You must remove the existing files: ~/.bashrc"
	test ! -f ~/.git-completion.bash	&& ln -s ~/setup/.git-completion.bash	~/ || echo "You must remove the existing files: ~/.git-completion.bash"
	test ! -d ~/.emacs.d			&& ln -s ~/setup/.emacs.d		~/ || echo "You must remove the existing files: ~/.emacs.d"
