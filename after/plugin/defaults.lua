local opt = vim.opt
opt.winbar = "%{%v:lua.require'home.winbar'.get_winbar()%}"
