
" Always show the status line
set laststatus=2

" set airline theme
" https://github.com/vim-airline/vim-airline-themes
let g:airline_theme='dark'

" display glyph fonts
" https://github.com/vim-airline/vim-airline/wiki/FAQ#the-powerline-font-symbols-are-not-showing-up
let g:airline_powerline_fonts = 1

" Enable syntax highlighting
syntax enable

colorscheme monokai

" enable line numbers
set number

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.

" execute python script; press <Esc> and then <F5>
nnoremap <silent> <F5> :!clear;python %<CR>
