return {
	{
		'nvim-telescope/telescope.nvim', branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' },
		keys = {
			{'<leader>ff', "<cmd>Telescope find_files<cr>", desc = "Find file"},
			{'<leader>fg', "<cmd>Telescope live_grep<cr>", desc = "Live grep"},
			{'<leader>fb', "<cmd>Telescope buffers<cr>", desc = "Find buffers"},
			{'<C-p>', "<cmd>Telescope git_files<cr>", desc = "Git files"}
		},
        lazy = false
	}
}
