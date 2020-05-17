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