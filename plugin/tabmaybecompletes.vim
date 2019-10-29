" tabmaybecompletes.vim - Turn <Tab> into <C-P> if the preceding character is
"                         a keyword character
" Maintainer:   Matthias Kretz <m.kretz@gsi.de>
" Version:      1.0

function! s:TabMaybeCompletes()
  if getline('.')[col('.') - 2] =~ '\k'
    return "\<C-P>"
  else
    return "\<Tab>"
  endif
endfunction

function! s:TabMaybeCompletesForward()
  if getline('.')[col('.') - 2] =~ '\k'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction

inoremap <Tab> <C-R>=<SID>TabMaybeCompletes()<CR>
inoremap <S-Tab> <C-R>=<SID>TabMaybeCompletesForward()<CR>
