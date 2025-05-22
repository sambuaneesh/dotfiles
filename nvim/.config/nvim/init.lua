-- my recomm defaults
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.cursorline = true
vim.opt.mouse = 'a'
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.o.clipboard = "unnamedplus"

-- remappings
vim.opt.timeoutlen = 100
vim.api.nvim_set_keymap('n', 'jk', '<Esc>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('v', 'jk', '<Esc>', { noremap=true, silent=true })

vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })

vim.keymap.set('n', '<C-x>', ':q<CR>', { noremap = true, silent = true })

-- bootstrap Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)


-- plugins
require("lazy").setup({
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
})


-- theme
vim.cmd.colorscheme("catppuccin-mocha")
vim.opt.termguicolors = true
vim.opt.background = "dark"
