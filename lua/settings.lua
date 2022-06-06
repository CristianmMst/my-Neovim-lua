-- Neovim API aliases
-----------------------------------------------------------
local cmd = vim.cmd                     -- execute Vim commands
local exec = vim.api.nvim_exec          -- execute Vimscript
local fn = vim.fn                       -- call Vim functions
local g = vim.g                         -- global variables
local opt = vim.opt                     -- global/buffer/windows-scoped options
-----------------------------------------------------------
-- General
-----------------------------------------------------------
g.mapleader          = ' '
opt.mouse            = 'a'
opt.clipboard        = 'unnamedplus'
opt.swapfile         = false
-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number           = true
opt.relativenumber   = true
opt.wrap             = false
opt.cursorline       = true
opt.ruler            = true
opt.autoindent       = true
opt.title            = true
opt.wildmode         = "longest,full"
opt.updatetime       = 300
opt.scrolloff        = 12
opt.showmode         = false
opt.conceallevel     = 0
opt.splitbelow       = true
opt.splitright       = true
opt.colorcolumn      = '90'
opt.showmatch        = true
opt.ignorecase       = true
opt.smartcase        = true
opt.termguicolors    = true

opt.list             = true
opt.listchars        = 'tab:▸ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»'
-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden           = true      -- enable background buffers
opt.history          = 100       -- remember n lines in history
opt.lazyredraw       = true      -- faster scrolling
opt.synmaxcol        = 1000      -- max column for syntax highlight
-----------------------------------------------------------
-- Disable
-----------------------------------------------------------
g.loaded_gzip               = 1
g.loaded_zip                = 1
g.loaded_zipPlugin          = 1
g.loaded_tar                = 1
g.loaded_tarPlugin          = 1

g.loaded_getscript          = 1
g.loaded_getscriptPlungin   = 1
g.loaded_vimball            = 1
g.loaded_vimballPlugin      = 1
g.loaded_2html_plugin       = 1

g.loaded_netrwSettings  	= 1
g.loaded_netrwPlugin    	= 1
g.loaded_netrw          	= 1
g.loaded_netrwFileHandlers  = 1

g.loaded_matchit        	= 1
g.loaded_matchparen        	= 1
g.loaded_logiPat            = 1
g.loaded_rrhelper           = 1

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab        = true      -- use spaces instead of tabs
opt.shiftwidth       = 2         -- shift 4 spaces when tab
opt.tabstop          = 2         -- 1 tab == 4 spaces
opt.smartindent      = true      -- autoindent new lines

-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]
-- remove line lenght marker for selected filetypes
cmd [[autocmd FileType text,markdown,xml,html,xhtml,javascript setlocal cc=0]]
-- IndentLine
g.indentLine_char = '|'          -- set indentLine character
-- disable IndentLine for markdown files (avoid concealing)
cmd [[autocmd FileType markdown let g:indentLine_enabled=0]]
