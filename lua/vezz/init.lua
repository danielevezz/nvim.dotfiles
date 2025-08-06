require("vezz.remap")
require("vezz.set")
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
require("vezz.lsp_autocmd")

vim.cmd("colorscheme rose-pine-moon")

vim.diagnostic.config({ virtual_text = true })


vim.api.nvim_create_user_command('Jq',
    function()
        vim.opt.filetype = 'json'
        vim.cmd("%!jq")
    end,
    {})


-- autocommands
vim.api.nvim_create_autocmd('BufWritePost', {
    pattern = { '*.adoc' },
    callback = function()
        vim.cmd("Dispatch! just html")
    end
})

vim.api.nvim_create_autocmd('BufWritePost', {
    pattern = { '*.tex' },
    callback = function()
        vim.cmd("Dispatch! just tex %")
    end
})

vim.api.nvim_create_autocmd('OptionSet', {
    pattern = { 'background' },
    callback = function()
        vim.notify("bg changed yo")
    end
})
