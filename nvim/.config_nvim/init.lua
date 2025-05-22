vim.o.relativenumber = true

-- remapping esc to jk
vim.api.nvim_set_keymap('n', 'jk', '<Esc>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('v', 'jk', '<Esc>', { noremap=true, silent=true })

-- saving shortcut
vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })
vim.keymap.set('v', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })

-- formatting code
-- TODO

vim.o.timeoutlen = 100
vim.o.termguicolors=true
vim.o.swapfile=false

-- indent
vim.o.smartindent=true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true --uses spaces instead of tab
vim.o.softtabstop = 4

--vim.o.hlsearch = false -- to stop highlight after search

-- optimizations
-- lazy loading plugins
--vim.cmd [[
--  augroup packer_user_config
--    autocmd!
--    autocmd BufWritePost init.lua source <afile> | PackerSync
--  augroup end
--]]

-- using system clipboard
vim.o.clipboard="unnamedplus"

-- bootstrap lazy nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

