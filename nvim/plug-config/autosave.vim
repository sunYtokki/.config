let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]
noremap <leader>as :let auto_save = 1<CR>
noremap <leader>ns :let auto_save = 0<CR>
