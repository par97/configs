-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Run Python code in terminal
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.keymap.set({ "n" }, "<leader>rl", "<cmd>w<CR><cmd>!python %<CR>", { desc = "Run Python" })
        vim.keymap.set({ "n" }, "<leader>rk", "<cmd>w<CR><cmd>term python %<CR>", { desc = "Run Python" })
        vim.keymap.set({ "n" }, "<leader>rr", '<cmd>w<CR><cmd>exe winheight(0)/3."split" | term python %<CR>', { desc = "Run Python with result below" })
    end,
  })

-- Run Go code in terminal
vim.api.nvim_create_autocmd("FileType", {
    pattern = "go",
    callback = function()
        vim.keymap.set({ "n" }, "<leader>rl", "<cmd>w<CR><cmd>!go run %<CR>", { desc = "Run Go" })
        vim.keymap.set({ "n" }, "<leader>rk", "<cmd>w<CR><cmd>term go run %<CR>", { desc = "Run Go" })
        vim.keymap.set({ "n" }, "<leader>rr", '<cmd>w<CR><cmd>exe winheight(0)/3."split" | term go run %<CR>', { desc = "Run Go with result below" })
    end,
  })

-- auto enter insert mode
vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "*",
    callback = function()
        vim.cmd("startinsert")
    end,
})
  
