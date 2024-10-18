return {
"goolord/alpha-nvim",
     config = function ()
         local alpha = require'alpha'
         local dashboard = require'alpha.themes.dashboard'
         dashboard.section.header.val = {
            
[[╔─────────────────────────────────────────────────────────────────────────────────╗]],
[[│                  __                                        /\ \                 │]],
[[│    ___   __  __ /\_\    ___ ___         ____  __  __    ___\ \ \/'\     ____    │]],
[[│  /' _ `\/\ \/\ \\/\ \ /' __` __`\      /',__\/\ \/\ \  /'___\ \ , <    /',__\   │]],
[[│  /\ \/\ \ \ \_/ |\ \ \/\ \/\ \/\ \    /\__, `\ \ \_\ \/\ \__/\ \ \\`\ /\__, `\  │]],
[[│  \ \_\ \_\ \___/  \ \_\ \_\ \_\ \_\   \/\____/\ \____/\ \____\\ \_\ \_\/\____/  │]],
[[│   \/_/\/_/\/__/    \/_/\/_/\/_/\/_/    \/___/  \/___/  \/____/ \/_/\/_/\/___/   │]],
[[│                                                                                 │]],
[[╚─────────────────────────────────────────────────────────────────────────────────╝]],}

	dashboard.section.buttons.val = {
  	dashboard.button("f", " [~] Find file", ":Telescope find_files <CR>"),
   	dashboard.button("e", " [+] New file", ":ene <BAR> startinsert <CR>"),
   	dashboard.button("r", "󱋡 [>] Recently used files", ":Telescope oldfiles <CR>"),
  	dashboard.button("c", " [o] Configuration", ":e C:/Users/mimir/AppData/Local/nvim/init.lua<CR>"),
   	dashboard.button("q", "󰈆 [x] Quit Neovim", ":qa<CR>"),
}


        dashboard.section.footer.val = {
		[[                                                      ]],
		[["NeoVim is like peanut butter...  you have to like it"]],
		[[                                     --Abraham Lincoln]]}
        dashboard.config.opts.noautocmd = true
         
	    vim.cmd[[autocmd User AlphaReady echo 'ready']]

         alpha.setup(dashboard.config)
     end
 }
