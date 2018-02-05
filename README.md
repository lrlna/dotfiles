# notfiles

A time capsule for me, myself et moi:

Things you gonna need when setting up a new envrionment from scratch because you a) whoaaaa cool got a new computer b) decided to set up a new :sparkles: shiny :sparkles: linux distro.

All the files are gonna be symlinked to `~/`, once you clone, run all the symlinks with:

```bash
ln -s ${pwd}/vim/vimrc ~/.vimrc
```

## tmux

You gonna need to get tmux from a [tarball](https://tmux.github.io/), this needs a [livent](http://libevent.org/) download, which could be done with `sudo apt-get libevent`. Once you got libevent, run the ush `./configure && make` following `sudo make install` in the downloaded tmux tarball.
