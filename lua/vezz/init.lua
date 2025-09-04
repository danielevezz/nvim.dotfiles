require("vezz.remap")
require("vezz.set")
--require("vezz.statusline")
require("vezz.lsp_autocmd")

require("oil").setup(
    {
        default_file_explorer = true,
        preview_win = {
            update_on_cursor_moved = true,
            preview_method = "fast_scratch",
        },
        columns = {
            "icon",
        },
        view_options = {
            show_hidden = true,
        },
        case_insensitive = true,
        sort = {
            { "icon", "asc" }
        },
        keymaps = {
            ['<C-p>'] = "actions.preview",
        }
    }
)

vim.opt.background = 'light'
vim.cmd("colorscheme rose-pine")

vim.diagnostic.config({ virtual_text = true })
