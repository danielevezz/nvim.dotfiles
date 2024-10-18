require("vezz.remap")
require("vezz.set")
require("oil").setup()

vim.cmd("colorscheme rose-pine-moon")

vim.api.nvim_create_user_command('Jq',
    function() 
        vim.opt.filetype = 'json'
        vim.cmd("%!jq")
    end,
{})
