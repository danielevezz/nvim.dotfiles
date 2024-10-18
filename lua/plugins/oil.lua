return {
    'stevearc/oil.nvim',
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    opts = {
        default_file_explorer = true
    },
    keys = {
        {'-', "<cmd>Oil<cr>", desc = "Open parent directory"},
    },
}
