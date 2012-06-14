" ==============================================================================
" "Plugin.GetLastestVimScripts" {{{1
" ==============================================================================

" Отключение авто-инсталляции скачанных скриптов
let g:GetLatestVimScripts_allowautoinstall= 0


menu .998 Plugin.-usrsep99- :

" Обновление плагинов (plugin-getscript)
nmenu .999 Plugin.Check\ Updates :GetLatestVimScripts<cr>
imenu .999 Plugin.Check\ Updates <esc>:GetLatestVimScripts<cr>
