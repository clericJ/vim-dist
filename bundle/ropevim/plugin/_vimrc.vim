" ==============================================================================
" "Plugin.ropevim"
" ==============================================================================
"
augroup ropevim
    " Установка быстрой помощи по K для слова под курсором с помощью pydoc
    " для файлов python (plugin-ropevim)
    au FileType python nmap <buffer> <S-K> :call RopeShowDoc()<CR>

    " Переход к определению для файлов python по gd выполняется с
    " помощью rope (Plugin-ropevim)
    au FileType python nmap <buffer> gd :call RopeGotoDefinition()<CR>

    " Использование rope code assist, вместо omni completion
    " для файлов python при нажатии CTRL+Space
    " (plugin-ropevim)
    au FileType python imap <buffer> <C-space> <C-R>=RopeCodeAssistInsertMode()<cr>
augroup END
" ==============================================================================

augroup user-contextmenu
    au MenuPopup * call ToggleFTContextMenu(["python"],["i","n"], "PopUp.-Usrsep4-", ":")
    "" Показ документации по объекту python над которым находится курсор
    "" (plugin-ropevim)
    au MenuPopup * call ToggleFTContextMenu(["python"],["i","n"],
                \"PopUp.Show\\ Documentation<tab><S-k>","RopeShowDoc()")

    "" Поиск места определения объекта под курсором (plugin-ropevim)
    au MenuPopup * call ToggleFTContextMenu(["python"],["i","n"],
                \"PopUp.Goto\\ Definition<tab>gd","RopeGotoDefinition()")

    "" Поиск всех мест где используется объект, находящийся под
    "" курсором (plugin-ropevim)
    au MenuPopup * call ToggleFTContextMenu(["python"],["i","n"], 
                \"PopUp.Find\\ Occurrences","RopeFindOccurrences()")
augroup END
" ==============================================================================

let g:ropevim_vim_completion = 1
let g:ropevim_extended_complete = 1

" ==============================================================================
