local function find_cspell_config()
	local cwd = vim.fn.expand("%:p:h")
	local config = vim.fs.find({ "cspell.config.yaml", "cspell.yaml", "cspell.json" }, {
		upward = true,
		path = cwd,
		type = "file",
	})
	return config[1] or "./cspell.config.yaml"
end

return {
	"mfussenegger/nvim-lint",
	opts = {
		linters_by_ft = {
			typescript = { "cspell" },
			javascript = { "cspell" },
			markdown = { "cspell" },
			lua = { "cspell" },
		},
		linters = {
			cspell = {
				cmd = "npx",
				args = function()
					return {
						"cspell",
						"--no-color",
						"--no-progress",
						"--show-suggestions",
						"--config",
						find_cspell_config(),
						"--stdin",
						"--stdin-filename",
						vim.fn.expand("%:p"),
					}
				end,
				stdin = true,
				stream = "stdout",
				parser = require("lint.parser").from_pattern(
					"^(%S+):(%d+):(%d+)%s+(.*)$",
					{ "filename", "lnum", "col", "message" },
					{
						source = "cspell",
						severity = vim.diagnostic.severity.WARN,
					}
				),
			},
		},
	},
}
