return {
"goolord/alpha-nvim",
     config = function ()
         local alpha = require'alpha'
         local dashboard = require'alpha.themes.dashboard'
         dashboard.section.header.val = {

[[█▀ █▀▄ ▄▀▄ ▄▀▀ ▀█▀ ▀▄▀     █▄ █ ██▀ ▄▀▄ █ █ █ █▄ ▄█]],
[[█▀ █▀▄ ▀▄▀ ▄██  █   █      █ ▀█ █▄▄ ▀▄▀ ▀▄▀ █ █ ▀ █]],
[[                                                   ]],
[[               ███▄▄▄   ▄▄▄   ▄▄▄███               ]],
[[               █    ▀▀▀▀   ▀▀▀▀    █               ]],
[[                █                 █                ]],
[[                ▄█  ▄▄▄     ▄▄▄  █▄                ]],
[[               ▄█  █▀▀██   ██▀▀█  █▄               ]],
[[             ▀█   ██ ▄█     █▄ ██   █▀             ]],
[[               ▀▄ ███▀  ███  ▀███ ▄▀               ]],
[[               ▀█      ▄ █ ▄      █▀               ]],
[[                 ▀▀█▄   ▀▀▀   ▄█▀▀                 ]],
[[                     ▀▀▄▄▄▄▄▀▀                     ]],}



	dashboard.section.buttons.val = {
  	dashboard.button("f", " [~] Find file", ":Telescope find_files <CR>"),
   	dashboard.button("e", " [+] New file", ":ene <BAR> startinsert <CR>"),
   	dashboard.button("r", "󱋡 [>] Recently used files", ":Telescope oldfiles <CR>"),
  	dashboard.button("c", " [o] Configuration", ":cd C:/Users//AppData/Local/nvim<CR> :e init.lua<CR>"),
   	dashboard.button("q", "󰈆 [x] Quit Neovim", ":qa<CR>"),
}


        dashboard.section.footer.val = {
		[[                                                      ]],
		[["NeoVim is like peanut butter...  you have to like it"]],
		[[                                     --Abraham Lincoln]]}
        dashboard.config.opts.noautocmd = true
         
	    vim.cmd[[autocmd User AlphaReady echo 'ready']]

         alpha.setup(dashboard.config)
     end,

	
 }
