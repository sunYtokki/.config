call plug#begin('/Users/yt/.config/nvim/plugged')

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "syntax highlighting
    Plug 'sheerun/vim-polyglot'
    Plug 'ianks/vim-tsx'
    Plug 'jackguo380/vim-lsp-cxx-highlight'

    "file navigation
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ctrlpvim/ctrlp.vim'

    "git plug-ins
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'

    "convini
    Plug 'scrooloose/nerdcommenter'
    Plug 'optroot/auto-pairs'
    Plug '907th/vim-auto-save'
    Plug 'tpope/vim-surround'

    "tidal & haskell
    Plug 'tidalcycles/vim-tidal'
    Plug 'neovimhaskell/haskell-vim'
    Plug 'https://github.com/supercollider/scvim.git'

    "Latex
    "Plug 'lervag/vimtex'

    "colorschemes
    Plug 'mhartington/oceanic-next'
    Plug 'morhetz/gruvbox'
    Plug 'lifepillar/vim-solarized8'

call plug#end()

"=========================================== sources
source $HOME/.config/nvim/plug-config/colors.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/autopairs.vim
source $HOME/.config/nvim/plug-config/autosave.vim
source $HOME/.config/nvim/plug-config/ctrlp.vim
source $HOME/.config/nvim/plug-config/gitGutter.vim
source $HOME/.config/nvim/plug-config/mapping.vim
source $HOME/.config/nvim/plug-config/nerds.vim
source $HOME/.config/nvim/plug-config/statusline.vim
source $HOME/.config/nvim/plug-config/vimSetting.vim

"tidal setting
filetype plugin on
"open with neovim terminal instead of tmux when ft=.tidal
let g:tidal_target = "terminal" 
"let g:tidal_no_mappings = 1

