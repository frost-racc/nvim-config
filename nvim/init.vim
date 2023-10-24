"Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

"Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nmap <F8> :TagbarToggle<CR>


lua <<EOF

local o = vim.o
local g = vim.g
local a = vim.api


o.number = true
o.autoindent = true
o.mouse = 'a'
o.spr = true

o.background = "dark" -- or "light" for light mode
--vim.cmd([[colorscheme gruvbox]])


local function map(m,k,v)
	vim.keymap.set(m,k,v, {silent=true})
end

map('n','<C-Q>',':q<CR>')
map('n','<C-T>',':NERDTreeToggle<CR>')

require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	
	--airline
	--use 'https://github.com/vim-airline/vim-airline'
	--use 'https://github.com/vim-airline/vim-airline-themes'
	
	--lualine
	use {'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true }}
	
	use 'https://github.com/preservim/nerdtree'
	use 'm4xshen/autoclose.nvim'

	use "ellisonleao/gruvbox.nvim" 
	use 'RRethy/nvim-base16'

	use 'mfussenegger/nvim-dap'
	--doesnt work on termux :(  
	--use 'https://github.com/preservim/tagbar'
	--use 'https://github.com/neoclide/coc.nvim'
	

end)
require('autoclose').setup()


--lualine conf
require('lualine').setup {
	options = {
		icons_enabled = true,
    		theme = 'jellybeans',
    		component_separators = { left = '', right = ''},
    		section_separators = { left = '', right = ''},
    		disabled_filetypes = {
      		statusline = {},
      		winbar = {},
    	},
    	ignore_focus = {},
    	always_divide_middle = true,
    	globalstatus = false,
    	refresh = {
      		statusline = 1000,
      		tabline = 1000,
      		winbar = 1000,
    	}
  	},
  	sections = {
    	lualine_a = {'mode'},
    	lualine_b = {'branch', 'diff', 'diagnostics'},
    	lualine_c = {'filename'},
    	lualine_x = {'encoding', 'fileformat', 'filetype'},
    	lualine_y = {'progress'},
    	lualine_z = {'location'}
  	},
  	inactive_sections = {
    		lualine_a = {},
    		lualine_b = {},
    		lualine_c = {'filename'},
    		lualine_x = {'location'},
    		lualine_y = {},
    		lualine_z = {}
  	},
  	tabline = {},
  	winbar = {},
  	inactive_winbar = {},
  	extensions = {}
}


EOF

