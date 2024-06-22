local M = {
  "folke/trouble.nvim",
  cmd = "Trouble",
  event = "VeryLazy",
  dependencies = {
--    "kevinhwang91/promise-async",
    --"neoclide/coc.nvim",
  },
}

function M.config()
 -- local keymap = vim.keymap.set
 -- local opts = { noremap = true, silent = true }
  
  local wk = require "which-key"
  wk.register {
    ["<leader>xx"] = {"<cmd>Trouble diagnostics toggle<cr>","Diagnostics (Trouble)"}
  }
  
  require("trouble").setup() 
  
 -- local keys = {
 --   
 --   {
 --     "<leader>xx",
 --     "<cmd>Trouble diagnostics toggle<cr>",
 --     desc = "Diagnostics (Trouble)",
 --   },
 --   {
 --     "<leader>xX",
 --     "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
 --     desc = "Buffer Diagnostics (Trouble)",
 --   },
 --   {
 --     "<leader>cs",
 --     "<cmd>Trouble symbols toggle focus=false<cr>",
 --     desc = "Symbols (Trouble)",
 --   },
 --   {
 --     "<leader>cl",
 --     "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
 --     desc = "LSP Definitions / references / ... (Trouble)",
 --   },
 --   {
 --     "<leader>xL",
 --     "<cmd>Trouble loclist toggle<cr>",
 --     desc = "Location List (Trouble)",
 --   },
 --   {
 --     "<leader>xQ",
 --     "<cmd>Trouble qflist toggle<cr>",
 --     desc = "Quickfix List (Trouble)",
 --   },
 -- }






end

return M
