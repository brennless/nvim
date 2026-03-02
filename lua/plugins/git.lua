vim.opt.signcolumn = "yes:1"

-- lua/plugins/git.lua
return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("gitsigns").setup({
        signs = {
          add          = { text = "+" },
          change       = { text = "~" },
          delete       = { text = "-" },
          topdelete    = { text = "-" },
          changedelete = { text = "-" },
          untracked    = { text = "?" },
        },
        signs_staged = {
          add          = { text = "+" },
          change       = { text = "~" },
          delete       = { text = "-" },
          topdelete    = { text = "-" },
          changedelete = { text = "-" },
          untracked    = { text = "?" },
        },

        signs_staged_enable = true,
        signcolumn = true,
        numhl = false,
        linehl = false,
        word_diff = false,

        watch_gitdir = { follow_files = true },
        auto_attach = true,
        attach_to_untracked = false,

        current_line_blame = true,

        sign_priority = 6,
        update_debounce = 100,
        max_file_length = 40000,

        preview_config = {
          style = "minimal",
          relative = "cursor",
          row = 0,
          col = 1,
        },
      })
    end,
  },
}
