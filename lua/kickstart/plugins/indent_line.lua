return {
	{
		"lukas-reineke/indent-blankline.nvim",
		priority = 1000,
		main = "ibl",
		event = { "BufReadPost", "BufNewFile" },
		---@module "ibl"
		---@type ibl.config
		opts = {
			indent = {
				highlight = "IblIndent",
			},
			scope = {
				enabled = true,
				show_start = false,
				show_end = false,
				highlight = "IblScope",
			},
			whitespace = {
				highlight = "IblWhitespace",
				remove_blankline_trail = true,
			},
			exclude = {
				buftypes = { "terminal", "nofile" },
				filetypes = {
					"help",
					"lazy",
					"mason",
					"notify",
					"oil",
					"Trouble",
				},
			},
		},
		config = function(_, opts)
			require("ibl").setup(opts)
			require("ibl").refresh_all() -- <— key part for “already open” buffers
		end,
	},
}
