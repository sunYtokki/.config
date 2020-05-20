let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-actions',
  \ 'coc-highlight',
  \ 'coc-tslint-plugin',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-json', 
  \ 'coc-html',
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

