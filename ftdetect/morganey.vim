autocmd BufNewFile,BufRead *.mgn set filetype=morganey

augroup json_autocmd
  autocmd!
  autocmd FileType json setlocal autoindent
  autocmd FileType json setlocal formatoptions=tcq2l
  autocmd FileType json setlocal foldmethod=syntax
augroup END
