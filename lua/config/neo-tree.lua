require("neo-tree").setup({

      filesystem = {
        hijack_netrw_behavior =  -- "open_default",
                              "open_current",
                             -- "disabled",
	}
})
