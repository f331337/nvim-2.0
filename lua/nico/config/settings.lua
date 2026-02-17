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
o.colorcolumn = "80"


vim.cmd("colorscheme habamax")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", ':write<CR>')
vim.keymap.set("n", "<leader>q", ':quit!<CR>')


vim.keymap.set("n", "<leader>lf", function()
  local ft = vim.bo.filetype

  if ft == "javascript"
    or ft == "javascriptreact"
    or ft == "typescript"
    or ft == "typescriptreact"
    or ft == "html"
    or ft == "css"
 then
    vim.cmd("silent !prettier --write %")
    vim.cmd("edit!")
  else
      vim.lsp.buf.format()
  end
end, { desc = "Format (ruff / prettier)" })

vim.keymap.set('n', '<leader>b', vim.diagnostic.open_float)
