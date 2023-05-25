"musthave
syntax on
set background=dark

"dev
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

"nocompatible but gret options
set nocp

"syn match Space " "
"syn match Tab "\t"
"syn match coin "c"
"hi def Space ctermbg=darkred guibg=#500000
"hi def Tab ctermbg=darkgreen guibg=#003000
"hi def coin ctermbg=blue guibg=#777777

"set list lcs=nbsp:·,eol:$
"set list
"set lcs=nbsp:%

" afficher un caractere (ASCII 183)
" pour les espaces insecables en utf-8
if &encoding == "utf-8"
"set list lcs=nbsp:·,eol:$
set list lcs=nbsp:·
endif

"set mouse=a

"enable modelines
set modeline
set modelines=30

"correcteur
set spelllang=fr,en
au FileType mail setlocal spell

" Let's save undo info!
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir
set undofile
