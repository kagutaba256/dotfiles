---@type MappingsTable
local M = {}

M.general = {
    n = {
        [";"] = { ":", "enter command mode", opts = { nowait = true } },
        ["<C-z>"] = { vim.cmd.undo, "undo" },
        -- ["J"] = { "mzJ`z", "combine below line and keep cursor" },
        ["n"] = { "nzzzv", "search forwards" },
        ["N"] = { "Nzzzv", "search backwards" },
        ["<C-f>"] = { "<cmd>silent !t<CR>", "new tmux sessionizer" },
        ["<leader>u"] = {vim.cmd.UndotreeToggle, "undo tree toggle"},
        ["<leader>e"] = {vim.cmd.NvimTreeToggle, "undo tree toggle"},
        ['J'] = {vim.lsp.buf.hover, "lsp buf hover"},
        ['<leader>lws'] = {vim.lsp.buf.workspace_symbol, "LSP workspace symbol"},
        ['<leader>ld'] = {vim.diagnostic.open_float, "LSP open float"},
        ['[d'] = {vim.diagnostic.goto_next, "go to next diagnostic"},
        [']d'] = {vim.diagnostic.goto_prev, "go to prev diagnostic"},
        ['<leader>lca'] = {vim.lsp.buf.code_action, "LSP code action"},
        ['<leader>lrr'] = {vim.lsp.buf.references, "LSP references"},
        ['<leader>lrn'] = {vim.lsp.buf.rename, "LSP rename"},
        ['<leader>='] = {vim.cmd.ConformFormat, "Format File with Conform"},
    },
    i = {
        ["<C-g>"] = {vim.lsp.buf.signature_help},
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
