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
"=========================================== colorscheme.
set termguicolors

    let g:gruvbox_italic = "1"
    let g:gruvbox_italicize_strings="1"
    let g:gruvbox_italicize_comments = "1"
    set bg=light
    let g:oceanic_next_terminal_italic = 1

"colorscheme gruvbox
colorscheme OceanicNext

noremap  <silent><leader>li :colo gruvbox <bar>:set bg=light<CR>   
noremap  <silent><leader>da :colo OceanicNext<CR>

"=========================================== Coc
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-actions',
  \ 'coc-highlight',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-json', 
  \ ]

"vim setting for coc
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

"coc LSP functions
    " Use tab for trigger completion with characters ahead and navigate.
    " make sure tab is not mapped by other plugin 
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

    " Use <Tab> and <S-Tab> to navigate the completion list <cr> to confirm
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>" 
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

    "completion trigger
inoremap <silent><expr> <c-n> coc#refresh() 

    "diagnostics navigation
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

    "coc-highlight all occurrence
autocmd CursorHold * silent call CocActionAsync('highlight')

"coc-list
    " Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
    " Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
    " Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
    " Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
    " Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>

"coc-action
    " Applying codeAction to the selected region.
    " Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
    " Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
    " Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

"coc-snippets
imap <C-/> <Plug>(coc-snippets-expand)
    "jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<C-]>' 
    "jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<C-[>' 

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

"=========================================== Plugged
"Nerd Tree
nmap <C-n> :NERDTreeToggle<CR>

let g:NERDTreeGitStatusWithFlags = 1
"let g:NERDTreeIgnore = ['^node_modules$']
"let g:NERDTreeShowIgnoredStatus = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \}

"gitgutter
let g:gitgutter_git_executable = '/usr/local/bin/git'
let g:gitgutter_max_signs = 500
let g:gitgutter_terminal_reports_focus=0

"Nerd Commenter
vmap -- <plug>NERDCommenterToggle
nmap -- <plug>NERDCommenterToggle

autocmd FileType htmldjango setlocal ft=html
"autocmd FileType json syntax match Comment +\/\/.\+$+
"autocmd FileType htmldjango syntax match Comment +s/^\(.*\)$/<!-- \1 -->/+

"autopairs
let g:AutoPairsShortcutFastWrap='<C-e>'
let g:AutoPairsShortcutJump='<C-]>'
    "to use disable c-h shortcut insert mode"
let g:AutoPairsMapCh = 0

"autosave
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]
noremap <leader>as :let auto_save = 1<CR>
noremap <leader>ns :let auto_save = 0<CR>

"ctrlp
let g:ctrlp_cmd = 'CtrlPBuffer'

"=========================================== custom vim setting
" Persistent undo
set undofile
set undodir=$HOME/.config/nvim/undo
set undolevels=1000
set undoreload=10000

"misc
set clipboard+=unnamedplus
set number!
set mouse:a 
set ignorecase
set backupdir^=~/.backup
set dir^=~/.backup//

"save fold
set foldmethod=manual
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

"change cursor and highlite line when insert mode
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

""blink cursor :help guicursor
":set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  "\,a:blinkwait500-blinkoff500-blinkon350
  "\,sm:block-blinkwait500-blinkoff400-blinkon250

"indent seting by file type
set tabstop=4 shiftwidth=4 expandtab
autocmd FileType text setlocal expandtab softtabstop=2 textwidth=76 spell spelllang=en_us
autocmd FileType html,javascript setlocal expandtab softtabstop=2 shiftwidth=2  

"key mapping
    "disable arrows on nmap
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

    "hjkl navigation on imap
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

    "switch to visual mode on imap
imap <C-v> <BS>v

    "insert blank line on nmap
nnoremap <Space><Space> a<Space><esc>
nnoremap <S-Return> o<esc>

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
    noremap <S-left> :vertical resize -1<CR>
endif

    "close buffer without closing split pane
command! BD :bn|:bd#

"statusline
set laststatus=2
set statusline=
set statusline+=%#StLineBgOn#
set statusline+=%y
set statusline+=%r
set statusline+=%M
set statusline+=%#StLineConceal#
set statusline+=\ %{expand('%:~:h')}/
set statusline+=%#StLineDir#
set statusline+=%t
set statusline+=%= "Right side settings
set statusline+=%#StLineConceal#
set statusline+=%{coc#status()}%{get(b:,'coc_current_function','')}\ 
set statusline+=%#StLineDefault#
set statusline+=%l/%L
set statusline+=:%c\ 
set statusline+=%#StLineBgOn#
set statusline+=[%n]

"set current working directory to
autocmd BufEnter * silent! lcd %:p:h
