" Use clang dll.
let g:neocomplcache_clang_use_library = 1
" More user include path.
let g:neocomplcache_clang_user_options =
\ '-ID:/bin/minGW/include ' .
\ '-ID:/bin/minGW/lib ' .
\ '-ID:/bin/minGW/lib/gcc/mingw32/4.7.0/include/c++ ' .
\ '-ID:/bin/minGW/lib/gcc/mingw32/4.7.0/include/c++/mingw32 '
" More neocomplcache candidates.
let g:neocomplcache_max_list = 300

let g:neocomplcache_clang_library_path='D:/bin/LLVM/lib'
