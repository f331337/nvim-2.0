local global = vim.g
local o = vim.opt

o.number = true
o.clipboard = "unnamedplus"
o.syntax = "on"
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.encoding = "UTF-8"
o.ruler = true
o.mouse = "a"
o.title = true
o.hidden = true
o.ttimeoutlen = 0
o.wildmenu = true
o.showcmd = true
o.showmatch = true
o.inccommand = "split"
o.splitright = true
o.splitbelow = true
o.termguicolors = true
o.swapfile = false
o.signcolumn = "yes"

vim.cmd("colorscheme habamax")
vim.api.nvim_set_hl(0, "Normal",      { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC",    { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn",  { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", ':write<CR>')
vim.keymap.set("n", "<leader>q", ':quit!<CR>')
vim.keymap.set('n', "<leader>lf", vim.lsp.buf.format)
