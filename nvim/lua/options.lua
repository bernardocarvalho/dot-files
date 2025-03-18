-- Hint: use `:h <option>` to figure out the meaning if needed
vim.opt.clipboard = 'unnamedplus'   -- use system clipboard
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Tab
vim.opt.tabstop = 4                 -- number of visual spaces per TAB
vim.opt.softtabstop = 4             -- number of spacesin tab when editing
vim.opt.shiftwidth = 4              -- insert 4 spaces on a tab
vim.opt.expandtab = true            -- tabs are spaces, mainly because of python

-- UI config
vim.opt.number = true               -- show absolute number
vim.opt.relativenumber = true       -- add numbers to each line on the left side
vim.opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true           -- open new vertical split bottom
vim.opt.splitright = true           -- open new horizontal splits right
vim.opt.termguicolors = true        -- enabl 24-bit RGB color in the TUI
-- vim.opt.showmode = false            -- we are experienced, wo don't need the "-- INSERT --" mode hint

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = false            -- do not highlight matches
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered

-- Python3
vim.g.python3_host_prog = '/usr/bin/python3'

-- VimTeX
--" This is necessary for VimTeX to load properly. The "indent" is optional.
-- Note: Most plugin managers will do this automatically!
-- filetype plugin indent on

--" This enables Vim's and neovim's syntax-related features. Without this, some
--" VimTeX features will not work (see ":help vimtex-requirements" for more
--" info).
--" Note: Most plugin managers will do this automatically!
-- syntax enable

--" Viewer options: One may configure the viewer either by specifying a built-in
-- let g:vimtex_view_method = 'zathura'
-- " VimTeX uses latexmk as the default compiler backend. If you use it, which is
-- " strongly recommended, you probably don't need to configure anything. If you
-- see ":help vimtex-compiler".
-- let g:vimtex_compiler_method = 'latexrun'

--" Most VimTeX mappings rely on localleader and this can be changed with the
--" following line. The default is usually fine and is the symbol "\".
-- let maplocalleader = ","
