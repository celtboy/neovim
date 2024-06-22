local M = {
  "folke/todo-comments.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    --"neoclide/coc.nvim",
  },
}

function M.config()
 -- keymap("n", "<s-m>", "<cmd>lua require('user.harpoon').mark_file()<cr>", opts)
  require("todo-comments").setup()
 -- keymap("n", "<TAB>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
end

return M
