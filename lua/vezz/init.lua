require("vezz.remap")
require("vezz.set")
require("oil").setup()

require'lspconfig'.gopls.setup{}

vim.cmd("colorscheme rose-pine-moon")

vim.api.nvim_create_user_command('Jq',
    function() 
        vim.opt.filetype = 'json'
        vim.cmd("%!jq")
    end,
    {})

vim.api.nvim_create_autocmd('BufWritePost', {
    pattern = {'*.adoc'},
    callback = function()
        vim.cmd("Dispatch! just html")
    end
})
