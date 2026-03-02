-- ⚡ Minimal Neovim + oxocarbon.nvim config

-- Use Lazy.nvim as plugin manager
-- bootstrap lazy.nvim if missing
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- UI basics
vim.o.termguicolors = true     -- enable true color
vim.o.background = "dark"      -- dark or "light"

-- Tabs = 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- smooth scrolling
vim.o.scrolloff = 2
