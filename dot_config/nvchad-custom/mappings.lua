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
        ["<C-,>"] = { "<C-d>zz", "page down" },
        ["<C-.>"] = { "<C-u>zz", "page up" },
        ["J"] = { "mzJ`z", "combine below line and keep cursor" },
        ["n"] = { "nzzzv", "search forwards" },
        ["N"] = { "Nzzzv", "search backwards" },
        ["<C-f>"] = { "<cmd>silent !t<CR>", "new tmux sessionizer" },
    },
    v = {
        ["J"] = { ":m '>+1<CR>gv=gv", "move chunk down"},
        ["K"] = { ":m '<-2<CR>gv=gv", "move chunk up"}
    },
    x = {
        ["<leader>pp"] = {"\"_dP", "pastes over something"}
    }
}

-- more keybinds!

return M
