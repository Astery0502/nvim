" mapping specially for mk filesi inoremap <buffer> 
autocmd FileType markdown inoremap <buffer> <leader><Space> <Esc>/<++><CR>:nohls<CR>c4l
autocmd FileType markdown inoremap <buffer> <leader>p #<Space><Enter><++><Esc>kA
autocmd FileType markdown inoremap <buffer> <leader>c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd FileType markdown inoremap <buffer> <leader>b  **<++>**<Esc>3F*i
autocmd FileType markdown inoremap <buffer> <leader>l ---<Enter><Enter> 
autocmd FileType markdown inoremap <buffer> <leader>h <a name='<++>'></a><Esc>2F'i
autocmd FileType markdown inoremap <buffer> <leader>k <kbd><++></kbd><Space><++><Esc>2Fdi


