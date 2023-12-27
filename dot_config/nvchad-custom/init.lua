require("custom.autocommands.syntax")
-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.opt.mouse = "r"
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.backup = false
vim.opt.wrap = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append('@-@')
vim.opt.updatetime = 50

local enable_providers = {
      "python3_provider",
    }

for _, plugin in pairs(enable_providers) do
      vim.g["loaded_" .. plugin] = nil
      vim.cmd("runtime " .. plugin)
end

vim.g.python3_host_prog = '/home/sam/.pyenv/versions/nvim/bin/python'

vim.g.instant_markdown_slow = 1
vim.g.instant_markdown_autostart = 0
vim.g.instant_markdown_open_to_the_world = 1
vim.g.instant_markdown_allow_unsafe_content = 1
vim.g.instant_markdown_allow_external_content = 0
vim.g.instant_markdown_mathjax = 1
vim.g.instant_markdown_mermaid = 1
vim.g.instant_markdown_logfile = '/tmp/instant_markdown.log'
vim.g.instant_markdown_autoscroll = 0
vim.g.instant_markdown_port = 8888
vim.g.instant_markdown_python = 1
vim.g.instant_markdown_theme = 'dark'

vim.api.nvim_create_user_command("ConformFormat", function(args)
  local range = nil
  if args.count ~= -1 then
    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
    range = {
      start = { args.line1, 0 },
      ["end"] = { args.line2, end_line:len() },
    }
  end
  require("conform").format({ async = true, lsp_fallback = true, range = range })
end, { range = true })

