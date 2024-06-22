local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-i>", "<C-i>", opts)

-- Testing updated save for mac 
keymap("i", "<leader>ss","<Esc>:w<CR>a", {desc = "Save file"})


-- Better window navigation
keymap("n", "<m-h>", "<C-w>h", opts)
keymap("n", "<m-j>", "<C-w>j", opts)
keymap("n", "<m-k>", "<C-w>k", opts)
keymap("n", "<m-l>", "<C-w>l", opts)
keymap("n", "<m-tab>", "<c-6>", opts)

-- Splitting Windows 
keymap("n","<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap("n","<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap("n","<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap("n","<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tab management
keymap("n","<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap("n","<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap("n","<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) 
keymap("n","<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap("n","<leader>tf", "<cmd>tabf<CR>", { desc = "Open current buffer in new tab"}) 


keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("x", "p", [["_dP]])

vim.cmd [[:amenu 10.100 mousemenu.Goto\ Definition <cmd>lua vim.lsp.buf.definition()<CR>]]
vim.cmd [[:amenu 10.110 mousemenu.References <cmd>lua vim.lsp.buf.references()<CR>]]
-- vim.cmd [[:amenu 10.120 mousemenu.-sep- *]]

vim.keymap.set("n", "<RightMouse>", "<cmd>:popup mousemenu<CR>")
vim.keymap.set("n", "<Tab>", "<cmd>:popup mousemenu<CR>")

-- more good
keymap({ "n", "o", "x" }, "<s-h>", "^", opts)
keymap({ "n", "o", "x" }, "<s-l>", "g_", opts)

-- tailwind bearable to work with
keymap({ "n", "x" }, "j", "gj", opts)
keymap({ "n", "x" }, "k", "gk", opts)
keymap("n", "<leader>w", ":lua vim.wo.wrap = not vim.wo.wrap<CR>", opts)


vim.api.nvim_set_keymap('t', '<C-;>', '<C-\\><C-n>', opts)
