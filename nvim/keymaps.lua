-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set({"n","i"}, "<F4>", '<Cmd>exe winheight(0)/3."split" | term python %<CR>')
-- vim.keymap.set({ "n", "i" }, "<F5>", "<Cmd>term python %<CR>")
-- vim.keymap.set({ "n", "i" }, "<F7>", "<cmd>w<CR><cmd>!python %<CR>")
-- vim.keymap.set({ "n", "i" }, "<F8>", "<cmd>w<CR><cmd>term python %<CR>")
-- vim.keymap.set("n", "<leader>rr", '<cmd>TermExec cmd="python %"<cr>', { desc = "Run python codes" })

-- vim.keymap.del( {"n"}, "r", {})
-- can not delete key r, so remap it to null
-- vim.keymap.set("n", "r", "", {noremap = true})

-- set by jacklu
vim.keymap.set("n", "<leader>qw", ":w<cr>", { desc = "save" })
vim.keymap.set("n", "<leader>qe", ":wq<cr>", { desc = "save and quit" })
vim.keymap.set("n", "<leader>qq", ":qa<cr>", { desc = "quit all" })
vim.keymap.set("n", "<leader>qn", ":q!<cr>", { desc = "quit no save" })

vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Lazy" })
vim.keymap.set("n", "<leader>lx", "<cmd>LazyExtras<cr>", { desc = "LazyExtras" })

-- vim.cmd("map! <C-Q> <S-Left>")
-- vim.cmd("map  <C-Q> <S-Left>")
-- vim.cmd("map! <C-W> <S-Right>")
-- vim.cmd("map  <C-W> <S-Right>")

vim.cmd("map! <C-A> <Home>")
vim.cmd("map  <C-A> <Home>")
vim.cmd("map! <C-E> <End>")
vim.cmd("map  <C-E> <End>")
