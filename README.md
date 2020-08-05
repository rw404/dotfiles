# Installation guide(for MacOS)
---------------------------------------------------------

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

2. clone this repository: ' git clone https://github.com/rw404/firstGit '
3. install **[vim-plug]**(https://github.com/junegunn/vim-plug):
        - 'curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
4. install Nerd fonts and Fira code font:
     '''
     brew tap homebrew/cask-fonts
     brew cask install font-firacode-nerd-font
     '''
5. go to .vimrc and install plugins:
        - ':PlugInstall'
6. check [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe) reposiory, then install:
        '''
        brew install cmake macvim python
        brew install mono go nodejs
        cd ~/.vim/plugged/YouCompleteMe
        python3 install.py --all
        '''
7. install zathura:
        '''
        brew tap zegervdv/zathura
        brew install zathura --with-synctex
        brew install zathura-pdf-poppler
        
        mkdir -p $(brew --prefix zathura)/lib/zathura
        ln -s $(brew --prefix zathura-pdf-poppler)/libpdf-poppler.dylib $(brew --prefix zathura)/lib/zathura/libpdf-poppler.dylib
        '''
8. install markdown components:
        '''
        brew install node
        '''
        guide [here](https://github.com/iamcco/markdown-preview.nvim)
9. end
![cat](https://region.center/source/TULA/2018/07/computer-cat-cats-1385999-background-wallpapers.jpg)

