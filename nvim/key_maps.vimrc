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

" exit terminal mode
tnoremap <Esc> <C-\><C-n><CR>

" toggle limelight
map <F7> :Limelight!!<CR>

" toggle goyo
map <F8> :Goyo<CR>

" LanguageTool check
map <F9> :LanguageToolCheck<CR>

" LanguageTool results clear
map <F10> :LanguageToolClear<CR> 
