-- Offset for tree.

local nvim_tree_events = require "nvim-tree.events"
local bufferline_api = require "bufferline.api"

local function get_tree_size() return require("nvim-tree.view").View.width end

nvim_tree_events.subscribe("TreeOpen", function() bufferline_api.set_offset(get_tree_size()) end)

nvim_tree_events.subscribe("Resize", function() bufferline_api.set_offset(get_tree_size()) end)

nvim_tree_events.subscribe("TreeClose", function() bufferline_api.set_offset(0) end)

-- Setup.
require("bufferline").setup {
  animation = false,
  auto_hide = false,
  highlight_inactive_file_icons = true,
  icons_diagnostics = {
    { -- Error.
      enabled = true,
      icon = " ",
    },
    { -- Warning,
      enabled = false,
      icon = " ",
    },
    { -- Info.
      enabled = false,
    },
    { -- Hint.
      enabled = false,
    },
  },
  icons_separator_left = "▎",
  icons_separator_inactive = " ",
  icons_button = " ",
  icons_modified_button = "● ",
  icon_pinned_button = "車",
  minimum_padding = 1,
  maximum_padding = 5,
  maximum_length = 25,
  exclude_ft = {
    "dap-repl",
  },
}
