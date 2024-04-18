vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Lets you use J and K in visual mode to move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- lets you use J in normal mode to pull up line below and append to current
-- line without moving your cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Use Ctrl d and Ctrl u to move and keep cursor in center page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search term in center of screen when using / to search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- when pasting over a word keep the original word in buffer (i.e. don't
-- replace with the word you just destroyed

vim.keymap.set("x", "<leader>p", "\"_dP")

-- use leader y or Y to copy into system keyboard instead of vim register
-- do leader y first and then your thing
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- autoformats with leader f
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<C-(>", "<cmd>Scratch<cr>")
vim.keymap.set("n", "<C-{>", "<cmd>ScratchOpen<cr>")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
