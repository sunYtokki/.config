call plug#begin('/Users/yt/.config/nvim/plugged')

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'sheerun/vim-polyglot'

    "file navigation
    Plug 'ctrlpvim/ctrlp.vim'
    
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ryanoasis/vim-devicons'
    Plug 'airblade/vim-gitgutter'

    Plug 'scrooloose/nerdcommenter'
    Plug 'optroot/auto-pairs'
    Plug 'tpope/vim-surround'
    Plug '907th/vim-auto-save'

    "colorschemes
    Plug 'mhartington/oceanic-next'
    Plug 'morhetz/gruvbox'

call plug#end()

"=========================================== sources
source $HOME/.config/nvim/plug-config/colorschemes.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/autopairs.vim
source $HOME/.config/nvim/plug-config/autosave.vim
source $HOME/.config/nvim/plug-config/ctrlp.vim
source $HOME/.config/nvim/plug-config/gitGutter.vim
source $HOME/.config/nvim/plug-config/mapping.vim
source $HOME/.config/nvim/plug-config/nerds.vim
source $HOME/.config/nvim/plug-config/statualine.vim
source $HOME/.config/nvim/plug-config/vimSetting.vim

