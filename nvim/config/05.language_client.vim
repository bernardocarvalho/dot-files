" language_client.vim contains vim settings specific to the language
" client plugin

" language server commands
let g:LanguageClient_serverCommands = {
            \ 'cpp': ['ccls', '--log-file=/tmp/cc.log'],
            \ 'c': ['ccls', '--log-file=/tmp/cc.log'],
            \ 'python': ['$HOME/.pyenv/shims/pyls'],
            \ 'verilog_systemverilog': ['/usr/local/bin/iverilog'],
            \ }
            "\ 'rust': ['ra_lsp_server'],
            "\ 'haskell': ['hie-wrapper']
" For ccls in Linux See https://github.com/MaskRay/ccls

let g:LanguageClient_autoStart = 1
let g:LanguageClient_rootMarkers = {
            \ 'cpp': ['compile_commands.json', 'build'],
            \ 'c': ['compile_commands.json', 'build'],
            \ }

"\ 'haskell': ['*.cabal', 'stack.yaml'],
            "\ 'rust': ['Cargo.toml'],

set completefunc=LanguageClient#complete

let g:LanguageClient_loadSettings = 1
let g:LanguageClient_settingsPath = '$HOME/.config/nvim/settings.json'
