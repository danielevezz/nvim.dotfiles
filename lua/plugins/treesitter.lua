return { {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "lua", "query", "go", "javascript", "html",
                "ruby", "c_sharp", "json", "dockerfile", "nu" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
} }
