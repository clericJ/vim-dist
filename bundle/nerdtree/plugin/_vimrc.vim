" ==============================================================================
" "Plugin.NERDTree"
" ==============================================================================

" Открытие/закрытие окна NERD_Tree (plugin-NERD_Tree)
menu .2 Plugin.File\ Explorer<tab><F8> :NERDTreeToggle<cr>
imenu .2 Plugin.File\ Explorer<tab><F8> <ESC>:NERDTreeToggle<cr>

" ==============================================================================

" Обозреватель файлов (plugin-NERD_Tree)
map <F8> :NERDTreeToggle<cr>
vmap <F8> <esc>:NERDTreeToggle<cr>
imap <F8> <esc>:NERDTreeToggle<cr>

" ==============================================================================

" Установить положение окна NERDTree, "left" или "right"
let NERDTreeWinPos = 'right'

let NERDTreeShowBookmarks = 1
let NERDTreeIgnore = ['\~$', '*.pyc', '*.pyo']
let NERDChristmasTree = 0
let NERDTreeDirArrows=1
let NERDTreeMinimalUI=1
