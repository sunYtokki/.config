"Nerd Tree
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeGitStatusWithFlags = 1
"let g:NERDTreeIgnore = ['^node_modules$']
"let g:NERDTreeShowIgnoredStatus = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
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


"Nerd Commenter
vmap -- <plug>NERDCommenterToggle
nmap -- <plug>NERDCommenterToggle

let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 
    \'asm': { 'left': '#'},
    \'javascript.js': {'left': '//'}
    \}
