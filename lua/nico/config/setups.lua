-- enable python lsp
-- REQUIRED: define how to start the server

vim.lsp.config("ty", {
  cmd = { "ty", "server" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", ".git" },
  -- optional settings
  settings = {
    ty = {
      -- ty settings here
    },
  },
})

-- REQUIRED: enable it
vim.lsp.enable("ty")


-- Lua lsp
vim.lsp.enable("lua_ls")
