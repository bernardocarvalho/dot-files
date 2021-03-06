" Fuzzy Find in normal mode
nnoremap <C-p> :<C-u>FZF<CR>

"easiest solution is to map to [ and ] directly:
" portuguese keyboard remap
" :set langmap=º[,`]

nmap º [
nmap ´ ]
omap º [
omap ´ ]
xmap º [
xmap ´ ]

"}
" Jump between #git hunks in Vim with vim-gitgutter
" Normally  use ]c and [c 
nnoremap <silent> <cr> :GitGutterNextHunk<cr>
nnoremap <silent> <backspace> :GitGutterPrevHunk<cr>

" Help mappings
"  Ctrl-] to follow the link 
"  Ctrl-T to go back to the previous topic
"  https://vim.fandom.com/wiki/Learn_to_use_help
"  more in ftplugin/help.vim
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

"Easymotion <Leader><Leader>w o <Leader><Leader>f<char>
"   ,sv         * :source ~/.vimrc<CR>

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" keybindings for LanguageClient-neovim 
 nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
 nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
 nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
 nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

"nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
"nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
"nnoremap <silent> gr :call LanguageClient_textDocument_references()<CR>
"nnoremap <silent> gs :call LanguageClient_textDocument_documentSymbol()<CR>
"nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
"nnoremap <silent> gf :call LanguageClient_textDocument_codeAction()<CR>

" change working directory to where the file in the buffer is located
" if user types `,cd`
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" <ESC> exits in terminal mode
tnoremap <ESC> <C-\><C-n><C-w><C-p>

" Easy most-recent-buffer switching
nnoremap <Tab> :buffers<CR>:buffer<Space>
