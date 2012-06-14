" ==============================================================================
" "Plugin.neocomplcache"
" ==============================================================================
" Переключение всплывающего меню neocomplcache
" (plugin-neocomplcache)
"nmenu PopUp.Toggle\ Neo\ PopUp\ menu :NeoComplCacheToggle<cr>
"imenu PopUp.Toggle\ Neo\ PopUp\ menu <esc>:NeoComplCacheToggle<cr>i

" CTRL+Space для автозавершения (plugin-neocomplcache)
imap <C-Space> <C-X><C-U>

" Раскрыть сниппет/переход по сниппету (plugin-neocomplcache)
imap <silent><C-j> <Plug>(neocomplcache_snippets_expand)
smap <silent><C-j> <Plug>(neocomplcache_snippets_expand)

" ==============================================================================
" Включить/отключить автозавершение
menu  Tools.Toggle\ Autocomplete<tab> :NeoComplCacheToggle <cr>
imenu Tools.Toggle\ Autocomplete<tab> <esc>:NeoComplCacheToggle <cr>i

" ==============================================================================
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_enable_ignore_case = 0

" Если не выставить эту опцию то вырезание а затем вставка (в insert mode)
" через виндовые хоткеи страшно глючит
let g:neocomplcache_disable_select_mode_mappings = 1

" Включение/отключение автоматики Активация по Ctrl+Space
let g:neocomplcache_disable_auto_complete = 1

" ==============================================================================
