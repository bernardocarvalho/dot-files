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

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" keybindings for language client
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> gs :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> gf :call LanguageClient_textDocument_codeAction()<CR>

" change working directory to where the file in the buffer is located
" if user types `,cd`
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" <ESC> exits in terminal mode
tnoremap <ESC> <C-\><C-n><C-w><C-p>

" Easy most-recent-buffer switching
nnoremap <Tab> :buffers<CR>:buffer<Space>
