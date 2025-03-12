--settings
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = false
vim.opt.cindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.autoread = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.breakindent = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.inccommand = 'split'
vim.g.have_nerd_font = true
vim.opt.relativenumber = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.cursorline = true




--plugin configs
require("config.lazy")
require("config.telescope")
require("config.lualine")
require("config.neo-tree")



--colorscheme
vim.cmd("colorscheme kanagawa")

--mappings
vim.keymap.set('n', '<Leader>hm', ':Alpha<CR>')
vim.keymap.set('n', '<Leader>[', ':Neotree left toggle<CR>')
vim.keymap.set('n', '<Leader>]', ':Neotree float toggle<CR>')
vim.keymap.set('n', '<Leader>zm', ':ZenMode<CR>')

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
