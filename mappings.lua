---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<C-h>"] = { "<cmd> NvimTmuxNavigateLeft <CR>", "Nvim-Tmux Navigation Left"},
    ["<C-j>"] = { "<cmd> NvimTmuxNavigateDown <CR>", "Nvim-Tmux Navigation Down"},
    ["<C-k>"] = { "<cmd> NvimTmuxNavigateUp <CR>", "Nvim-Tmux Navigation Up"},
    ["<C-l>"] = { "<cmd> NvimTmuxNavigateRight <CR>", "Nvim-Tmux Navigation Right"},

    ["<C-r>"] = { "<cmd> lua require('rest-nvim').run()<CR>", "RestNvim run" },
    ["<C-T>"] = { "<cmd> PeekOpen<CR>", "Open markdown preview window"},
    ["<C-Y>"] = { "<cmd> PeekClose<CR>", "Close markdown preview window"},
    ["<Up>"]    = { "<Nop>" },
    ["<Down>"]  = { "<Nop>" },
    ["<Left>"]  = { "<Nop>" },
    ["<Right>"] = { "<Nop>" }
  },
  i = {
    ["<Up>"]    = { "<Nop>" },
    ["<Down>"]  = { "<Nop>" },
    ["<Left>"]  = { "<Nop>" },
    ["<Right>"] = { "<Nop>" }

  }
}

-- more keybinds!
return M