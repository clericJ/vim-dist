

" Просмотр списка буферов (plugin-CtrlP)
map <F6> :CtrlPBuffer<cr>
imap <F6> <esc>:CtrlPBuffer<cr>

menu <silent> Plugin.Finder.Buffers<tab><F6> :CtrlPBuffer<cr>
imenu <silent> Plugin.Finder.Buffers<tab><F6> <esc>:CtrlPBuffer<cr>

menu <silent> Plugin.Finder.Files<tab><C-p> :CtrlPl<cr>
imenu <silent> Plugin.Finder.Files<tab><C-p> <esc>:CtrlPl<cr>

menu <silent> Plugin.Finder.Tags :CtrlPBufTagAll<cr>
imenu <silent> Plugin.Finder.Tags <esc>:CtrlPBufTagAll<cr>

menu <silent> Plugin.Finder.Recently :CtrlPMRU<cr>
imenu <silent> Plugin.Finder.Recently <esc>:CtrlPMRU<cr>

" Включение расширений
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
