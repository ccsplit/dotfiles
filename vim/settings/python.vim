let g:black_virtualenv = '/usr/local/bin/'
autocmd BufWritePre *.py execute ':Black'
