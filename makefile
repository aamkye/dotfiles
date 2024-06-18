# Make makefile tolerant to spaces
.RECIPEPREFIX := $() $()

.PHONY: all
all: prepare install

.PHONY: prepare
prepare:
  mkdir -p ${HOME}/.dotfiles/

.PHONY: install
install:
  cd ./dotfiles/ && \
  stow -v -S -t ${HOME} .
