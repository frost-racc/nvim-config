vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.autoindent = true
vim.opt.autoread = true
vim.cmd("colorscheme retrobox")

--plugins
require("config.lazy")
require("config.telescope")
require("config.lualine")
