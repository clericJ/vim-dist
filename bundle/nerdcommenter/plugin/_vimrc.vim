" ==============================================================================
" Plugin.NERDCOmmenter
" ==============================================================================
" Комментирование/раз комментирование участков текста
" (plugin-NERDCommenter)

vmenu PopUp.Source.-Usrsep1- :
nmenu PopUp.Source.-Usrsep1- :

nmenu PopUp.Source.Comment :call NERDComment(0,  "alignLeft")<CR>
vmenu PopUp.Source.Comment <ESC>:call NERDComment(1, "alignLeft")<CR>

nmenu PopUp.Source.Uncomment :call NERDComment(0, "uncomment")<CR>
vmenu PopUp.Source.Uncomment <ESC>:call NERDComment(1,  "uncomment")<CR>

nmenu PopUp.Source.Toggle :call NERDComment(0, "toggle")<CR>
vmenu PopUp.Source.Toggle <ESC>:call NERDComment(1,  "toggle")<CR>

" ==============================================================================
