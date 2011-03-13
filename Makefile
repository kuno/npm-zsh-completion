SHELL = zsh -i

install:
	@print -rl 'Zsh completions are loaded from your fpath directories. Your current fpath is:' \
		$$fpath
	@eval 'dst=$$fpath[1] ; vared -p "Install _npm to: " -c dst ; cp npm-zsh-completion.sh $$dst/_npm' \
		&& echo "Done!" \
		|| echo 'Failed; does the directory exist? Did you forget sudo?'
