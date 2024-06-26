local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

    -- Override plugin definition options

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
        lazy = false,
    },

    -- override plugin configs
    {
        "williamboman/mason.nvim",
        opts = overrides.mason
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = overrides.treesitter,
    },

    {
        "nvim-tree/nvim-tree.lua",
        opts = overrides.nvimtree,
    },

    -- Install a plugin

    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },

    {
        'mbbill/undotree',
        lazy = false
    },

    {
        'stevearc/conform.nvim',
        lazy = false,
        opts = overrides.conform
    },

    {
        'instant-markdown/vim-instant-markdown',
        lazy = false,
    },

    -- {
    --     'ggandor/leap.nvim',
    --     lazy = false,
    -- },

    {
        "mg979/vim-visual-multi",
        lazy = false,
    },

    {
        "justinmk/vim-sneak",
        lazy = false,
    },

    {
        "catppuccin/nvim",
        lazy = false
    },

    {
        "elkowar/yuck.vim",
        lazy = false
    }

    -- To make a plugin not be loaded
    -- {
    --   "NvChad/nvim-colorizer.lua",
    --   enabled = false
    -- },

    -- All NvChad plugins are lazy-loaded by default
    -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
    -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
    -- {
    --   "mg979/vim-visual-multi",
    --   lazy = false,
    -- }
}

return plugins
