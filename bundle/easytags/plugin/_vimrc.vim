
"set tags=./tags;

" Создавать файл тегов в текущей директории проекта, в место использования
" глобального файла
"let g:easytags_dynamic_files = 2

" Использовать python интерфейс, для ускорения работы
let g:easytags_python_enabled = 1

" Включение дополнительной информации в файлы тегов
"let g:easytags_autorecurse = 1
"let g:easytags_include_members = 1

" Отключение автоматического обновления и подсветки тегов (тормозит)
let g:easytags_on_cursorhold = 0

augroup easytags-plugin

    " Обновлять файлы тегов после чтения и сохранения файла
    "autocmd BufReadPost * :UpdateTags
    autocmd BufWritePost * :UpdateTags

    " Подсветить теги после чтения файла и сохранения
    autocmd BufReadPost * :HighlightTags
    autocmd BufWritePost * :HighlightTags

augroup END
