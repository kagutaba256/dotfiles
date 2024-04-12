-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

M.add = {
  Normal = { bg = "NONE", fg = "#ffffff", ctermbg = 0},
  NormalNC = { bg = "NONE", fg = "#ffffff" },
  VertSplit = { bg = "NONE", fg = "#ffffff" },
  StatusLine = { bg = "NONE", fg = "#ffffff" },
  StatusLineNC = { bg = "NONE", fg = "#ffffff" },
  LineNr = { fg = "#ffffff"},
  CursorLineNr = { fg = "#FFFFFF" },
  SignColumn = { fg = "#FFFFFF" },
}


return M
