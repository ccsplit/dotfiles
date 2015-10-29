let g:email = "cshay237@gmail.com"
let g:templates_no_autocmd = 1
let g:templates_debug = 0
nnoremap <c-t> :exe 'Template *.'.expand("%:e")<CR>
