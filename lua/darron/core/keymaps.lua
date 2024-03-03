--Default
vim.g.mapleader = " "
vim.keymap.set("n", "<Leader>h", ":bprevious<CR>", { silent = true })
vim.keymap.set("n", "<Leader>l", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<Leader>q", ":bprevious<CR>:bdelete #<CR>", { silent = true })
--Nvim Tree
vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
--Debugger
vim.keymap.set("n", "<C-d>", function()
	require("dap").continue()
end)
vim.keymap.set("n", "<C-j>", function()
	require("dap").step_over()
end)
vim.keymap.set("n", "<C-k>", function()
	require("dap").step_into()
end)
vim.keymap.set("n", "<C-o>", function()
	require("dap").step_out()
end)
vim.keymap.set("n", "<C-b>", function()
	require("dap").toggle_breakpoint()
end)
vim.keymap.set("n", "<C-B>", function()
	require("dap").set_breakpoint()
end)
vim.keymap.set("n", "<C-e>", function()
	require("dap").disconnect()
end)
-- Open multiple files simultaneously
vim.api.nvim_set_keymap("n", "<leader>of", ":e file1.hpp file2.hpp file1.cpp<CR>", { noremap = true })
