" ==============================================================================
" Plugin.visualmark
" ==============================================================================
" Поставить/убрать отметку перейти к следующей/предыдущей
" отметке (plugin-visualmark)
nmap mm <Plug>Vm_toggle_sign
nmap mn <Plug>Vm_goto_next_sign
nmap mp <Plug>Vm_goto_prev_sign

" ==============================================================================
nmenu PopUp.Mark.-Usrsep1- :

" Работа с метками (plugin-visualmark)
nmenu PopUp.Mark.Set\ Mark<tab>mm <esc>mm

" Перемещение по меткам (plugin-visualmark)
nmenu PopUp.Mark.Next\ Mark<tab>mn <esc>mn
nmenu PopUp.Mark.Prev\ Mark<tab>mp <esc>mp

" ==============================================================================
