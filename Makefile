# https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html

.PHONY: init lint

init:
	ln -fs $$(pwd)/Formula/altogether.rb $(HOME)/.linuxbrew/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/

lint:
	brew audit --fix --new-formula altogether

include script/*.mk
