
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
autocmd FileType html,javascript,css setlocal expandtab softtabstop=2 shiftwidth=2  

"comment out remap
autocmd FileType htmldjango setlocal ft=html
"autocmd FileType json syntax match Comment +\/\/.\+$+
"autocmd FileType htmldjango syntax match Comment +s/^\(.*\)$/<!-- \1 -->/+

" :set list
set listchars=eol:↪,space:•,tab:▒░,trail:░,extends:⟩,precedes:⟨

"correct current working directory
autocmd BufEnter * silent! lcd %:p:h
