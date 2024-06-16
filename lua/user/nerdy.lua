local M = {
  "2KAbhishek/nerdy.nvim",
  event = "VeryLazy",
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-telescope/telescope.nvim",
    --"neoclide/coc.nvim",
  },
  cmd = 'Nerdy',
}

function M.config()




  require('telescope').load_extension('nerdy')
--  require('telescope').extensions.nerdy.nerdy()
 -- keymap("n", "<s-m>", "<cmd>lua require('user.harpoon').mark_file()<cr>", opts)
 -- keymap("n", "<TAB>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
end

return M
