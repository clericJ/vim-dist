
autocmd User plugin-template-loaded call s:template_keywords()

function! s:template_keywords()
    if search('<+FILE_NAME+>')
        silent %s/<+FILE_NAME+>/\=toupper(expand('%:t:r'))/g
    endif
    if search('<+CURSOR+>')
        execute 'normal! "_da>'
    endif
    "silent %s/<+DATE+>/\=strftime('%Y-%m-%d')/g
endfunction
