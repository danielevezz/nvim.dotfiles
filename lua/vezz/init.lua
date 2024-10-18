require("vezz.remap")
require("vezz.set")

vim.cmd("colorscheme rose-pine-moon")
--vim.cmd("language en_US")

vim.api.nvim_create_user_command('Jq',
    function() 
        vim.opt.filetype = 'json'
        vim.cmd("%!jq")
    end,
    {})
