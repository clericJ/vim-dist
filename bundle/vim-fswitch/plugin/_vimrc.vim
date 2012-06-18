
augroup user-contextmenu
    au MenuPopup * call ToggleFTContextMenu(["cpp", "c"],["i","n"], "PopUp.-Usrsep5-", ":")
    au MenuPopup * call ToggleFTContextMenu(["cpp", "c"],["i","n"], "PopUp.Swtich\\ Header/Source", "FSwitch('%', '')")
augroup END

augroup fswitch-autocommands
    au!
    au BufEnter *.cpp let b:fswitchdst  = 'h,hpp'
    au BufEnter *.cpp let b:fswitchlocs = './include/,../include,./inc'

    au BufEnter *.h let b:fswitchdst  = 'c,cpp'
    au BufEnter *.h let b:fswitchlocs = '../src,../,./'
augroup END
