# notfiles

A time capsule for me, myself et moi:

Things you gonna need when setting up a new envrionment from scratch because you a) whoaaaa cool got a new computer b) decided to set up a new :sparkles: shiny :sparkles: linux distro.

## Computer -- Mac Setup

1. Change capslock to control -- System Preferences --> Keyboard --> Modifier Keys
2. Get [Firefox Nightly](https://www.mozilla.org/en-US/firefox/channel/desktop/)
3. Get [iTerm2](https://www.iterm2.com/downloads.html)
4. Download XCode -- could be done automagically with trying anything `git` related
5. Get [dracula theme for iTerm2](https://draculatheme.com/iterm/)
6. Install [brew](https://brew.sh/):
```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Github
1. Will need to add ssh key as a new account. Steps can be followed [here](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)
2. Alternatively, a better way to do it, is to airdrop yourself previous ssh keys from your previous account. Those should be under:
``` bash
$ ~/.ssh/id_rsa.pub
```

## :vim
1. You're going to need [vundler] installed. Get it [here](https://github.com/VundleVim/Vundle.vim)
```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
2. [YouCompleteMe]() vim plugin needs to be compiled.
  - first install CMake 
    ```bash
    $ brew install CMake
    ```
  - then run:
    ```bash
      cd ~/.vim/bundle/YouCompleteMe
      ./install.py
    ```

## Installing files in this repo


All the files are gonna be symlinked to `~/`, once you clone, run all the symlinks with:

```bash
$ ./setup.sh
```

1. You will need a few things to get gpg stuff to work. Most of the docs are in [this repo](https://gist.github.com/bmhatfield/cc21ec0a3a2df963bffa3c1f884b676b)
2. GPG keys need to be generated. Follow the instructions [here](https://help.github.com/articles/generating-a-new-gpg-key)
3. get [nvm](https://github.com/creationix/nvm)

## tmux

You gonna need to get tmux from a [tarball](https://tmux.github.io/), this needs a [livent](http://libevent.org/) download, which could be done with `sudo apt-get libevent`. Once you got libevent, run the ush `./configure && make` following `sudo make install` in the downloaded tmux tarball.
