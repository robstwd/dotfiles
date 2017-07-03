" vim-plug section
" https://github.com/junegunn/vim-plug

call plug#begin('~/.local/share/nvim/plugged')

" airline on the status line
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'

" git-gutter 
" https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

" colour scheme
" https://github.com/joshdick/onedark.vim
Plug 'joshdick/onedark.vim'

" nerd tree
" https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'

" syntax checking plugin 
" https://github.com/vim-syntastic/syntastic
Plug 'scrooloose/syntastic'

" plugin to show the list of buffers in the command bar
" https://github.com/bling/vim-bufferline
" Plug 'bling/vim-bufferline'

" asynchronous keyword completion system in the current buffer
" https://github.com/Shougo/deoplete.nvim 
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" deoplete-jedi: jedi source for Python
Plug 'zchee/deoplete-jedi'

" deoplete-ruby: ruby source for Ruby language
Plug 'fishbullet/deoplete-ruby'

call plug#end()

" ======================================================================

" Plug commands
" PlugInstall [name ...] [#threads]	Install plugins
" PlugUpdate [name ...] [#threads]	Install or update plugins
" PlugClean[!]	Remove unused directories (bang version will clean without prompt)
" PlugUpgrade	Upgrade vim-plug itself
" PlugStatus	Check the status of plugins
" PlugDiff	Examine changes from the previous update and the pending changes
" PlugSnapshot[!] [output path]	Generate script for restoring the current snapshot of the plugins
