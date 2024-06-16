local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
}

function M.config()
  require("nvim-treesitter.configs").setup({
    ensure_installed = { 
      "json",
      "javascript",
      "typescript",
      "tsx",
      "svelte",
      "yaml",
      "html",
      "css",
      "vim",
      "vimdoc",
      "lua",
      "markdown",
      "markdown_inline",
      "bash",
      "python",
      "gitignore",
      "dockerfile",
      "c",
    },
    highlight = { enable = true },
    indent = { enable = true },
  })
end

return M
