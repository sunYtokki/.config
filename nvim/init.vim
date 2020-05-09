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
    
    "Plug 'darfink/vim-plist' "plist viewer

call plug#end()
"======================================== colorscheme.
set termguicolors

"option: dark||light, soft||medium||hard, 
    let g:gruvbox_italic = "1"
    let g:gruvbox_italicize_strings="1"
    let g:gruvbox_italicize_comments = "1"
    "let g:gruvbox_bold = "1"
    "let g:gruvbox_underline ="1"
    "let g:gruvbox_contrast_light ="medium"
    "let g:gruvbox_contrast_dark="medium"
    set bg=light
    "colorscheme gruvbox

    let g:oceanic_next_terminal_italic = 1
    colorscheme OceanicNext
"=========================================== Coc
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-actions',
  \ 'coc-highlight',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-json', 
  \ ]

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

set updatetime=300

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
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use <c-n> to trigger completion.
inoremap <silent><expr> <c-n> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Close the preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Use + to show documentation in preview window.
nnoremap <silent> + :call <SID>show_documentation()<CR>

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
      execute 'CocCommand actions.open' . a:type
    endfunction
    xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
    nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

"coc-highlight all occurrence
    autocmd CursorHold * silent call CocActionAsync('highlight')

"coc-snippets
    "imap <C-/> <Plug>(coc-snippets-expand)
    
    "jump to next placeholder, it's default of coc.nvim
    let g:coc_snippet_next = '<C-,>'
    "jump to previous placeholder, it's default of coc.nvim
    let g:coc_snippet_prev = '<C-.>'

"coc-prettier
    vmap <leader>f  <Plug>(coc-format-selected)
    nmap <leader>f  <Plug>(coc-format-selected)

"coc-smartf
nmap f <Plug>(coc-smartf-forward)
nmap F <Plug>(coc-smartf-backward)
augroup Smartf
  autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#6638F0
  autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
augroup end

"===============================================Nerds
nmap <C-n> :NERDTreeToggle<CR>
vmap -- <plug>NERDCommenterToggle
nmap -- <plug>NERDCommenterToggle

autocmd FileType htmldjango setlocal ft=html
"autocmd FileType json syntax match Comment +\/\/.\+$+
"autocmd FileType htmldjango syntax match Comment +s/^\(.*\)$/<!-- \1 -->/+

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
"noremap <leader>as :let auto_save = 1<CR>
"let g:auto_save_events = ["InsertLeave", "TextChanged"]
"
"==========================================ctrlp
let g:ctrlp_cmd = 'CtrlPBuffer'

"=========================================save fold
set foldmethod=manual
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END
"=================================change cursur insert mode
"highlite line when insert mode
"autocmd InsertEnter,InsertLeave * set cul!
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

"change cursor when insert mode :help guicursor
":set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  "\,a:blinkwait500-blinkoff500-blinkon350
  "\,sm:block-blinkwait500-blinkoff400-blinkon250
"================================== misc ogvim setting
set clipboard+=unnamedplus
set number!
set mouse:a 
set ignorecase

set backupdir^=~/.backup
set dir^=~/.backup//


"==================================== statusline
set statusline=
set statusline+=%#IncSearch#
set statusline+=%y
set statusline+=%r
set statusline+=%M
set statusline+=%#CursorLineNr#
"set statusline+=\ %F
set statusline+=%{expand('%:~:h')}/
set statusline+=%#SpellRare#
set statusline+=%t
"set statusline+=\ %t
set statusline+=%#CursorLineNr#
set statusline+=%= "Right side settings
set statusline+=%l/%L
set statusline+=:%c
"set statusline+=\ [%n]

nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"insert scpace in normalmode
"nnoremap <Space> i<Space><esc>
nnoremap <Return> o<Space><BS><esc>

"switch to visual mode shortcut
imap <C-v> <BS>v

"keep visual selection when shift indent
vnoremap < <gv
vnoremap > >gv

"clear highlights on hitting ESC twice
nnoremap <silent> <esc><esc> :noh<return>

" :set list
set listchars=eol:↪,space:•,tab:▒░,trail:░,extends:⟩,precedes:⟨

" naviate between pane
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-j> <C-w><C-j>

"resize pane
if bufwinnr(1)
    noremap <S-up> :resize +1<CR>
    noremap <S-down> :resize -1<CR>
    noremap <S-right> :vertical resize +1<CR>
    noremap <S-up> :vertical resize -1<CR>
endif

"tab seting
set tabstop=4 shiftwidth=4 expandtab
autocmd FileType text setlocal expandtab softtabstop=2 textwidth=76 spell spelllang=en_us
autocmd FileType html,javascript setlocal expandtab softtabstop=2 shiftwidth=2  

"close buffer without closing split pane
command! BD :bn|:bd#
