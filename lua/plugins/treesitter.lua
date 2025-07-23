return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local treesitter = require('nvim-treesitter.configs')

        treesitter.setup({
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },

            ensure_installed = {
                "json",
                "javascript",
                "html",
                "css",
                "markdown",
                "bash",
                "lua",
                "vim",
                "c",
                "python",
            },
            auto_install = true,

        })
    end,
}
