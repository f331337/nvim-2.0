return {
    'nvim-telescope/telescope.nvim', version = '0.2.1',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
      keys = {
    -- disable the keymap to grep files
    { "<leader>/",  false },
    -- change a keymap
    { "<leader>tf", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>tg", "<cmd>Telescope live_grep<cr>", desc = "Find Word" },
    { "<leader>ts", "<cmd>Telescope grep_string<cr>", desc = "Find word (buffer)" },
    {
      "<leader>tp",
      function() 
        require("telescope.builtin").find_files({ 
          cwd = require("lazy.core.config").options.root 
        }) 
      end,
      desc = "Find Plugin File",
}}}
