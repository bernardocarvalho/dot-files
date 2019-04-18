" https://github.com/Shougo/dein.vim

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

    call dein#add('Shougo/deoplete.nvim') " dark powered neo-completion
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif
    call dein#add('Shougo/neosnippet.vim')      " adds snippet support
    call dein#add('Shougo/neosnippet-snippets') " standard snippets repo for neosnippet
    " extra snippets can be found at github.com/honza/vim-snippets with some configuration.
    let g:deoplete#enable_at_startup = 1

    call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
    call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

    call dein#add('tpope/vim-unimpaired')
    call dein#add('tpope/vim-fugitive', {'on_cmd' : 'Gstatus'})
    call dein#add('airblade/vim-gitgutter') " shows a git diff in the gutter (sign column)
    call dein#add('easymotion/vim-easymotion')
    call dein#add('tpope/vim-surround')

    call dein#add('Yggdroot/indentLine') " Better Visual Guide
    call dein#add('junegunn/vim-easy-align')
    " displays tags in a window, nmap <F8> :TagbarToggle<CR>
    call dein#add('majutsushi/tagbar')
    call dein#add('ludovicchabant/vim-gutentags')  " manages  tag files
    call dein#add('elzr/vim-json')
    call dein#add('scrooloose/nerdtree')
"    call dein#add('tomtom/tcomment_vim')
    call dein#add('scrooloose/nerdcommenter')
    call dein#add('vim-airline/vim-airline') " lean & mean status/tabline
    call dein#add('vim-airline/vim-airline-themes') " lean & mean status/tabline

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
    call dein#add('iCyMind/NeoSolarized') 	" A fixed solarized colorscheme for better truecolor support.
"   Language Server Protocol
    call dein#add('autozimu/LanguageClient-neovim', { 
        \ 'rev': 'next',
        \ 'build': 'bash install.sh',
        \ })

    call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd'],
        \ 'build': 'cd app & yarn install' }) " markdown preview plugin 

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype indent on    " Use filetype indentation
filetype plugin indent on " Allow plugins to use filetype indentation

