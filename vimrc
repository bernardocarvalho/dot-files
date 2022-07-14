" Do first:  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
"https://vi.stackexchange.com/questions/454/whats-the-simplest-way-to-strip-trailing-whitespace-from-all-lines-in-a-file
" deletes any leading whitespace at the beginning of each line.
" :%s/^\s\+//e
" command deletes any trailing whitespace at the end of each line.
" :%s/\s\+$//e
" remove ^M at end
" :s/^M$//      s/^M$//

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" write HTML code faster. 
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'preservim/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-unimpaired'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Syntax highlighting'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
" Python Autocomplete
" Plugin 'davidhalter/jedi-vim'
Plugin 'kiteco/vim-plugin'
"Plugin 'tomasr/molokai'
" Plugin 'flazz/vim-colorschemes'
"Plugin 'morhetz/gruvbox'
"Plugin 'dense-analysis/ale'
Plugin 'altercation/vim-colors-solarized'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'godlygeek/tabular'
"Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'vhda/verilog_systemverilog.vim'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
"
" Custom 
" brew change
set rtp+=/usr/local/opt/fzf
" Put your non-Plugin stuff after this line
" General {
let mapleader = ','
" fugitive
nmap <leader>gs :Git<cr>
nmap <leader>gc :Git commit<cr>
nmap <leader>ga :Gwrite<cr>
nmap <leader>gl :Git log<cr>
nmap <leader>gd :Git diff<cr>
" https://www.rosipov.com/blog/use-vimdiff-as-git-mergetool/
"
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
nnoremap <leader>t :CtrlPTag<CR>

" Get used to  hjkl
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" Disable Arrow keys in Normal mode
" Remove newbie crutches in Command Mode
"cnoremap <Down> <Nop>
"cnoremap <Left> <Nop>
"cnoremap <Right> <Nop>
"cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
"inoremap <Down> <Nop>
"inoremap <Left> <Nop>
"inoremap <Right> <Nop>
"inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
"nnoremap <Down> <Nop>
"nnoremap <Left> <Nop>
"nnoremap <Right> <Nop>
"nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
"vnoremap <Down> <Nop>
"vnoremap <Left> <Nop>
"vnoremap <Right> <Nop>
"vnoremap <Up> <Nop>

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Non US Keyboard, 
" [c  jump to previous hunk
nmap < [
" ]c    jump to next hunk
nmap > ]
omap < [
omap > ]
xmap < [
xmap > ]

" Start NERDTree when Vim is opened and leave the cursor in it.
"autocmd VimEnter * NERDTree
" Start NERDTree when Vim is opened and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p
" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * silent NERDTreeMirror
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if (tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | quit | endif


"filetype plugin indent on   " Automatically detect file types.
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
scriptencoding utf-8

if has('clipboard')
if has('unnamedplus')  " When possible use + register for copy-paste
set clipboard=unnamed,unnamedplus
else         " On mac and Windows, use * register for copy-paste
set clipboard=unnamed
endif
endif

"set autowrite                       " Automatically write a file when leaving a modified buffer
set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set virtualedit=onemore             " Allow for cursor beyond last character
set history=1000                    " Store a ton of history (default is 20)
set hidden                          " Allow buffer switching without saving
"set spell                           " Spell checking on
" setlocal spell spelllang=en_us
":set nospell
"
" set spellsuggest=fast,20 "Don't show too much suggestion for spell
"     check.
"
set spellfile=~/dot-files/spell/en.utf-8.add
" Regenerate .spl
" you must run mkspell to re-generate it if you edit the add file
" :mkspell ~/dot-files/spell/en.utf-8.add
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell

set iskeyword-=.                    " '.' is an end of word designator
set iskeyword-=#                    " '#' is an end of word designator
set iskeyword-=-                    " '-' is an end of word designator
"If you're on OSX and are using zsh 
set shell=bash\ -i
" }

" Formatting {

set nowrap                      " Do not wrap long lines
set autoindent                  " Indent at the same level of the previous line
set shiftwidth=4                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=4                   " An indentation every four columns
set softtabstop=4               " Let backspace delete indent
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current
" https://stackoverflow.com/questions/22831652/vim-changing-indent-setting-in-python-mode
set modeline                    " eg # vim: sta:et:sw=2:ts=2:sts=2

" }
" Vim UI {
syntax on                   " Syntax highlighting
let g:solarized_termcolors=256
" let g:solarized_termtrans=1
" let g:solarized_contrast="normal"
" let g:solarized_visibility="normal"
set background=dark
"set background=light
" jcolorscheme solarized
" olor solarized             " Load a colorscheme
"color molokai    
"autocmd vimenter * ++nested colorscheme gruvbox t
"if (has("termguicolors"))
"set termguicolors
"endif

" Enable true color 
if exists('+termguicolors')
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
endif

set backspace=indent,eol,start  " Backspace for dummies
set linespace=0                 " No extra spaces between rows
set number                      " Line numbers on
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

" }



" filetype plugin on
"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
" Syntax highlighting'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" let g:syntastic_python_checkers = ['flake8', 'python3']
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python']
" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" File Types non-default
au BufRead,BufNewFile *.vh set filetype=verilog

