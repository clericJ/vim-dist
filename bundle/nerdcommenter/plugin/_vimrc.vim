" ==============================================================================
" Plugin.NERDCOmmenter
" ==============================================================================
" Комментирование/раз комментирование участков текста
" (plugin-NERDCommenter)

vmenu PopUp.Source\ Code.-Usrsep1- :

nmenu PopUp.Source\ Code.Comment :call NERDComment(0,  "alignLeft")<CR>
vmenu PopUp.Source\ Code.Comment <ESC>:call NERDComment(1, "alignLeft")<CR>

nmenu PopUp.Source\ Code.Uncomment :call NERDComment(0, "uncomment")<CR>
vmenu PopUp.Source\ Code.Uncomment <ESC>:call NERDComment(1,  "uncomment")<CR>

nmenu PopUp.Source\ Code.Toggle :call NERDComment(0, "toggle")<CR>
vmenu PopUp.Source\ Code.Toggle <ESC>:call NERDComment(1,  "toggle")<CR>

" ==============================================================================
