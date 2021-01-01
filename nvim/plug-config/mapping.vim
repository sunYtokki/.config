"disable arrows on nmap
"nnoremap <Down> <Nop>
"nnoremap <Left> <Nop>
"nnoremap <Right> <Nop>
"nnoremap <Up> <Nop>

"hjkl navigation on imap
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"switch to visual mode on imap
imap <C-v> <BS>v

"insert blank line on nmap
nnoremap <Space><Space> a<Space><esc>
nnoremap <Return> o<esc>

"keep visual selection when shift indent
vnoremap < <gv
vnoremap > >gv

"clear highlights on hitting ESC twice
nnoremap <silent> <esc><esc> :noh<return>

" naviate between pane
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-j> <C-w><C-j>

"resize pane
if bufwinnr(1)
    noremap <S-k> :resize +5<CR>
    noremap <S-j> :resize -5<CR>
    noremap <S-l> :vertical resize +5<CR>
    noremap <S-h> :vertical resize -5<CR>
endif

"close buffer without closing split pane
command! BD :bn|:bd#
"command! off :bd
