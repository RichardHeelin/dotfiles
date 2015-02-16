" Enable line numbers
set number

" Show current line and column number
set ruler

" Use 4 spaces as tab character and auto indent where possible
set smartindent tabstop=4 shiftwidth=4 expandtab

" Disable auto indent by pressing <F8>
nnoremap <F8> :setl noai nocin nosi inde=<CR>

" Save file as root with shortcut w!!
cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>
