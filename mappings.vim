"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set space to alternate folding
nnoremap <space> za

" Move cursor to the next closing tag
inoremap <C-f> <Esc>vat<Esc>a

" Mappings for curly quotes
inoremap ,,, ‘
inoremap ,,,f ’
inoremap ;;; “
inoremap ;;; ”

" Removing the mapping for AutoPairs
autocmd VimEnter,BufEnter,BufWinEnter * silent! iunmap <buffer> â
