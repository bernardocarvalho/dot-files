" File: init.vim
" Link: https://github.com/vonbrownie/dotfiles
" https://github.com/mhartington/dotfiles/blob/master/config/nvim/init.vim
"
if &compatible
  set nocompatible
endif               " Disable compatibility to old-time vi

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein')
    " dark powered neo-completion
    call dein#add('Shougo/deoplete.nvim')
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif
    
    call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
    call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

    call dein#add('tpope/vim-unimpaired')
    call dein#add('tpope/vim-fugitive', {'on_cmd' : 'Gstatus'})
    call dein#add('easymotion/vim-easymotion')
    call dein#add('tpope/vim-surround')
    
    call dein#add('Yggdroot/indentLine')
    call dein#add('junegunn/vim-easy-align')
    " displays tags in a window, nmap <F8> :TagbarToggle<CR>
    call dein#add('majutsushi/tagbar')  
    call dein#add('ludovicchabant/vim-gutentags')  " manages  tag files 
    call dein#add('elzr/vim-json')
    call dein#add('scrooloose/nerdtree')
    call dein#add('tomtom/tcomment_vim')
    call dein#add('vim-airline/vim-airline') " lean & mean status/tabline

"   Alternatives to ALE
"    call dein#add('neomake/neomake')
"    call dein#add('coddingtonbear/neomake-platformio')
"    call dein#add('vim-syntastic/syntastic')
    call dein#add('w0rp/ale')
    call dein#add('tpope/vim-dispatch')
    call dein#add('radenling/vim-dispatch-neovim')
    
    call dein#add('sbdchd/neoformat')  "  plugin for formatting code

    " Grepper asynchronously plugin  by Marco Hinz.
    call dein#add('mhinz/vim-grepper')

"    call dein#add('lifepillar/vim-solarized8') 
    call dein#add('iCyMind/NeoSolarized')
    call dein#add('autozimu/LanguageClient-neovim', {
        \ 'rev': 'next',
        \ 'build': 'bash install.sh',
        \ })
 
    call dein#end()
    call dein#save_state()
endif

" == General Configuration ==
syntax enable       " Turn on syntax highlighting

" System mappings  ----------------------------------------------------------
"{{{
" leader is ,
let mapleader = ','
" Fuzzy Find in normal mode
nnoremap <C-p> :<C-u>FZF<CR>

" No need for ex mode
nnoremap Q <nop>
vnoremap // y/<C-R>"<CR>
" recording macros is not my thing
map q <Nop>
" portuguese keyboard remap
" :set langmap=º[,`]

" noremap  <silent> <Home> g<Home>
" noremap  <silent> <End>  g<End>
" inoremap <silent> <Home> <C-o>g<Home>
" inoremap <silent> <End> <C-o>g<End>

set showmatch               " Show matching brackets.
" ================ Searching ========================
" Ignorecase when searching
set ignorecase              " Do case insensitive matching
" incremental search - Vim starts searching when we start typing
set incsearch
" When searching try to be smart about cases
set smartcase

set mouse=a                 " Enable mouse usage (all modes)
" set mouse=v               " middle-click paste with mouse
set hlsearch                " highlight search results
set cursorline              " Highlight the current line
" ================ Indentation ======================
set autoindent              " indent a new line the same amount as the line just typed
set smartindent
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
" ================= Folding  ===============
set foldmethod=syntax   "  indent, marker 
autocmd BufRead * normal zR " keep the folds open as you open new files, zM - close all folds

set number                  " Show line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style

filetype indent on    " Use filetype indentation
filetype plugin indent on " Allow plugins to use filetype indentation

let g:python3_host_prog = '/usr/local/bin/python3.7'
let g:python_host_prog = '/usr/bin/python2'

"}}}"

" NERDTree ------------------------------------------------------------------
"{{{
map <C-n> :NERDTreeToggle<CR>
" shift+i (show hidden files)
" quit nerd tree on file open
let g:NERDTreeQuitOnOpen = 1

"}}}

" let g:neomake_open_list = 2

let g:deoplete#enable_at_startup = 1

" lifepillar/vim-solarized8
set background=dark
" colorscheme solarized8

" Linting {{{
let g:ale_linters = {
    \ 'python': ['pylint'],
    \ 'javascript': ['eslint'],
    \ 'cpp': ['clang']
 \ }
let g:ale_fixers = {
    \   'c': ['clang-format', 'uncrustify'],
    \   'cpp': ['clang-format', 'uncrustify']
 \}

" autocompletion
let g:ale_completion_enabled = 1
let g:ale_c_parse_makefile  = 1  "ALE will run `make -n` to automatically determine flags to  set for C or C++ compilers 

let g:ale_lint_on_text_changed = 'always' " default
let g:ale_lint_on_save = 1          " default
let g:ale_lint_on_enter = 1         " default
let g:ale_lint_on_filetype_changed = 1 " default:w
let g:ale_sign_column_always = 1


"  ############## Neoformat ########## 
" Not realy working...
"let g:neoformat_python_autopep8 = {
"            \ 'exe': ['autopep8'],
"            \ 'args': ['-s 4', '-E'],
"            \ 'replace': ['1'] " replace the file, instead of updating buffer (default: 0),
"            \ 'stdin': [1], " send data to stdin of formatter (default: 0)
"            \ 'env': ["DEBUG=1"], " prepend environment variables to formatter command
"            \ 'valid_exit_codes': [0, 23],
"            \ 'no_append': ['1'],
"            \ }
let g:neoformat_python_autopep8 = {
            \ 'exe': 'autopep8'
            \ }

let g:neoformat_enabled_python = ['autopep8']
let g:neoformat_enabled_c = ['uncrustify']
let g:neoformat_enabled_cpp = ['uncrustify']

" ########## ctags #####

set statusline+=%{gutentags#statusline()}

" ########## C / C++  #############

"
" }}}

source $HOME/.config/nvim/grepper-config/basic.vim

" https://github.com/autozimu/LanguageClient-neovim
let g:LanguageClient_serverCommands = {
    \ 'python': ['/usr/local/bin/pyls'],
    \ }
