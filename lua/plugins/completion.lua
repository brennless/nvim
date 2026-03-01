return {
    -- Autocomplete engine
    -- nvim-cmp core
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",  -- lazy-load on Insert mode
        dependencies = {
            "hrsh7th/cmp-buffer",   -- buffer completions
            "hrsh7th/cmp-path",     -- filesystem paths
            "hrsh7th/cmp-nvim-lsp", -- LSP completions
            "saadparwaiz1/cmp_luasnip", -- snippet completions
            "L3MON4D3/LuaSnip",     -- snippet engine
        },
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")

            cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
                }, {
                { name = "buffer" },
                }),
            })

            -- Optional: LSP-specific settings
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
            -- Then use these capabilities when setting up your LSP servers
        end,
    },

    -- Auto-closing brackets and quotes
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
    },
}

