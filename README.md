# notfiles

A time capsule for me, myself et moi:

Things you gonna need when setting up a new envrionment from scratch because you a) whoaaaa cool got a new computer b) decided to set up a new :sparkles: shiny :sparkles: linux distro.

## Computer -- Mac Setup

1. Install [Karabiner and Karabiner Element Viewer](https://karabiner-elements.pqrs.org/) to remap keys
2. Get [Chrome](https://www.google.com/chrome/index.html`)
3. Get [1Password](https://1password.com/downloads/mac)
4. Install [brew](https://brew.sh/):
```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
## Installing files in this repo

All the files are gonna be symlinked to `~/`, once you clone, run all the symlinks with:

```bash
$ ./setup.sh
```

## :vim
1. You're going to need [vundler] installed. Get it [here](https://github.com/VundleVim/Vundle.vim)
```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
2. [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe?tab=readme-ov-file#installation) vim plugin needs to be compiled.
  - then run:
    ```bash
      cd ~/.vim/bundle/YouCompleteMe
      ./install.py
    ```
## tmux

You gonna need to get tmux from a [tarball](https://tmux.github.io/), this needs a [livent](http://libevent.org/) download, which could be done with `sudo apt-get libevent`. Once you got libevent, run the ush `./configure && make` following `sudo make install` in the downloaded tmux tarball.
