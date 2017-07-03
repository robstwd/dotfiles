" map 'jk' to the escape key
" https://danielmiessler.com/study/vim/#configuration
inoremap jk <ESC>

" remap leader key to spacebar
let mapleader = "\<Space>"

" remap : to ;
nnoremap ; :

" switch between buffers
map <F5> :bprevious<CR>
map <F6> :bnext<CR>
