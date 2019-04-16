" File: init.vim
" Link: https://github.com/vonbrownie/dotfiles
" https://github.com/mhartington/dotfiles/blob/master/config/nvim/init.vim
" put this files in ~/config/nvim/
"
" Get AppImage ("universal" Linux package)
" curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
"  change perm and but it ~/bin/
"
"
" == General Configuration ==

set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
"set mouse=a                " Enable mouse usage (all modes)
" set mouse=v                 " middle-click paste with mouse
set mouse=a              
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the r    ight thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just     typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein')
    call dein#add('Shougo/deoplete.nvim')
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif
    call dein#add('Yggdroot/indentLine')
    call dein#add('junegunn/vim-easy-align')
    call dein#add('majutsushi/tagbar')
    call dein#add('elzr/vim-json')
    call dein#add('tpope/vim-fugitive', {'on_cmd' : 'Gstatus'})
    call dein#add('scrooloose/nerdtree')
    call dein#add('tpope/vim-surround')
"    call dein#add('tomtom/tcomment_vim')
    call dein#add('scrooloose/nerdcommenter')
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-syntastic/syntastic')
    call dein#add('iCyMind/NeoSolarized')
 " call dein#add('neomake/neomake')
    " call dein#add('coddingtonbear/neomake-platformio')

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable

" System mappings  ----------------------------------------------------------{{{
" leader is ,
let mapleader = ','

" No need for ex mode
nnoremap Q <nop>
vnoremap // y/<C-R>"<CR>
" recording macros is not my thing
map q <Nop>

noremap  <silent> <Home> g<Home>
noremap  <silent> <End>  g<End>
inoremap <silent> <Home> <C-o>g<Home>
inoremap <silent> <End> <C-o>g<End>

"}}}"

" NERDTree ------------------------------------------------------------------{{{
map <C-n> :NERDTreeToggle<CR>
"}}}

" let g:neomake_open_list = 2
let g:deoplete#enable_at_startup = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_balloons = 1
let g:syntastic_c_checkers = ['gcc']    " Use gcc as default syntax checker
let g:syntastic_c_include_dirs = [".", "/home/bernardo/FPGA/BUILDROOT/buildroot/output/build/libgpiod-v0.3/include"]
" let g:syntastic_python_pylint_exe = 'python3 -m pylint3'

