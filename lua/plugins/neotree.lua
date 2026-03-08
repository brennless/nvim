return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", -- facultatif mais recommandé
        },
        keys = {
            {
                "<C-b>",
                function()
                    require("neo-tree.command").execute({ toggle = true })
                end,
                desc = "Toggle Neo-tree",
            },
        },
        config = function()
            require("neo-tree").setup(
            {
                close_if_last_window = true, 
                enable_git_status = true,
                enable_diagnostics = true,
                default_component_configs = {
                    indent = {
                        indent_size = 2,
                        padding = 1,
                        with_markers = true,
                        indent_marker = "│",
                        last_indent_marker = "└",
                        highlight = "NeoTreeIndentMarker",
                        with_expanders = true, -- Affiche les flèches pour les dossiers
                        expander_collapsed = "",
                        expander_expanded = "",
                        expander_highlight = "NeoTreeExpander",
                    },
                    icon = {
                        folder_closed = "",
                        folder_open = "",
                        folder_empty = "",
                        default = "",
                        highlight = "NeoTreeFileIcon"
                    },
                    modified = {
                        symbol = "*",
                        highlight = "NeoTreeModified",
                    },
                    name = {
                        trailing_slash = false,
                        use_git_status_colors = true,
                        highlight = "NeoTreeFileName",
                    },
                    git_status = {
                        symbols = {
                            -- Icônes Git modernes et minimalistes
                            added     = "+",
                            modified  = "~",
                            deleted   = "-",
                            renamed   = "R",
                            untracked = "?",
                            ignored   = "I",
                            unstaged  = "U",
                            staged    = "S",
                            conflict  = "",
                        }
                    },
                },
            })
        end,
        lazy = false, 
    }
}

