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

				--- You can override specific highlights to use other groups or a hex color
				--- function will be called with a Highlights and ColorScheme table
				-- on_highlights = function(highlights, colors) end,
				on_highlights = function(hl, c)
					do
						return
					end
					local prompt = "#2d3149"
					hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg }
					hl.TelescopeBorder = { bg = c.bg_dark, fg = c.bg_dark }
					hl.TelescopePromptNormal = { bg = prompt }
					hl.TelescopePromptBorder = { bg = prompt, fg = prompt }
					hl.TelescopePromptTitle = { bg = c.fg_gutter, fg = c.orange }
					hl.TelescopePreviewTitle = { bg = c.bg_dark, fg = c.bg_dark }
					hl.TelescopeResultsTitle = { bg = c.bg_dark, fg = c.bg_dark }
				end,
			}
		end,
	},
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}
