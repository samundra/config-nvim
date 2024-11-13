vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("n", "<C-K><C-T>", ":TagbarToggle<CR>", { silent = true })

-- Init FZF
vim.keymap.set("n", "<c-P>", require('fzf-lua').files, { desc = "Fzf Files" })
