vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
vim.g.mapleader = " "

vim.opt.showcmd = true
vim.opt.cursorline = true

vim.api.nvim_set_option("clipboard", "unnamed")

vim.opt.mouse = ""

vim.o.timeout = true
vim.o.timeoutlen = 500

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- include dash in D movements
vim.opt.iskeyword:append("-")

-- open vsplits to right
vim.opt.splitright = true

-- open hsplits to below
vim.opt.splitbelow = true
