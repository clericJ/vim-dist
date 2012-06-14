

" Просмотр списка буферов (plugin-CtrlP)
map <F6> :CtrlPBuffer<cr>
imap <F6> <esc>:CtrlPBuffer<cr>

" Список файлов в текущей директории (plugin-CtrlP)
nmap <F7> :CtrlP<cr>
imap <F7> <esc>:CtrlP<cr>

menu <silent> Plugin.Finder.Buffers<tab><F6> <ESC>:CtrlPBuffer<cr>
imenu <silent> Plugin.Finder.Buffers<tab><F6> <ESC>:CtrlPBuffer<cr>

menu <silent> Plugin.Finder.Files<tab><F7> <ESC>:CtrlP<cr>
imenu <silent> Plugin.Finder.Files<tab><F7> <ESC>:CtrlP<cr>

menu <silent> Plugin.Finder.Recently<ESC> :CtrlPMRU<cr>
imenu <silent> Plugin.Finder.Recently<ESC> :CtrlPMRU<cr>
 
