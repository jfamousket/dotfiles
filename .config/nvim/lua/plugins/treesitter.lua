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
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)

			-- MDX
			vim.filetype.add({
				extension = {
					mdx = "mdx",
				},
			})
			vim.treesitter.language.register("markdown", "mdx")
		end,
	},
}
