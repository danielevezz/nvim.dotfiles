return {
    "nvim-neorg/neorg",
    lazy = false,  -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = true,
    opts = {
        load = {
            ["core.defaults"] = {},
            ["core.concealer"] = {},
            ["core.summary"] = {},
            ["core.dirman"] = {
                config = {
                    default_workspace = "work",
                    workspaces = {
                        work = "~/work"
                    },
                    autochdir = true
                }
            },
        }
    }
}
