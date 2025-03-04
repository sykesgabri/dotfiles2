-- lazy plugin manager
require("config.lazy")

-- catppuccin
require("catppuccin").setup({
        flavour = "mocha",
})

vim.cmd.colorscheme "catppuccin"

-- 4 space tabs are the only correct tabs
vim.opt.tabstop = 4
vim.opt.expandtab = true

-- Enable line numbers and disable word wrap
vim.cmd("set number")
vim.cmd("set nowrap")
