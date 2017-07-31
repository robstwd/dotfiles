" ======================================================================
" airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'

" display buffers on top row
let g:airline#extensions#tabline#enabled = 1

" define tabline separators
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" ======================================================================

" NERDTree settings
map <F3> :NERDTreeToggle<CR>     " toggle NERDTree on and off
let NERDTreeShowHidden=1         " default show hidden files

" ======================================================================

" deoplete settings
let g:deoplete#enable_at_startup = 1

" ======================================================================

" limelight settings
autocmd! User GoyoEnter Limelight    " integration with goyo
autocmd! User GoyoLeave Limelight!   " integration with goyo

" =====================================================================

" LanguageTool settings
let g:languagetool_jar = '/usr/share/java/languagetool/languagetool-commandline.jar'
let g:languagetool_lang = 'en-AU'
