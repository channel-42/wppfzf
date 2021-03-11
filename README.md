# wppfzf ![](https://img.shields.io/badge/version-0.1.0-green.svg) [![](https://img.shields.io/badge/license-GPLv3-orange.svg)](https://github.com/channel-42/wppfzf/blob/master/LICENSE) 
<p align="center"><i>Browse and donwload images from reddit with fzf and ueberzug</i></p>
<p align="center"><img src="https://github.com/channel-42/wppfzf/blob/master/resources/demo.gif" align="center" alt="demo gif"title="fancy demo"></p>

# Content

1. [Installation](#installation)
2. [Usage](#usage)
3. [Theming](#theming)
4. [Notes](#notes)


# Installation
### General
**Dependencies**
- bash
- fzf
- ueberzug

Install the necessary dependencies first. Then, get the **latest release** by running:

```bash
wget "https://github.com/channel-42/wppfzf/archive/v0.1.0.tar.gz" \
-O $HOME/wppfzf.tar.gz
mkdir $HOME/.wppfzf_d
tar -zxvf wppfzf.tar.gz -C $HOME/.wppfzf_d --strip-components 1
rm -f $HOME/wppfzf.tar.gz
cd $HOME/.wppfzf_d && sudo make install
```
> You can specify the installation directory by using `sudo make DESTDIR=/your/dir PREFIX="" install`

Alternatively, to get the bleeding edge version (i.e. `HEAD`) run:

```bash
sudo wget "https://raw.githubusercontent.com/channel-42/wppfzf/master/wppfzf" \
-O /usr/bin/wppfzf
sudo chmod +x /usr/bin/wppfzf
```

### Arch

To install the AUR package use your AUR-helper of choice, e.g.:
```bash
paru -S wppfzf
```

# Usage

> All cli options are shown and explained when running `wppfzf -h` 

To start a simple query, run `wppfzf` with no arguments. This will use the defaults. Each line shows the posts tile as well the number of up- and downvotes. 

- To open the currently selected image in your default image-viewer, press `ctrl-p`.
- To download the currently selected image, press `ENTER`. 
- Press `ESC` to quit wppfzf.

To search a specific subreddit, use the `-r` option, `-l N` will limit the api query to N posts. 

> Note that less images may be show in wppfzf itself due to filtering of incompatible posts (e.g. imgur albums).

wppfzf defaults to searching the last 20 posts of *r/wallpapers* and saving desired images to `$HOME/Pictures`. These settings, as well as the default preview window size and location, can be temporarily changed through the cli arguments. 

To make these changes permanent, the script itself has to be edited. The settings are located at the top of the script: 

```bash
# query limit 
LIMIT=20
# default subreddit to search
SUBREDDIT="wallpapers"
# dir to save images to
declare -x WPP_FZF_DL_DIR=$HOME/Pictures
# default preview position
declare -x DEFAULT_PREVIEW_POSITION="up"
# default preview size
declare -x DEFAULT_PREVIEW_SIZE="60%"
```

# Theming

Theming the fzf interface is done at the top of the script itself. To see all available color options, refer to fzf's man page.

```bash
# default interface colors: 'option:term_color_code'
COLOR_OPTS="bg+:0,fg:7,fg+:1,border:8,hl+:2,prompt:14,hl:2,pointer:6,info:8,spinner:6"
```

# Notes

This project is made possible through both [fzf](https://github.com/junegunn/fzf) and [ueberzug](https://github.com/seebye/ueberzug).
