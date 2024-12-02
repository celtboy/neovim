local M = {
  "folke/which-key.nvim",
}

function M.config()
  local wk = require "which-key"
  local mappings = {
   
  }

  wk.setup {
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = false,
        motions = false,
        text_objects = false,
        windows = false,
        nav = true,
        z = true,
        g = false,
      },
    },
    win = {
      border = "rounded",
    },
    layout = {
      width = { min = 30, max = 50 },
      height = { min = 10, max = 15 },
      spacing = 3,
      align = "center",
    },
    icons = {
      breadcrumb = "»",
      separator = "➜",
      group = "+",
    } 
  }
  local opts = {
    
  }

  wk.register(mappings, opts)
  
end

return M