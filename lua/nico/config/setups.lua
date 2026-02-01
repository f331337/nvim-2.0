-- -- python ls; uvx install ty needed
-- vim.lsp.config("ty", {
--   cmd = { "ty", "server" },
--   filetypes = { "python" },
--   root_markers = { "pyproject.toml", ".git" },
--   -- optional settings
--   settings = {
--     ty = {
--       -- ty settings here
--     },
--   },
-- })
--
-- -- REQUIRED: enable it
-- vim.lsp.enable("ty")
vim.lsp.enable("basedpyright")

vim.lsp.config("ruff", {
  cmd = { "ruff", "server" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", ".git" },
})
vim.lsp.enable("ruff")

-- Lua lsp
vim.lsp.config['lua_ls'] = {
  -- Command and arguments to start the server.
  cmd = { 'lua-language-server' },
  -- Filetypes to automatically attach to.
  filetypes = { 'lua' },
  -- Sets the "workspace" to the directory where any of these files is found.
  -- Files that share a root directory will reuse the LSP server connection.
  -- Nested lists indicate equal priority, see |vim.lsp.Config|.
  root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
  -- Specific settings to send to the server. The schema is server-defined.
  -- Example: https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { "vim" }, }
    }
  }
}

vim.lsp.enable({ "lua_ls" })


-- ts_ls
vim.lsp.config("ts_ls", {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
  },
  root_markers = { "package.json", "tsconfig.json", ".git" },
})
vim.lsp.enable("ts_ls")

-- Elixir Language Server (ElixirLS)
vim.lsp.config("elixirls", {
  cmd = { "elixir-ls" },
  filetypes = { "elixir", "eelixir", "heex" },
  root_markers = { "mix.exs", ".git" },
})

vim.lsp.enable("elixirls")

vim.api.nvim_create_autocmd('FileType', {
  pattern = { "elixir", "eelixir", "heex" },
  callback = function() vim.treesitter.start() end,
})



-- go lsp
vim.lsp.config("gopls", {
  cmd = { "gopls" },
  filetypes = {
    "go"
  },
  root_markers = { "go.work", "go.mod", ".git/" },
})
vim.lsp.enable("gopls")
