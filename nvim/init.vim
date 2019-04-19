" File: init.vim
" Link: https://github.com/vonbrownie/dotfiles
" https://github.com/mhartington/dotfiles/blob/master/config/nvim/init.vim
"
" https://github.com/afnanenayet/nvim-dotfiles

for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
    exe 'source' f
endfor
