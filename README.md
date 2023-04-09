# simple-backup
A very very simple (under 30 LoC) **backup** and **restore** tool written in pure Bash

# How it works
- parses `./config` file in current working directory
- `mbackup` copy and unwrap backup path if exists
- `mrstore`


# Usage
- `cp sample.config config` and update the config
- `./mbackup` 
  - looks for a `./config` file in current working directory,
  - parses the config and backup each file/dir of config path

- `./mrestore`
  - looks for a `./config` file in current working directory,
  - parses the config and restore each entry if exists

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
