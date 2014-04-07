:syntax enable
:colorscheme slate
:set guifont=Source\ Code\ Pro\ Light\ 10
:set colorcolumn=80

:au BufNewFile,BufRead,BufEnter *.py set softtabstop=4 shiftwidth=4 expandtab
:au BufNewFile,BufRead,BufEnter *.[ch] set softtabstop=2 shiftwidth=2 expandtab

:au BufNewFile,BufRead,BufEnter *.md,*.tex,*.txt setlocal spell spelllang=en_gb

:set hlsearch

:set ai
:set nu
