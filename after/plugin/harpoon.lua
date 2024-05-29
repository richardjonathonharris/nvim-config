local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end)
vim.keymap.set('n', '<C-t>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set('n', '<C-q>', function() harpoon:list():select(1) end)
vim.keymap.set('n', '<C-e>', function() harpoon:list():select(2) end)
vim.keymap.set('n', '<C-r>', function() harpoon:list():select(3) end)

harpoon:extend({
    UI_CREATE = function(cx)
        vim.keymap.set('n', '<C-v>', function()
            harpoon.ui:select_menu_item({ vsplit = true })
        end, { buffer = cx.bufnr })

        vim.keymap.set('n', '<C-s>', function()
            harpoon.ui:select_menu_item({ split = true })
        end, { buffer = cx.bufnr })
    end,
})
