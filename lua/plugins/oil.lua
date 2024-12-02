return {
    'stevearc/oil.nvim',
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    opts = {
        default_file_explorer = true,
        preview_win = {
            update_on_cursor_moved = true,
            preview_method = "fast_scratch",
        },
        view_options = {
            show_hidden = true
        },
        keymaps = {
            ['<C-p>'] = {
                callback = function()
                    local oil = require 'oil'
                    oil.open_preview({ vertical = true, split = 'botright' })
                end,
            },
        }
    },
    keys = {
        {'-', "<cmd>Oil<cr>", desc = "Open parent directory"},
    },
}
