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
vim.keymap.set("n", "r", "", {noremap = true})