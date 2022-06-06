local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
	formatting.stylua,
	formatting.prettier.with({
		extra_args = { "--single-quote", "--use-tabs" },
	}),
}

null_ls.setup({
	sources = sources,
})
