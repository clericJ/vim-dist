" ==============================================================================
" "Plugin.vimshell"
" ==============================================================================

" Полноэкранный режим (plugin-vimshell)
inoremap <F10> <esc><esc>:Fullscreen<CR>
nnoremap <F10> :Fullscreen<CR>

inoremap <A-CR> <esc><esc>:Fullscreen<CR>
nnoremap <A-CR> :Fullscreen<CR>

" ==============================================================================

vmenu .1 PopUp.Open <esc> :exec 'Open ' . GetSelection()<cr>
vmenu .1 PopUp.-Usrsep1- :

" ==============================================================================

" Полноэкранный режим (plugin-vimshell)
amenu .998 Window.-usrsep99- :
amenu .999 Window.Toggle\ Fullscreen<tab><F10> <esc><esc>:Fullscreen<cr>

" ==============================================================================

" Отключение клавиатурных привязок плагина
let g:shell_mappings_enabled = 0

" ==============================================================================

" Функция возвращает выделенный текст
function! GetSelection()
    " "unused"
    let l:line = getline("'<")
    let l:line = strpart(l:line, col("'<") - 1, col("'>") - col("'<") + 1)
    return l:line
endfunction

" ==============================================================================
