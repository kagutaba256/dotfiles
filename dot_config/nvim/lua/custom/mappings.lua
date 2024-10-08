---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    ["<C-z>"] = { "<cmd> undo<CR>", "undo" },
    ["<C-r>"] = { "<cmd> redo<CR>", "undo" },
    ["<leader>q"] = { "<cmd> w | bd<CR>", "close current tab" },
  },
}

-- more keybinds!

return M
