--plugins
require("config.lazy")
require("config.telescope")
require("config.lualine")

--settings
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.autoindent = true
vim.opt.autoread = true
vim.cmd("colorscheme everforest")

--mappings
vim.keymap.set('n', '<Leader>hm', ':Alpha<CR>')
