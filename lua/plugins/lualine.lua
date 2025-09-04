return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = {
            theme = 'auto',
            icons_enabled = false,
            component_separators = '',
            section_separators = '',
        },
        sections = {
            lualine_a = { { 'mode', fmt = string.lower } },
            lualine_b = { 'branch', { 'filename', path = 1, } },
            lualine_c = { 'diagnostics' },
            lualine_x = {},
            lualine_y = { 'filetype', 'searchcount', 'progress' },
            lualine_z = { { 'location' } },
        },
        inactive_sections = {},
        tabline = {},
        extensions = { 'oil' },
    }
}
