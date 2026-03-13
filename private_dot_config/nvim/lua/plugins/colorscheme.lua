return {
	{
		"folke/tokyonight.nvim",
		opts = function()
			return {
				style = "night",
				-- transparent = false, -- Enable this to disable setting the background color
				-- terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
				styles = {
					-- Background styles. Can be "dark", "transparent" or "normal"
					-- sidebars = "transparent", -- style for sidebars, see below
					-- floats = "transparent", -- style for floating windows
				},
				sidebars = {
					"qf",
					"vista_kind",
					-- "terminal",
					"spectre_panel",
					"startuptime",
					"Outline",
				}, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
			}
		end,
	},
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}
