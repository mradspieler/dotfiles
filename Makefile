all: sync

sync:
	[ -f ~/.vimrc.local ] || ln -s $(PWD)/vimrc.local ~/.vimrc.local
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmuxconf ~/.tmux.conf
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig

clean:
	rm -f ~/.vimrc.local 
	rm -f ~/.zshrc
	rm -f ~/.tmux.conf
	rm -f ~/.gitconfig

.PHONY: all clean sync build run kill
