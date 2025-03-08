--plugins
require("config.lazy")
require("config.telescope")
require("config.lualine")
require("config.neo-tree")

--settings
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.autoindent = true
vim.opt.autoread = true

--colorscheme
vim.cmd("colorscheme nightfox")

--mappings
vim.keymap.set('n', '<Leader>hm', ':Alpha<CR>')
vim.keymap.set({'n', 'i', 'v'}, '<Leader>[', ':Neotree left toggle<CR>')
vim.keymap.set({'n', 'i', 'v'}, '<Leader>]', ':Neotree float toggle<CR>')
vim.keymap.set('n', '<Leader>zm', ':ZenMode<CR>')
