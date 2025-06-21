return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = {
            theme = 'auto',
            component_separators = '',
            section_separators = { left = '', right = '' },
        },
        sections = {
            lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
            lualine_b = { { 'filename', path = 1, }, 'branch' },
            lualine_c = { 'diagnostics' },
            lualine_x = {},
            lualine_y = { 'filetype', 'searchcount', 'progress' },
            lualine_z = {
                { 'location', separator = { right = '' }, left_padding = 2 },
            },
        },
        inactive_sections = {},
        tabline = {},
        extensions = {},
    }
}
