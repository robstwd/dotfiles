" My neovim configuration

" https://neovim.io/

" source this file when open using :source %

" ======================================================================

" contains vim-plug section, initialising my plugins
source $XDG_CONFIG_HOME/nvim/plugins.vimrc

" general nvim settings
source $XDG_CONFIG_HOME/nvim/general.vimrc

" plugin-specific settings
source $XDG_CONFIG_HOME/nvim/plugin_settings.vimrc

" custom key bindings
source $XDG_CONFIG_HOME/nvim/key_maps.vimrc   

" display settings
source $XDG_CONFIG_HOME/nvim/display.vimrc
