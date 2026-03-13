return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"astro",
				"lua",
				"cmake",
				"cpp",
				"css",
				"fish",
				"gitignore",
				"go",
				"http",
				"graphql",
				"java",
				"php",
				"rust",
				"scss",
				"sql",
				"svelte",
				"typescript",
			})
		end,
	},
}
