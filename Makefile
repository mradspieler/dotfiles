all: sync

sync:
	[ -f ~/.vimrc.local ] || ln -s $(PWD)/vimrc.local ~/.vimrc.local
	[ -f ~/.vimrc.bundles.local ] || ln -s $(PWD)/vimrc.bundles.local ~/.vimrc.bundles.local
	[ -f ~/.vimrc.before.local ] || ln -s $(PWD)/vimrc.before.local ~/.vimrc.before.local

	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmuxconf ~/.tmux.conf
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.psqlrc ] || ln -s $(PWD)/psqlrc ~/.psqlrc
	[ -f ~/.config/alacritty/alacritty.yml ] || ln -s $(PWD)/gitconfig ~/.config/alacritty/alacritty.yml

clean:
	rm -f ~/.vimrc.local
	rm -f ~/.vimrc.bundles.local
	rm -f ~/.vimrc.before.local
	rm -f ~/.zshrc
	rm -f ~/.tmux.conf
	rm -f ~/.gitconfig

.PHONY: all clean sync build run kill
