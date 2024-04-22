return {
	{
		"kdheepak/lazygit.nvim",
		enable = true,
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
        keys = {
           { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
        },
	},
}