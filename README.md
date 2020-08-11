# Installation guide(for MacOS) <img src="https://media.giphy.com/media/WUlplcMpOCEmTGBtBW/giphy.gif" width="80" title="don't panic, i'm normal">
---

## Steps
1. install brew and components ([brew](https://brew.sh/index_ru)):
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
          
brew install gcc
brew install gdb
          
brew install vim
brew install tmux
          
brew install alacritty
```
2. clone this repository: `git clone https://github.com/rw404/dotfiles.git`
3. install **[vim-plug](https://github.com/junegunn/vim-plug)**:
        `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim `
4. install Nerd fonts and Fira code font:
```
brew tap homebrew/cask-fonts
brew cask install font-firacode-nerd-font
```
5. go to .vimrc and install plugins:
        `:PlugInstall`
6. check [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe) reposiory, then install:
```
brew install cmake macvim python
brew install mono go nodejs
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --all
```
7. install zathura:
```
brew tap zegervdv/zathura
brew install zathura --with-synctex
brew install zathura-pdf-poppler
        
mkdir -p $(brew --prefix zathura)/lib/zathura
ln -s $(brew --prefix zathura-pdf-poppler)/libpdf-poppler.dylib $(brew --prefix zathura)/lib/zathura/libpdf-poppler.dylib
```
8. install markdown components(plugin [here](https://github.com/iamcco/markdown-preview.nvim)):
```
brew install node
```
9. [Oh_my_zsh](https://github.com/ohmyzsh/ohmyzsh):
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
10. [Pfetch](https://github.com/dylanaraps/pfetch):
```
git clone https://github.com/dylanaraps/pfetch.git

sudo install pfetch/pfetch /usr/local/bin/

ls -l /usr/local/bin/pfetch
```
11. you can add alacritty.yml to .config directory:
```
#check .config/alacritty folder:
#if there is no such folder, run this
mkdir ~/.config/alacritty

#then/if you have such folder run this
cp -f alacritty.yml ~/.config/alacritty/
```
12. ~~relax~~
![cat](https://region.center/source/TULA/2018/07/computer-cat-cats-1385999-background-wallpapers.jpg)

