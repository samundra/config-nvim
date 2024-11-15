vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("n", "<C-K><C-T>", ":TagbarToggle<CR>", { silent = true })

-- Init FZF
vim.keymap.set("n", "<C-P>", require('fzf-lua').files, { desc = "Fzf Files" })

-- NerdTree shortcuts
vim.keymap.set("n", "<leader>n", ":NERDTreeFocus<CR>", { silent = true })
vim.keymap.set("n", "<C-T>", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<C-f>", ":NERDTreeFind<CR>")
