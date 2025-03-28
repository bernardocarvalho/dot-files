-- https://martinlwx.github.io/en/config-neovim-from-scratch
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('options')
require('keymaps')
-- require('plugins')
require("lazy").setup("plugins")
require('colorscheme')
require('lsp')
