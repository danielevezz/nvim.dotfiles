return { {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "lua", "query", "go", "javascript", "html",
                "c_sharp", "json", "dockerfile", "markdown", "elixir",
            "eex", "erlang","heex","surface", "nu"},
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
} }
