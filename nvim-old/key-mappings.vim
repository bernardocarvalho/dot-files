" mostly taken from http://spf13.com
"
" Fugitive {
    nnoremap <silent> <leader>gs :Gstatus<CR>
    nnoremap <silent> <leader>gd :Gdiff<CR>
    nnoremap <silent> <leader>gc :Gcommit<CR>
    nnoremap <silent> <leader>gb :Gblame<CR>
    nnoremap <silent> <leader>gl :Glog<CR>
    nnoremap <silent> <leader>gp :Git push<CR>
    nnoremap <silent> <leader>gr :Gread<CR>
    nnoremap <silent> <leader>gw :Gwrite<CR>
    nnoremap <silent> <leader>ge :Gedit<CR>
    " Mnemonic _i_nteractive
    nnoremap <silent> <leader>gi :Git add -p %<CR>
""        nnoremap <silent> <leader>gg :SignifyToggle<CR>
"}
"
" Grepper {
"nnoremap <leader>g :Grepper -tool git<cr>
nnoremap <leader>g :Grepper -tool grep<cr>
nnoremap <leader>G :Grepper -tool ag<cr>
" Start searching the word under the cursor:
nnoremap <leader>* :Grepper -tool ag -cword -noprompt<cr>

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

"}

"   ,,            <Plug>(easymotion-prefix)
"   ,sv         * :source ~/.vimrc<CR>
