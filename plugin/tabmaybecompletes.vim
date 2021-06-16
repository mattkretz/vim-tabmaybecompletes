" tabmaybecompletes.vim - Turn <Tab> into <C-P> if the preceding character is
"                         a keyword character
" Maintainer:   Matthias Kretz <m.kretz@gsi.de>
" Version:      1.1

function! s:TabMaybeCompletes(complete_key)
  if getline('.')[col('.') - 2] =~ '\k'
    if a:complete_key == 'P'
      return "\<C-P>"
    else
      return "\<C-N>"
    endif
  else
    return "\<Tab>"
  endif
endfunction

inoremap <Tab> <C-R>=<SID>TabMaybeCompletes('P')<CR>
inoremap <S-Tab> <C-R>=<SID>TabMaybeCompletes('N')<CR>
