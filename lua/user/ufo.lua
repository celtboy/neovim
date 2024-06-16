local M = {
  "kevinhwang91/nvim-ufo",
  event = "VeryLazy",
  dependencies = {
    "kevinhwang91/promise-async",
    --"neoclide/coc.nvim",
  },
}

function M.config()
 -- local keymap = vim.keymap.set
 -- local opts = { noremap = true, silent = true }
  vim.o.foldcolumn = '1'
  vim.o.foldlevel = 99
  vim.o.foldlevelstart = 99
  vim.o.foldenable = true 

  vim.keymap.set('n','zR', require('ufo').openAllFolds)
  vim.keymap.set('n','zM', require('ufo').closeAllFolds)


  -- Option 3: treesitter as a main provider instead
  -- (Note: the `nvim-treesitter` plugin is *not* needed.)
  -- ufo uses the same query files for folding (queries/<lang>/folds.scm)
  -- performance and stability are better than `foldmethod=nvim_treesitter#foldexpr()`
  require('ufo').setup({
      provider_selector = function(bufnr, filetype, buftype)
          return {'treesitter', 'indent'}
      end
  })





  require('ufo').setup()
 -- keymap("n", "<s-m>", "<cmd>lua require('user.harpoon').mark_file()<cr>", opts)
 -- keymap("n", "<TAB>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
end

return M
