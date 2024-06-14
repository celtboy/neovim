local M = {
  "comfysage/aurora",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

function M.config()
  transparent_background = false
  contrast_dark = 'medium'
  vim.cmd.colorscheme "aurora"
end

return M
