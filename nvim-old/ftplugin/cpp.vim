set tags=tags;

" ALE settings

" ALE linters
let b:ale_linters = ['ccls','clang']

" ALE fixers
let b:ale_fixers = ['clang-format', 'uncrustify',
            \ 'remove_trailing_lines', 'trim_whitespace']

" allow deoplete completion
let b:deoplete_disable_auto_complete=0
