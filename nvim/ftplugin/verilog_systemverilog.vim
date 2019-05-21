" ALE settings

" ALE linters
"  let b:ale_linters = ['ccls','clang', 'clang-format', 'gcc']
let b:ale_linters = ['iverilog']

" ALE fixers
let b:ale_fixers = ['remove_trailing_lines', 'trim_whitespace']

" disables deoplete completion
let b:deoplete_disable_auto_complete=1

set autoindent
