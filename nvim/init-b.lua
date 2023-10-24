local o = vim.o
local g = vim.g
local a = vim.api


o.number = true
o.autoindent = true
o.mouse = 'a'


local function map(m,k,v)
	vim.keymap.set(m,k,v, {silent=true})
end

map('n','<C-Q>',':q<CR>')
map('n','<C-T>',':NERDTreeToggle<CR>')

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'https://github.com/vim-airline/vim-airline'
	use 'https://github.com/vim-airline/vim-airline-themes'
	use 'https://github.com/preservim/nerdtree'
	--doesnt work on termux 
	--use 'https://github.com/neoclide/coc.nvim'
end)

