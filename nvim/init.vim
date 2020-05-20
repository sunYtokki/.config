call plug#begin('/Users/yt/.config/nvim/plugged')

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "syntax highlighting
    Plug 'sheerun/vim-polyglot'
    Plug 'ianks/vim-tsx'

    "file navigation
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ctrlpvim/ctrlp.vim'

    "git plug-ins
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'

    Plug 'scrooloose/nerdcommenter'
    Plug 'optroot/auto-pairs'
    Plug '907th/vim-auto-save'
    Plug 'tpope/vim-surround'

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
source $HOME/.config/nvim/plug-config/statusline.vim
source $HOME/.config/nvim/plug-config/vimSetting.vim

