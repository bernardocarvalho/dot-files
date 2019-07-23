" https://github.com/Shougo/dein.vim

"dein Scripts-----------------------------

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

    call dein#add('haya14busa/dein-command.vim')
    call dein#add('wsdjeg/dein-ui.vim')

" Code Completion
    call dein#add('Shougo/deoplete.nvim') " dark powered neo-completion
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif
    call dein#add('Shougo/deoplete-clangx') " C/C++ Completion for deoplete using clang
    call dein#add('Shougo/neosnippet.vim')      " adds snippet support
    call dein#add('Shougo/neosnippet-snippets') " standard snippets repo for neosnippet
    " extra snippets can be found at github.com/honza/vim-snippets with some configuration.
 "   call dein#add('deoplete-plugins/deoplete-jedi') " deoplete.nvim source for Python
"   Language Server Protocol
    call dein#add('autozimu/LanguageClient-neovim', {
        \ 'rev': 'next',
        \ 'build': 'bash install.sh',
        \ })

    call dein#add('vhda/verilog_systemverilog.vim') " Verilog/SystemVerilog Syntax and Omni-completion
    call dein#add('lervag/vimtex') "

    call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
    call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

    "call dein#add('tpope/vim-unimpaired')
    call dein#add('tpope/vim-fugitive', {'on_cmd' : 'Gstatus'})
    call dein#add('airblade/vim-gitgutter') " shows a git diff in the gutter (sign column)
    call dein#add('tpope/vim-surround')" quoting/parenthesizing made simple

" Display & Movement
    call dein#add('easymotion/vim-easymotion')
    call dein#add('justinmk/vim-sneak')
    call dein#add('Yggdroot/indentLine') " Better Visual Guide
    call dein#add('junegunn/vim-easy-align')
    " displays tags in a window, nmap <F8> :TagbarToggle<CR>
    call dein#add('majutsushi/tagbar')
    call dein#add('vim-airline/vim-airline') " lean & mean status/tabline
    call dein#add('vim-airline/vim-airline-themes') " lean & mean status/tabline
    call dein#add('sheerun/vim-polyglot') " A solid language pack for Vim
"    call dein#add('lifepillar/vim-solarized8')
    call dein#add('iCyMind/NeoSolarized') 	" A fixed solarized colorscheme for better truecolor support.
    call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd'],
        \ 'build': 'cd app & yarn install' }) " markdown preview plugin
    call dein#add('christoomey/vim-tmux-navigator')

    " Gutentags needs universal-ctags !
    call dein#add('ludovicchabant/vim-gutentags')  " manages  tag files
    call dein#add('elzr/vim-json')

" File Manager
    call dein#add('scrooloose/nerdtree')

    "    call dein#add('tomtom/tcomment_vim')
    call dein#add('scrooloose/nerdcommenter')

" Code standarts
"   Alternatives to ALE
"    call dein#add('neomake/neomake')
"    call dein#add('coddingtonbear/neomake-platformio')
"    call dein#add('vim-syntastic/syntastic')
" add isort ?
    call dein#add('w0rp/ale')
    call dein#add('tpope/vim-dispatch')
    call dein#add('radenling/vim-dispatch-neovim')

 " Format the entire buffer, or visual selection of the buffer
" :Neoformat
    call dein#add('sbdchd/neoformat')  "  plugin for formatting code

    " Grepper asynchronously plugin  by Marco Hinz.
    "call dein#add('mhinz/vim-grepper')


    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype indent on    " Use filetype indentation
filetype plugin indent on " Allow plugins to use filetype indentation

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif
" if needed run  :call dein#recache_runtimepath()
"End dein Scripts-------------------------
"
