require("oil").setup({
    default_file_explorer = true,
    columns = { "icon "},
    view_options = {
        show_hidden = true,
    },
    float = {
        padding = 6
    },
})

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
vim.keymap.set('n', '<space>pv', require('oil').toggle_float)
