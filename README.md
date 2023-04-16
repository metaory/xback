# simple-backup
A very very simple (under 30 LoC) **backup** and **restore** tool written in pure Bash

# Usage
- link executables to your bin path
- update the config `cp sample.mbackup.conf mbackup.conf`
- place the config in a clean git directory 

- run `mbackup`
  - looks for a `config` file in current working directory,
  - parses the config
  - copy each file/dir of config path to `./data`

- run `./mrestore`
  - looks for a `./config` file in current working directory,
  - parses the config
  - restore each entry if exists in `./data`

# Sample Config
```cfg
# AWM
/home/meta/.config/awesome/rc.lua
/home/meta/.config/awesome/mtheme.lua
/home/meta/.config/awesome/mlib

# Kitty
/home/meta/.config/kitty

# Tmux
/home/meta/.config/tmux

# Alacritty
/home/meta/.config/alacritty
```
# How does it works
- It parses the config for paths
- Copy the path _directory/file_ to `./data` with all slashes replaced with `_`

For example path of
`/home/meta/tmp/js` will go to `./m.dotfiles/data/_home_meta_tmp_js`
