" Set area where splits should open
set splitbelow
set splitright

" Enable folding by indent
set foldmethod=indent
set foldlevel=99

" tmhedberg/SimpylFold: Preview docstring in fold text
let g:SimpylFold_docstring_preview = 1

" Mark extra whitespaces as red
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Use UTF-8
set encoding=utf-8

" Call Flake8 on saving
autocmd BufWritePost *.py call flake8#Flake8()

" Setting highlighting syntax for python
let python_highlight_all=1
syntax on
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set colorcolumn=80 


"colorscheme zenburn

" scrooloose/nerdtree: Open NERDTree at startup (even if no files were to be
" open or when we open a directory)
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

autocmd VimEnter * wincmd p

" scrooloose/nerdtree: Close NERDTree when it's the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" scrooloose/nerdtree: Ignore pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" set numbering
set nu

" alvan/vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*jsx,*js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1

let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_close_shortcut = '<leader>>'

" Settings for ale
let g:ale_linters = {
\   'python': ['flake8', 'pylint'],
\   'javascript': ['eslint'],
\   'vue': ['eslint']
\}

let g:ale_fixers = {
  \    'javascript': ['eslint'],
  \    'typescript': ['prettier', 'tslint'],
  \    'vue': ['eslint'],
  \    'scss': ['prettier'],
  \    'html': ['prettier'],
  \    'reason': ['refmt']
\}

let g:ale_fix_on_save = 1
