set termguicolors

    let g:gruvbox_italic = "1"
    let g:gruvbox_italicize_strings="1"
    let g:gruvbox_italicize_comments = "1"

    let g:solarized_extra_hi_groups = "1"
    let g:solarized_italics = "1"
    let g:solarized_statusline = "low"
    let g:solarized_visibility = "low"

    set bg=light
    let g:oceanic_next_terminal_italic = 1

"colorscheme gruvbox
colorscheme OceanicNext
"colorscheme solarized8 

noremap <silent><leader>cgl :colo gruvbox <bar>:set bg=light<CR>   
noremap <silent><leader>cgd :colo gruvbox <bar>:set bg=dark<CR>   
noremap <silent><leader>co :colo OceanicNext<CR>
noremap <silent><leader>csl :colo solarized8 <bar>:set bg=light<CR>
noremap <silent><leader>csd :colo solarized8 <bar>:set bg=dark<CR>


"cpp syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
