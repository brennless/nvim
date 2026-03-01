vim.opt.signcolumn = "yes"
-- lua/plugins/git.lua
return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },  -- load on file open
    opts = {
        signs = {
            add          = { text = "+" },
            change       = { text = "~" },
            delete       = { text = "_" },
            topdelete    = { text = "‾" },
            changedelete = { text = "~" },
        },
        current_line_blame = true,
        current_line_blame_opts = {
            virt_text = true,
            virt_text_pos = "eol",
            delay = 500,
        },
        numhl = false,
        linehl = false,
        word_diff = false,
        watch_gitdir = {
            interval = 1000,
            follow_files = true,
        },
        update_debounce = 100,
        status_formatter = nil,
    },
}
