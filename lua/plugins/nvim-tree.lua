vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

require("nvim-tree").setup({
	disable_netrw = true,
	open_on_tab = false,
	renderer = {
		indent_markers = {
			enable = true,
			icons = {
				corner = "└ ",
				edge = "│ ",
				item = "│ ",
				none = "  ",
			},
		},
	},
	diagnostics = {
		enable = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	filters = {
		dotfiles = true,
	},
	view = {
		width = 35,
		hide_root_folder = true,
		mappings = {
			custom_only = true,
			list = {
				-- user mappings go here
				{ key = "l", action = "edit" },
				{ key = "h", action = "close_node" },
				{ key = "v", action = "vsplit" },
				{ key = "s", action = "split" },
				{ key = "K", action = "first_sibling" },
				{ key = "J", action = "last_sibling" },
				{ key = "I", action = "toggle_git_ignored" },
				{ key = "H", action = "collapse_all" },
				{ key = "E", action = "expand_all" },
				{ key = "a", action = "create" },
				{ key = "d", action = "remove" },
				{ key = "r", action = "rename" },
				{ key = "R", action = "refresh" },
				{ key = "x", action = "cut" },
				{ key = "c", action = "copy" },
				{ key = "p", action = "paste" },
				{ key = "y", action = "copy_name" },
				{ key = "Y", action = "copy_path" },
				{ key = "gy", action = "copy_absolute_path" },
				{ key = "<C-h>", action = "toggle_dotfiles" },
				{ key = "<TAB>", action = "preview" },
				{ key = "<bs>", action = "dir_up" },
			},
		},
	},
})
