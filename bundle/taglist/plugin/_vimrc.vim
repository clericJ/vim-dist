" ==============================================================================
" "Plugin.taglist"
" просмотр списка тегов/навигатор по коду
" ( http://www.vim.org/scripts/script.php?script_id=273 )
"   util: ctags.exe
" ==============================================================================
"Открытие/закрытие окна taglist (plugin-taglist)
" menu .1 Plugin.Tag\ List<tab><F2> :TlistToggle<cr>
" imenu .1 Plugin.Tag\ List<tab><F2> <ESC>:TlistToggle<cr>i

" Список тегов (plugin-taglist)
" nmap <F2> <Esc>:TlistToggle<cr>
" vmap <F2> <esc>:TlistToggle<cr>
" imap <F2> <esc><esc>:TlistToggle<cr>

" ==============================================================================
let g:Tlist_Show_Menu = 0           " Показывать меню (0-выкл/1-вкл)
let g:Tlist_Show_One_File = 1       " Показывать список тегов только из текущего файла
let g:Tlist_Enable_Fold_Column = 0  " Показывать колонку свёртки (folding)

" ==============================================================================
