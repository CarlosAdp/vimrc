" Set spaces and tabs for Json
au BufRead,BufNewFile *.json set expandtab|
            \ set shiftwidth=2|
            \ set autoindent|
            \ set smartindent|

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


colorscheme pablo

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

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
