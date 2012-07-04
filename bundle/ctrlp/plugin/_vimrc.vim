

" Просмотр списка буферов (plugin-CtrlP)
map <F6> :CtrlPBuffer<cr>
imap <F6> <esc>:CtrlPBuffer<cr>

" Список файлов в текущей директории (plugin-CtrlP)
nmap <F7> :CtrlP<cr>
imap <F7> <esc>:CtrlP<cr>

menu <silent> Plugin.Finder.Buffers<tab><F6> :CtrlPBuffer<cr>
imenu <silent> Plugin.Finder.Buffers<tab><F6> <esc>:CtrlPBuffer<cr>

menu <silent> Plugin.Finder.Files<tab><F7> :CtrlP<cr>
imenu <silent> Plugin.Finder.Files<tab><F7> <esc>:CtrlP<cr>

menu <silent> Plugin.Finder.Recently :CtrlPMRU<cr>
imenu <silent> Plugin.Finder.Recently <esc>:CtrlPMRU<cr>
 
