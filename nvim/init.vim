call plug#begin('/Users/yt/.config/nvim/plugged')

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
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

    Plug 'rizzatti/dash.vim'

    Plug 'lifepillar/vim-solarized8'

call plug#end()
"======================================== colorscheme.
set termguicolors

colorscheme solarized8_flat
    set background=light
    let g:solarized_visibility="high"
    let g:solarized_statusline="high"
"solarized dark || light,  _high || _low || _flat, normal || low || high

"=========================================== Coc
":checkhealth //this is neovim command
":CocInfo :CocConfig :CocList //hit tab to activate menu

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-json', 
  \ 'coc-actions',
  \ 'coc-highlight'
  \ ]

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

set updatetime=150

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" Use <Tab> and <S-Tab> to navigate the completion list <cr> to confirm
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>" 
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Close the preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Use K to show documentation in preview window.
nnoremap <silent> H :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

"coc-action
    " Remap for do codeAction of selected region
    function! s:cocActionsOpenFromSelected(type) abort
      execute 'CocCommand actions.open ' . a:type
    endfunction
    xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
    nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

"coc-highlight //:h coc-highlights   
    autocmd CursorHold * silent call CocActionAsync('highlight')

"coc-snippets
    imap <C-+> <Plug>(coc-snippets-expand)

"coc-prettier
    vmap <leader>f  <Plug>(coc-format-selected)
    nmap <leader>f  <Plug>(coc-format-selected)
"===============================================Nerds
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

"autocmd FileType htmldjango setlocal ft=html
autocmd FileType json syntax match Comment +\/\/.\+$+
autocmd FileType htmldjango syntax match Comment +s/^\(.*\)$/<!-- \1 -->/+

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeShowIgnoredStatus = 1

let g:gitgutter_terminal_reports_focus=0

"let g:NERDTreeIndicatorMapCustom = {
    "\ "Modified"  : "✹",
    "\ "Staged"    : "✚",
    "\ "Untracked" : "✭",
    "\ "Renamed"   : "➜",
    "\ "Unmerged"  : "═",
    "\ "Deleted"   : "✖",
    "\ "Dirty"     : "✗",
    "\ "Clean"     : "✔︎",
    "\ "Unknown"   : "?"
"}

"========================================autopairs
let g:AutoPairsShortcutFastWrap='<C-e>'
let g:AutoPairsShortcutJump='<C-]>'
"to use disable c-h shortcut insert mode"
let g:AutoPairsMapCh = 0
"==========================================autosave
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]
"=========================================save fold
set foldmethod=manual
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END
"=================================change cursur insert mode
"highlite line when insert mode
autocmd InsertEnter,InsertLeave * set cul!

"change cursor when insert mode :help guicursor
:set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait500-blinkoff500-blinkon350
  \,sm:block-blinkwait500-blinkoff400-blinkon250
"================================== misc ogvim setting
set clipboard+=unnamedplus
set number!
set mouse:a 
set ignorecase

set backupdir^=~/.backup
set dir^=~/.backup//

nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"insert scpace in normalmode
nnoremap <Space> i<Space><esc>
nnoremap <Return> o<esc>

"switch to v mode from i mode
imap <C-v> <BS>v

"keep visual selection when shift indent
vnoremap < <gv
vnoremap > >gv

"clear highlights on hitting ESC twice
nnoremap <silent> <esc><esc> :noh<return>

" set list showbreak=↪\
set listchars=eol:↪,space:•,tab:▒░,trail:░,extends:⟩,precedes:⟨

" switch pane
nnoremap wh <C-w><C-h>
nnoremap wl <C-w><C-l>
nnoremap wk <C-w><C-k>
nnoremap wj <C-w><C-j>

"tab seting
set tabstop=4 shiftwidth=4 expandtab
autocmd FileType text setlocal expandtab softtabstop=2 textwidth=76 spell spelllang=en_us
autocmd FileType html,javascript setlocal expandtab softtabstop=2 shiftwidth=2  

"close buffer without closing window
command! W :bn|:bd#

