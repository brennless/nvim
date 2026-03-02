return {
    { "nyoom-engineering/oxocarbon.nvim" },
    { "rebelot/kanagawa.nvim" },
    { "armannikoyan/rusty" },
    { "navarasu/onedark.nvim" },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            options = { 
                theme = "auto",
                component_separators = { left = "|", right = "|" },
                section_separators = { left = "", right = "" },
            }
        }
    },
    {
        "B4mbus/oxocarbon-lua.nvim",
        name = "oxocarbon",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme oxocarbon")
        end
    },
}
