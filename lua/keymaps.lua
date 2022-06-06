-- Aliases
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cdm

map("n", "<f5>", ":luafile %<CR>", { noremap = true })

map("", "<up>", "<nop>", { noremap = true })
map("", "<down>", "<nop>", { noremap = true })
map("", "<left>", "<nop>", { noremap = true })
map("", "<right>", "<nop>", { noremap = true })

map("i", "<C-h>", "<left>", default_opts)
map("i", "<C-j>", "<down>", default_opts)
map("i", "<C-k>", "<up>", default_opts)
map("i", "<C-l>", "<right>", default_opts)

-- Navegar tipo tmux
map("n", "<C-h>", "<C-w>h", { noremap = true })
map("n", "<C-j>", "<C-w>j", { noremap = true })
map("n", "<C-k>", "<C-w>k", { noremap = true })
map("n", "<C-l>", "<C-w>l", { noremap = true })

-- fast saving and close
map("n", "<leader>w", ":w<CR>", default_opts)
map("n", "<leader><ESC>", ":q<CR>", default_opts)
map("n", "<leader>q", ":bd!<CR>", default_opts)

map("n", "<tab>", ":bn<CR>", default_opts)
map("n", "<S-tab>", ":bp<CR>", default_opts)

-----------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------

-- open/close
map("n", "<leader>n", ":Neotree toggle<CR>", default_opts)

-- EasyMotion
map("n", "<Leader>s", ":HopChar2<CR>", { noremap = true })

-- Comentary
map("", "<Leader>7", ":Commentary<CR>", {})

-- Prettier
map("n", "<leader>p", ":lua vim.lsp.buf.formatting()<CR>", default_opts)
