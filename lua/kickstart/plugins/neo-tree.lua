-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	lazy = true,
	keys = {
		{ "\\", ":Neotree reveal<CR>", desc = "NeoTree reveal", silent = true },
	},
	opts = {
		enable_git_status = true,
		filesystem = {
			window = {
				mappings = {
					["\\"] = "close_window",
				},
			},
			filtered_items = {
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_ignored = false,
			},
		},
	},
}
