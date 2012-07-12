" ==============================================================================
" Файл пользовательских настроек vim (7.3)
" Maintrainer: clericJ
" Все настройки относящиеся к плагинам лежат в отдельных файлах
" внутри пакетов (например для FuzzyFinder это будет
" bundle/vim-fuzzyfinder/plugin/_vimrc.vim)
" Однако при таком варианте размещения настроек для плагинов,
" могут возникнуть проблемы с очерёдностью загрузки, файл
" настроек должен загружаться раньше самого плагина
"
" TODO: реализовать smartmap и smartmenu
" "smartmap ni <C-_> test"

"Text/Code Navigation
"    "F1"  Help
"       "C-F1"    Help (FuzzyFinder)
"       "C-S-F1"  Rebuild help tags
"    "F2"  Code Explorer
"    "F3"  Find Next
"    "F4"  Calendar
"       "C-F4" Calculator

"Explore Buffers and Files
"    "F5"  Compile/Execute current file
"    "F6"  Buffer Explorer
"    "F7"  List of Files in Directory
"    "F8"  File Explorer

"Manipulate Windows and Buffers
"    "F9"  Restore Last Session
"    "F10" Toggle Fullscreen
"    "F11" Close Current Window
"    "F12" Delete Current Buffer
"" ==============================================================================
" Установленные плагины и их зависимости {{{1
" "taglist"
" просмотр списка тегов/навигатор по коду
" ( http://www.vim.org/scripts/script.php?script_id=273 )
"   requres-tool: ctags
"
" "themes"
" дополнительные темы
" ( http://www.vim.org/scripts/script.php?script_id=625 )
"
" "matrix"
" для входа в матрицу ввести команду :Matrix
" ( http://www.vim.org/scripts/script.php?script_id=1189 )
"
" "fencview"
" работа с кодировками/авто-определение кодировок
" ( http://www.vim.org/scripts/script.php?script_id=1708 )
"   requres-tool: iconv.dll
"
" "nerdcommenter"
" работа с комментариями в коде
" ( http://www.vim.org/scripts/script.php?script_id=1218 )
"
" "nerdtree"
" просмотр файловой системы
" ( http://www.vim.org/scripts/script.php?script_id=1658 )
"
" "matchit"
" расширенная команда % для HTML, LaTX, ...
" ( http://www.vim.org/scripts/script.php?script_id=39 )
"
" "mru"
" меню последних открытых файлов
" ( http://www.vim.org/scripts/script.php?script_id=521 )
"
" "sessionman"
" удобное управление сессиями
" ( http://www.vim.org/scripts/script.php?script_id=2010 )
"
" "pyflakes"
" подсветка ошибок  на 'лету' в коде на python
" ( http://www.vim.org/scripts/script.php?script_id=2441 )
" requres-option: python+
"
" "calendar"
" удобный календарь
" ( http://www.vim.org/scripts/script.php?script_id=52 )
"
" "fuzzyfinder"
" быстрый доступ к многим возможностям
" ( http://www.vim.org/scripts/script.php?script_id=1984 )
" requres-plugin: vim-l9
"
" "vim-l9"
" набор общих функций
" ( http://www.vim.org/scripts/script.php?script_id=3252 )
"
" "neocomplcache"
" улучшенное авто-завершение,
" авто-открытие списка авто-завершения
" ( http://www.vim.org/scripts/script.php?script_id=2620 )
"   requres-tool: ctags
"
" "neocomplcache-snippets-complete"
" TextMate-like шаблоны кода
" requres-plugin: neocomplcache
" ( http://www.vim.org/scripts/script.php?script_id=4043 )
"
" "ropevim"
" утилита для рефакторинга кода на python
" так-же включающая функции Code assist
" ( http://rope.sourceforge.net/ropevim.html )
" requires-option: python+
"
" "vcscommand"
" интеграция с системами контроля версий
" ( http://www.vim.org/scripts/script.php?script_id=90 )
"
" "css_color"
" Предпросмотр цветов в css файлах
" ( http://www.vim.org/scripts/script.php?script_id=2150 )
"
" "Mark"
" Подсветка всех слов в файле, которые совпадают с словом под курсором
" ( http://www.vim.org/scripts/script.php?script_id=2666 )
"
" "visualmark"
" Визуальная подсветка отметок в файле
" ( http://www.vim.org/scripts/script.php?script_id=1026 )
"
" "prettyprint"
" Печать переменных vim в более презентативном виде
" ( http://www.vim.org/scripts/script.php?script_id=2860 )
"
" "easytags"
" Автоматическая генерация и поддержание в актуальном состоянии
" файла с тэгами ctags
" ( http://www.vim.org/scripts/script.php?script_id=3114 )
"   requres-tool: ctags
"
" "vimshell"
" Лучшая интеграция vim с системой (полноэкранный режим,
" открытие URL, фоновое выполнение системных команд)
" ( http://www.vim.org/scripts/script.php?script_id=3123 )
"
" "open-associated-programs"
" Открытие редактируемого файла ассоциированной с типом файла программой
" ( http://www.vim.org/scripts/script.php?script_id=3242 )
"
" "SingleCompile"
" Компиляция и запуск множества типов файлов
" ( http://www.vim.org/scripts/script.php?script_id=3115 )
"
" "delimitMate"
" Умное автозакрытие скобок
" ( http://www.vim.org/scripts/script.php?script_id=2754 )
"
" "VimCalc"
" Интерактивный калькулятор
" ( http://www.vim.org/scripts/script.php?script_id=3329 )
" requres-option: python+
"
" "Tagbar"
" Более структурированный браузер кода чем taglist
" ( http://www.vim.org/scripts/script.php?script_id=3465 )
" requres-tool: ctags
"
" "gundo"
" Просмотр дерева изменений файла
"( http://www.vim.org/scripts/script.php?script_id=3304 )
"
" "notes"
" Ведение заметок
" ( http://www.vim.org/scripts/script.php?script_id=3375 )
"
" "LiteTabPage"
" Более удобная навигация по вкладкам
" с помощью Alt+номер вкладки или <Alt-h> <Alt-l>
" ( http://www.vim.org/scripts/script.php?script_id=3286 )
"
" "jpythonfold"
" Лучшее решение для сворачивания блоков кода python
" ( http://www.vim.org/scripts/script.php?script_id=2527 )
"
" "vim-indent-guides"
" Визуально показывает отступы
" ( http://www.vim.org/scripts/script.php?script_id=3361 )
"
" "headlights"
" Единое меню для доступа к функционалу всех установленных бандлов
" ( http://www.vim.org/scripts/script.php?script_id=3455 )
"
" "jsflakes"
" подсветка ошибок в коде на js на 'лету'
" requres-plugin: jsruntime
" requres-plugin: jsoncodecs
" ( http://www.vim.org/scripts/script.php?script_id=4057 )
" "jsruntime"
" ( http://www.vim.org/scripts/script.php?script_id=4050 )
" "jsoncodecs"
" ( http://www.vim.org/scripts/script.php?script_id=4056 )
"
" "neocomplcache-clang"
" 'Умное' авто-завершение кода для С++/С совместимый с neocomplcache complete
" requres-tool: clang
" ( https://github.com/Shougo/neocomplcache-clang )
"
" "vim-template"
" Шаблоны для различных типов файлов файлов
" ( http://www.vim.org/scripts/script.php?script_id=2834 )
"
" "syntastic"
" Проверка синтаксических ошибок в коде для многих языков
" ( http://www.vim.org/scripts/script.php?script_id=2736 )
"
" "ctrlp"
" быстрый нечёткий поиск по файлам и буферам
" ( http://www.vim.org/scripts/script.php?script_id=3736 )
"
" "vim-fswitch"
" Быстрый переход от заголовочного файла к реализации и обратно
" (для С++/С)
" ( http://www.vim.org/scripts/script.php?script_id=2590 )
"
" ==============================================================================
" "Primary"                 Приоритетные настройки {{{1
" ==============================================================================

let s:iswin = has('win32') || has('win64')
let s:lastsession_file = expand($TEMP).'/lastsession.vim'

" Отключение совместимости с vi
set nocompatible

" Использовать англоязычное меню
set langmenu=en

let s:python_installed = 0
let s:python_3k = 0
" Определение установлен ли в системе python
if has('python')
python << EOF

try:
    import os, sys, vim
except ImportError:
    pass
else:
    vim.command('let s:python_installed = 1')
    if sys.version_info[:2] < (3, 0):
        vim.command('let s:python_3k = 1')

EOF
endif

" Настройка дополнительных путей импорта для python
if s:python_installed
python << EOF
def __setup_pythonpath():
    try:
        import os,sys,vim
    except ImportError:
        return

    dirs = [os.path.join(vim.eval('$VIM'), os.path.normpath('pythonfiles')),
            os.path.join(vim.eval('$VIMRUNTIME'), os.path.normpath('pythonfiles'))
            ]

    for target in dirs:
        if os.path.exists(target):
            sys.path.append(target)
__setup_pythonpath()
del __setup_pythonpath
EOF
endif

" ==============================================================================
" "Quick"                   Быстрые настройки {{{1
" ==============================================================================
" (0 - откл. 1 - вкл.)

" us - USer option
let s:us_folding              = 0 " Свертывание участков кода
let s:us_autosaveses          = 1 " Авто-сохранение сессий (загрузка посл. F9)
let s:us_linewrap             = 1 " Перенос длинных строк
let s:us_scratch_buffer       = 0 " Сделать из безымянного буфера scratch буфер
let s:us_show_indent_warnings = 1 " Показывать предупреждения о отступах
                                  " в статусной строке
let s:us_show_tspace_warnings = 0 " Показывать предупреждения о лишних пробелах
                                  " на концах строк
let s:us_use_dark_colorscheme = 1 " Использовать тёмную тему
let s:us_goto_last_pos        = 1 " Перемещать курсор на предыдущую позицию
                                  " при открытии файла

let s:us_portable             = 0 " Не использовать зависимостей
" ==============================================================================
" "Includes"                Подключение доп.файлов настроек {{{1
" ==============================================================================

source $VIMRUNTIME/mswin.vim            " Windows-like настройки
behave mswin

" ==============================================================================
" "General"                 Основные настройки {{{1
" ==============================================================================

" Включение подсветки синтаксиса
syntax on

" Включение определения типов файлов
filetype plugin indent on

" Отключение оповещения морганием и звуком
set novisualbell
set t_vb=

" Язык помощи
set helplang=en,ru

" Переход на предыдущую/следующую строку
set backspace=indent,eol,start

" Перемещать курсор на следующую строку при нажатии на клавиши вправо-влево и пр.
set whichwrap+=<,>,[,]

" Не выгружать буфер, при переключении на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без
" необходимости сохранения каждый раз когда переключаешься между ними
set hidden

set autoread            " Включение автоматического перечтения файла при изменении
set autochdir           " Автоматически устанавливать текущей, директорию отрытого файла
set browsedir=buffer    " Начинать обзор с каталога текущего буфера
set confirm             " Включение диалогов с запросами

" Опции авто-дополнения
set completeopt=longest,menuone

" Если данная опция включена, то это позволяет отображать как имя метки,
" так и отредактированную форму шаблона поиска (если такая имеется), в
" качестве возможных соответствий при завершении слова в режиме Вставки
" (см. |вставка-автодополнение|) из файла меток. Таким образом, если вы
" ищете соответствие для функции на языке C, то вы сможете видеть
" необходимые аргументы для этой функции (если это позволяет стиль
" написания исходного текста программы).
set showfulltag

" Показывать все возможные кандидаты при авто-завершении команд
"set nowildmenu
set wildmode=list:longest,full

" Игнорировать данные файлы при автозавершении имён
set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.pyo

" Включение проверки орфографии, для русского и английского
set spelllang=ru_yo,en_us
"set spell

" Раскладка по умолчанию - английская
set iminsert=0

" Не перерисовывать окно при работе макросов
set lazyredraw

" Испольвозать англоязычный интерфес
if s:iswin
    language message en
else " для linux
    language mes C
endif

" русская раскладка клавиатуры
"set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" ==============================================================================
" "Files"                   Настройки для файлов {{{1
" ==============================================================================

" Кодировка по умолчанию
set encoding=utf-8
set fileencoding=utf-8

set fileencodings=ucs-bom,utf-8,cp1251

set fileformat=unix          " Формат файла по умолчанию
set fileformats=unix,dos,mac " Порядок определения формата файла

" ==============================================================================
" "Backup,Undo,Swap"        Резервное копирование {{{1
" ==============================================================================

" История команд
set history=150

" Максимальное количество изменений, которые могут быть отменены
set undolevels=5000

" Настройки отмены изменений
if v:version >= 703
    set undodir=$TEMP
    set undofile
endif

" Не создавать резервные копии файлов
set nobackup
set nowb

" Отключить swap файлы
set noswapfile

" ==============================================================================
" "GUI"                     Вид {{{1
" ==============================================================================

set ruler       " Включение отображения позиции курсора (всё время)

set mouse=a     " Подключение мыши
set mousehide   " Прятать указатель во время набора текста

" отключено, потому что тормозит
"set cursorline  " Включить подсветку текущей позиции курсора
set mousemodel=popup


if has('gui_running')

    " Шрифт по умолчанию
    if s:iswin
        if s:us_use_dark_colorscheme
            set gfn=DejaVu_Sans_Mono:h10:cRUSSIAN,consolas:h11
        else
            set gfn=DejaVu_Sans_Mono:h10:b:cRUSSIAN,consolas:h11
        endif

    elseif has("gui_gtk2")
        set gfn=DejaVu\ Sans\ Mono\ 10
    endif

    " Цветовая схема по умолчанию
    if s:us_use_dark_colorscheme
        colorscheme twilight
    else
        colorscheme geon
    endif

elseif s:iswin
    colorscheme desert
else
    colorscheme wombat256
endif

if s:iswin
    " Установка высоты и ширины окна
    winsize 90 30
endif

set guioptions-=b   " Отключение скролл-баров
set guioptions-=r
set guioptions-=T   " Убрать toolbar
"set guioptions+=c   " Отключение графических диалогов
"set guioptions-=e   " Замена графических табов, текстовыми

set number          " Включение отображения номеров строк
set numberwidth=5
set shortmess+=I    " Отключение приветственного сообщения
set showtabline=2   " Показывать по умлочанию строку со вкладками
set wildmenu        " Показывать меню в командной строке
                    " для выбора вариантов авто-дополнения
set showmatch       " Довсвечивать совпадающую скобку
set list            " Подсвечивать некоторые символы

" Замена символа "-" на пробел, для свёрнутых блоков
set fillchars=fold:\ 

" Установка символов для подсветки
set listchars=tab:•·,trail:·,extends:»,precedes:«,nbsp:×
" ▹
" Подсветка всех слов под курсором
" autocmd CursorMoved * silent! exe printf('match IncSearch /\<%s\>/', expand('<cword>'))
" ==============================================================================
" "Statusline"              Статусная строка {{{1
" ==============================================================================

" Включение отображения незавершенных команд в статусной строке
set showcmd

" Всегда отображать статусную строку
set laststatus=2

function! s:InitStatusLine(show_indent_warnings, show_tspace_warnings)
    hi StatusLineBufferNumber guifg=fg guibg=bg
    " Формат статусной строки
    set stl=\ %#StatusLineBufferNumber#
    set stl+=[%n    " Номер буфера
    "set stl+=/%{GetBufferCount()}
    set stl+=]%*\ 
    set stl+=%<
    set stl+=%f      " Имя файла загруженного в буфер
    set stl+=%*\ 
    "set stl+=[%{&ft} " Тип файла, загруженного в буфер, например [cpp]
    set stl+=%{&ft==''?'[':'['.&ft.'\ \|\ '}
    set stl+=%{&fileencoding} " Кодировка файла
    set stl+=\ \|\ 
    set stl+=%{&ff}] " Формат файла
    set stl+=\ 
    set stl+=%#error#%m%*       " Флаг состояния несохранённых изменений
    set stl+=%#warningmsg#%r%*  " Флаг состояния 'только для чтения
    if a:show_indent_warnings
        " Показ нескольких типов предупреждений связанных с некорректной
        " работой с отступами:
        " "[mixed-indenting]" - В случае если в файле для задания отступов
        " совместно используются пробелы и символы табуляции
        " "[expandtab-disabled]" - Если опция expandtab отключена,
        " но в файле для задания отступов применяются пробелы
        " "[expandtab-enabled]" - Если опция expandtab активна, но для задания
        " отступов используются символы табуляции
        set stl+=%#error#
        set stl+=%{StatuslineTabWarning()}
        set stl+=%*
    endif
    if a:show_tspace_warnings
        " Показ предупреждений о пробелах в конце строк
        set stl+=\ 
        set stl+=%#error#
        set stl+=%{StatuslineTrailingSpaceWarning()}
        set stl+=%*
    endif
    set stl+=%=      " Выравнивание по правому краю
    set stl+=\ 
    set stl+=Line:
    set stl+=\ %l/   " Номер строки
    set stl+=%L      " Количество строк в буфере
    set stl+=\ 
    set stl+=Col:
    set stl+=\ %3v   " Номер колонки
    set stl+=\ 
    set stl+=[%P]    " Позиция текста, отображаемого в окне
                     " по отношению к началу файла в процентах
endfunction

call s:InitStatusLine(s:us_show_indent_warnings, s:us_show_tspace_warnings)

" ==============================================================================
" "Indent"                  Отступы и табуляция {{{1
" ==============================================================================

set autoindent                          " Наследовать отступы предыдущей строки
"set smartindent                         " Включить 'умные' отступы
set expandtab                           " Преобразование таба в пробелы
set shiftwidth=4                        " Размер табуляции по умолчанию
set softtabstop=4
set tabstop=4

" ==============================================================================
" "Search"                  Поиск текста {{{1
" ==============================================================================

set hlsearch        " Включение подсветки слов при поиске
set incsearch       " Использовать поиск по мере набора

" Использовать регистра-зависимый поиск (для
" регистра-независимого использовать \с в конце строки шаблона)
"set noignorecase

set ignorecase " игнорировать регистр при поиске
set smartcase  " искать сначала по заданному регистру а потом в любом

" В режиме поиска используется раскладка, заданная по умолчанию
set imsearch=-1

" ==============================================================================
" "Folding"                 Свертывание блоков текста {{{1
" ==============================================================================

if s:us_folding
    " Включение складок
    set foldenable

    " Ширина колонки
    "set foldcolumn=4

    " Опция задаёт значение опции 'foldlevel' в начале редактирования нового
    " буфера в окне. Её полезно использовать для закрытия всех складок в
    " файле в начале редактирования (при значении 0), закрытия некоторых
    " складок (при значении от 1) или открывания всех складок (при значении 99)
    set foldlevelstart=99

    " Опция задаёт метод образования складок для текущего окна.
    " Список возможных значений:
    "   manual  Складки создаются вручную.
    "   indent  Складка формируется строками с одинаковыми отступами.
    "   expr    Уровень складки для строки задаётся значением опции 'foldexpr'.
    "   marker  Складки задаются с использованием маркеров.
    "   syntax  Складки задаются в соответствии с правилами подсветки синтаксиса.
    "   diff    В складки помещаются неизменённые фрагменты текста
    set foldmethod=indent

    " Опция назначает максимальное количество вложений складок для методов
    " "indent" и "syntax". Опция позволяет избежать создания слишком
    " большого количества складок. Использование значения, большего, чем 20,
    " не работает, поскольку встроенное ограничение количества вложений в
    " складках соответствует 20
    set foldnestmax=3

else
    set nofoldenable
    set foldmethod=manual

endif

" ==============================================================================
" "Sessions"                Сессии {{{1
" ==============================================================================

" Опции сессий
set sessionoptions=curdir,buffers,folds,tabpages,winpos,help

" Опции помогают переносить файлы сессий с *nix`ов в ms-windows и наоборот
set sessionoptions+=unix,slash

if s:us_autosaveses
    " Авто-сохранение сессии при закрытии vim`a (загрузка F9 в норм. режиме)
    exec 'autocmd VimLeavePre * silent mksession!' . s:lastsession_file
endif

" ==============================================================================
" "LineWrap"                Перенос длинных строк {{{1
" ==============================================================================

if s:us_linewrap

    set wrap

    " Задать ширину строки
    set textwidth=0

    " Перенос по словам
    set linebreak

    if v:version >= 703
        " Подсвечивать границы
        set colorcolumn=80
    endif
else
    " Запретить перенос строк
    set nowrap
endif

" ==============================================================================
" "Mappings"                Горячие клавиши {{{1
" ==============================================================================

" Найти следующее соответствие, все остальные так же подсвечиваются
nmap <F3> :set hlsearch<CR>n
vmap <F3> <esc> :set hlsearch<CR>n i
imap <F3> <esc> :set hlsearch<CR>n i

" Отключение подсведки найденных выражений
nmap <C-F3> :nohlsearch<CR>
imap <C-F3> <Esc>:nohlsearch<CR>
vmap <C-F3> <Esc>:nohlsearchi<CR>gv

"" Выполнение/Открытие файла
"nmap <F5> <esc>:call <SID>OpenFileInDefaultApp()<cr>
"vmap <F5> <esc>:call <SID>OpenFileInDefaultApp()<cr>i
"imap <F5> <esc><esc>:call <SID>OpenFileInDefaultApp()<cr>i

" Загрузка последней сессии (работает если в
" секции "Сессии" определена команда авто-сохранения)
if s:us_autosaveses
    exec 'nmap <F9> :source ' . s:lastsession_file . '<cr>'
    exec 'imap <F9> <esc>:source ' . s:lastsession_file . '<cr>i'
endif

" Закрыть окно
map <F11> :close<cr>
vmap <F11> <esc>:close<cr>i
imap <F11> <esc>:close<cr>i

" Удалить буфер
map <F12> :bdelete<cr>
vmap <F12> <esc>:bdelete<cr>
imap <F12> <esc>:bdelete<cr>


" Создать базу данных для файлов в текущей директории
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Добавление(Ctrl+Tab)/удаление(Ctrl+Shift+Tab) отступов
" работает только если выделить текст
map  ]v          [[V]]
"map  <C-S-tab>   [[V]]<
vmap <C-S-tab>   <
"map  <C-tab>     [[V]]>
vmap <C-tab>     >

" Комбинации оставленные по умолчанию:
"
"vis \cc    комментирование выделенного участка кода (plugin-NERD_commenter)
"vis \cu    разкомментирование выделенного участка кода (plugin-NERD_commenter)

" ==============================================================================
" "Menu"                    Меню {{{1
" ==============================================================================

" Работа с макросами
menu Tools.Macro.Record<tab>qm qm
imenu Tools.Macro.Record<tab>qm <esc>qm

menu Tools.Macro.Stop<tab>q q
imenu Tools.Macro.Stop<tab>q <esc>q

menu Tools.Macro.Run\ Last<tab>@m @m
imenu Tools.Macro.Run\ Last<tab>@m <esc>@m

" Удалить лишние пробельные символы
menu <silent> 45.10  Source.Clean\ Extra\ Spaces :call <SID>TrimWhiteSpace()<CR>
imenu <silent> 45.10  Source.Clean\ Extra\ Spaces <esc>:call <SID>TrimWhiteSpace()<CR>

" Форматирование исходного кода
menu 45.20 Source.Format\ Code<tab>gg=G gg=G
imenu 45.20 Source.Format\ Code<tab>gg=G <esc>gg=G

" Приведение отступов к единому стилю
menu 45.30 Source.Retab<tab>:retab :retab<CR>
imenu 45.30 Source.Retab<tab>:retab <esc>:retab<CR>

" Открытие файла программой связанной с файлом
menu <silent> Run.Run<tab> :call <SID>OpenFileInDefaultApp()<cr>
imenu <silent> Run.Run<tab> <esc>:call <SID>OpenFileInDefaultApp()<cr>i

" Получение командной строки
menu <silent> Run.Command\ Line\ Parameters\ \.\.\. :call <SID>GetCmdline()<cr>
imenu <silent> Run.Command\ Line\ Parameters\ \.\.\. <ESC>:call <SID>GetCmdline()<cr>i

" Загрузка последней сессии
" (работает если в секции "Сессии" определена команда авто-сохранения)
if s:us_autosaveses
    exec 'menu File.Load\ Last\ Session<tab><F6> :source '.s:lastsession_file.'<cr>'
    exec 'imenu File.Load\ Last\ Session<tab><F6> <esc>:source '.s:lastsession_file.'<cr>'
endif

" ==============================================================================
" "Popup-menu"              Всплывающее меню {{{1
" ==============================================================================

amenu PopUp.-Usrsep1- :

nmenu PopUp.Source.Context\ Help<tab><S-k> <S-k>
imenu PopUp.Source.Context\ Help<tab><S-k> <esc><S-k>

" Поиск слова под курсором
nmenu PopUp.Source.Find\ Word\ Under\ Cursor<tab>g* g*
imenu PopUp.Source.Find\ Word\ Under\ Cursor<tab>g* <esc>g*

" Открыть файл, в качестве имени используется слово под курсором
nmenu PopUp.Source.Open\ File\ Under\ Cursor<tab>gf gf
imenu PopUp.Source.Open\ File\ Under\ Cursor<tab>gf <esc>gf

" Перейти к тэгу
nmenu PopUp.Source.Jump\ Tag\ Under\ Cursor<tab><C-]> g<C-]>
imenu PopUp.Source.Jump\ Tag\ Under\ Cursor<tab><C-]> <esc>g<C-]>

" Экранирование спецсимволов в html
vmenu <silent> PopUp.Source.Encode\ HTML :call HtmlizeLine()<cr>

vmenu PopUp.Source.-Usrsep3- :

" Добавление/удаление отступов к участкам кода
vmenu <silent> PopUp.Source.Indent\ Block<tab><C-Tab> <C-tab>
vmenu <silent>  PopUp.Source.Dedent\ Block<tab><C-S-Tab> <C-S-tab>

vmenu PopUp.Source.-Usrsep5- :

" Изменение регистра символов
vmenu PopUp.Source.Upper\ Case<tab>U U
vmenu PopUp.Source.Lower\ Case<tab>u u
vmenu PopUp.Source.Swap\ Case<tab>~ ~

" ==============================================================================
" "Bundles"                 Пакеты плагинов {{{1
" ==============================================================================

filetype off

set runtimepath+=$VIM/bundle/vundle/
call vundle#rc()

Bundle "vundle"
Bundle "getscript"
Bundle "netrw"
Bundle "matrix"
Bundle "fencview"
Bundle "nerdcommenter"
Bundle "nerdtree"
Bundle "matchit"
Bundle "mru"
Bundle "sessionman"
Bundle "calendar"
Bundle "neocomplcache"
Bundle "neocomplcache-snippets-complete"
Bundle "vcscommand"
Bundle "mark"
Bundle "visualmark"
Bundle "vim-prettyprint"
"Bundle "easytags"
Bundle "shell"
Bundle "open-associated-programs"
Bundle "delimitMate"
Bundle "vim-indent-guides"
"Bundle "headlights"
Bundle "jsflakes"
Bundle "jsruntime"
Bundle "jsoncodecs"

" Плагины требующие наличие установленного python
if s:python_installed
    Bundle "SingleCompile"
    Bundle "vimcalc"
    Bundle "pyinteractive-vim"
    Bundle "pyflakes-vim"
    Bundle "ropevim"
    Bundle "gundo"
    Bundle "notes"
    Bundle "gtranslate"

    if s:us_portable != 1
        Bundle "neocomplcache-clang"
    endif
endif

Bundle "tagbar"
Bundle "pythonsyntax"
Bundle "LiteTabPage"
Bundle "jpythonfold"
Bundle "themes"
Bundle "vim-template"
Bundle "syntastic"
Bundle "ctrlp"
Bundle "vim-fswitch"

" Тестируемые"
Bundle "vim-css-color"

filetype plugin indent on


" ==============================================================================
" "Plugin.tohtml" {{{1
" ==============================================================================

let g:html_use_css = 1      " Использовать CSS
let g:html_number_lines = 0 " При генерации не добавлять номера строк
let g:use_xhtml = 1         " Использовать XHTML

" ==============================================================================
" "Functions"               Пользовательские функции {{{1
" ==============================================================================

let s:cmdline = ""

" Открытие файла приложением определённым по умолчанию
function! s:OpenFileInDefaultApp()
    if s:cmdline == ""
        execute '!"%"'
        "execute 'call system(shellescape(expand("<cfile>") ' . s:cmdline . '))'
    else
        execute '!"% ' . s:cmdline . '"'
    endif
endfunction

" Получение от пользователя командной строки с которой будет запускаться
" скрипт
function! <SID>GetCmdline()
    let s:cmdline=inputdialog("Enter command line parameters:", s:cmdline, s:cmdline)
endfunction

function! GetBufferCount()
    return len(filter(range(1,bufnr('$')), 'buflisted(v:val)'))
endfunction

function! ToggleFTContextMenu(languages, modifiers, menuitem, action)
    for lang_ in a:languages
        if &filetype != lang_
            execute 'silent! aunmenu ' . a:menuitem
            continue
        endif
        for modifier in a:modifiers
            let esc = ''
            if modifier == 'i'
                let esc = '<esc>'
            endif
            let command =  modifier . 'menu <silent> ' . a:menuitem . ' ' . esc .':call ' . a:action . '<cr>'
            execute command
        endfor
        return
    endfor
endfunction

" Удаление лишних пробелов в файле
function! s:TrimWhiteSpace()
    normal ma
    :retab
    :%s/\s\+$//eg
    normal 'a
endfunction

" Функция возвращает выделенный текст
function! s:GetSelection()
    " "unused"
    let l:line = getline("'<")
    let l:line = strpart(l:line, col("'<") - 1, col("'>") - col("'<") + 1)
    return l:line
endfunction

" Функция экранирует Html символы, такие как <>
function!  HtmlizeLine()
    let [currentln, col, soff]=getpos(".")[1:]
    let line = getline(currentln)

    let line = substitute(line, '&', '\&amp;', 'g')
    let line = substitute(line, '<', '\&lt;', 'g')
    let line = substitute(line, '>', '\&gt;', 'g')
    let line = substitute(line, '"', '\&quot;', 'g')

    call setline(currentln, line)
endfunction

"function! HtmlizeSelection()

"    let [sline, scol, soff]=getpos("'<")[1:]
"    let [eline, ecol, eoff]=getpos("'>")[1:]
"    if sline>eline || (sline==eline && scol>ecol)
"       let [sline, scol, eline, ecol]=[eline, ecol, sline, scol]
"    endif
"    let currline = sline

"    "call confirm( "top: " . sline . " bottom: " . eline )

"    while currline <= eline
"       let line = getline(currline)
"       "let line = substitute(line, '&', '\&amp;', 'g')
"       let line = substitute(line, '<', '\&lt;', 'g')
"       let line = substitute(line, '>', '\&gt;', 'g')
"       let line = substitute(line, '"', '\&quot;', 'g')

"       call setline(currline, line)
"       let currline = currline + 1
"    endwhile
"    return
"endfunction


"recalculate the tab warning flag when idle and after writing
autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning

" Функция возвращает "[mixed-indenting]" если для отступов в
" файле совместно используются пробелы и символы табуляции.
" Если же выставлена опция "expandtab" и в файле присутствуют
" символы табуляции то возвращаемое значение будет "[expandtab-enabled]".
" Так же в противоположном случае: если опция "expandtab" не задана
" но в файле для отступов используются пробелы возвращаемым
" значением будет "[expandtab-disabled]". В остальных случаях
" результатом функции будет пустая строка
function! StatuslineTabWarning()
    if !exists("b:statusline_tab_warning")
        let b:statusline_tab_warning = ''

        if !&modifiable
            return b:statusline_tab_warning
        endif

        let tabs = search('^\t', 'nw') != 0

        "find spaces that arent used as alignment in the first indent column
        let spaces = search('^ \{' . &ts . ',}[^\t]', 'nw') != 0

        if tabs && spaces
            let b:statusline_tab_warning = '[mixed-indenting]'
        elseif (spaces && !&expandtab)
            let b:statusline_tab_warning = '[expandtab-disabled]'
        elseif (tabs && &expandtab)
            let b:statusline_tab_warning = '[expandtab-enabled]'
        else
            let b:statusline_tab_warning = ''
        endif
    endif
    return b:statusline_tab_warning
endfunction

"recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

" Функция возвращает '[\s]' если в буфере присутствуют строки с
" лишними пробелами в конце. Иначе возвращаемое значение будет ''
function! StatuslineTrailingSpaceWarning()
    if !exists("b:statusline_trailing_space_warning")

        if !&modifiable
            let b:statusline_trailing_space_warning = ''
            return b:statusline_trailing_space_warning
        endif

        if search('\s\+$', 'nw') != 0
            let b:statusline_trailing_space_warning = '[\s]'
        else
            let b:statusline_trailing_space_warning = ''
        endif
    endif
    return b:statusline_trailing_space_warning
endfunction

" Перемещать курсор на предыдущую позицию при открытии файла
if s:us_goto_last_pos
    autocmd BufReadPost * call SetCursorPosition()
endif

function! SetCursorPosition()
    if &filetype !~ 'svn\|commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    end
endfunction

" Сделать из безымянного буфера scratch буфер
if s:us_scratch_buffer
    augroup vimrc-scratch-buffer
        autocmd!
        autocmd BufEnter * call s:scratch_buffer()
        autocmd FileType qfreplace autocmd! vimrc-scratch * <buffer>

        function! s:scratch_buffer()
            if exists('b:scratch_buffer') || bufname('%') != '' || &l:buftype != ''
                return
            endif
            let b:scratch_buffer = 1
            setlocal buftype=nofile nobuflisted noswapfile bufhidden=hide

            augroup vimrc-scratch
                autocmd! * <buffer>
                autocmd BufWriteCmd <buffer> call s:scratch_on_BufWriteCmd()
            augroup END
        endfunction

        function! s:scratch_on_BufWriteCmd()
            silent! setl buftype< buflisted< swapfile< bufhidden< nomodified
            autocmd! vimrc-scratch * <buffer>
            unlet! b:scratch_buffer
            execute 'saveas' . (v:cmdbang ? '!' : '') ' <afile>'
            filetype detect
        endfunction
    augroup END
endif

" ==============================================================================
" "Fix"                     Способы устранения непоняток с настройками {{{1
"
" Узнать из какого файла переменная была установлена посл. раз
"   :verbose set переменная
"
" Список всех переменных
"   :let
"
" Список всех пользовательских функций
"   :function
"
" Список всех привязок
"   :map
"
" Показывает значения всех опций, которые отличаются от настроек по умолчанию.
"   :set
"
" Записать все сообщения в файл
"   :set verbosefile=<FILE>
" ==============================================================================
"}}} {{{1
" vim: foldenable fdm=marker fdc=2 foldlevelstart=0 sts=4 sw=4 tw=64 fileencoding=utf-8
" }}}
