" ==============================================================================
" "Plugin.Tagbar" {{{1
" ==============================================================================

" Показывать окно слева
let g:tagbar_left = 1

" Ширина окна
let g:tagbar_width = 30

" Не оставлять пробелов между определениями в окне Tagbar
"let g:tagbar_compact = 1

" Показывать стрелки вместо +/-
"let g:tagbar_iconchars = ['▶', '▼']
let g:tagbar_iconchars = ['▶', '◢']

" Не сортировать
let g:tagbar_sort = 0

" ==============================================================================

"Открытие/закрытие окна tagbar (plugin-tagbar)
map <F2> :TagbarToggle<cr>
imap <F2> <ESC>:TagbarToggle<cr>

"Открытие/закрытие окна Tagbar (plugin-tagbar)
menu .1 Plugin.Code\ Explorer<tab><F2> :TagbarToggle<cr>
imenu .1 Plugin.Code\ Explorer<tab><F2> <ESC>:TagbarToggle<cr>i


" ==============================================================================
