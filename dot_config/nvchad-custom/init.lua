require("custom.autocommands.syntax")
-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local opt = vim.opt
opt.mouse = "r"
opt.shiftwidth = 4
opt.smartindent = true
opt.backup = false
opt.wrap = false
opt.hlsearch = false
opt.incsearch = true
opt.termguicolors = true
opt.expandtab = true
opt.swapfile = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append('@-@')
opt.updatetime = 50
