---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  -- theme = "gruvbox",
  -- theme_toggle = { "gruvbox", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

M.formatters = {
    -- javascript
    javascript = {
        -- npm install -g prettier
        function()
            return {
                exe = "prettier",
                args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), '--write'},
                stdin = true
            }
        end,
    },

    -- json
    json = {
        -- npm install -g prettier
        function()
            return {
                exe = "prettier",
                args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), '--write'},
                stdin = true
            }
        end,
    },
}

M.options = {

  autocmds = {
    set_syntax_dosini = {
      {"BufRead,BufNewFile", "*.config", "setfiletype dosini"},
    },
  },
}

return M
