set nocompatible	" Disable the turning off of enhancements made by Vi Improved due to need of compatibility with older versions
filetype off		" Required for Vundle to work

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins for python folding
Plugin 'Konfekt/FastFold'
Plugin 'tmhedberg/SimpylFold'

" Plugin for indenting (according to PEP8)
Plugin 'vim-scripts/indentpython.vim'

" Plugin for autocompletion for Python
Plugin 'davidhalter/jedi-vim'

" Colorschemes
Plugin 'jnurmine/Zenburn'

" Auto pairs
Plugin 'jiangmiao/auto-pairs'
" Auto pairs for (X)HTML
Plugin 'alvan/vim-closetag'

" Plugin for directory navegation inside vim
Plugin 'scrooloose/nerdtree'

" Plugin for automatic (un)commenting
Plugin 'tpope/vim-commentary'

" Plugin for enhanced javascript highlighting
Plugin 'othree/yajs.vim'

" Plugin for linting/fixing
Plugin 'dense-analysis/ale'

" Plugin for yaml indentation
Plugin 'mrk21/yaml-vim'

"Plugin for flake8
Plugin 'nvie/vim-flake8' 


" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
