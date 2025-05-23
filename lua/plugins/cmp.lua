return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-git",
        "hrsh7th/cmp-cmdline",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        {
            "windwp/nvim-autopairs",
            event = "InsertEnter",
            config = function()
                -- Inicializo el auto cierre de (){}
                require('nvim-autopairs').setup({
                    check_ts = true,
                    enable_check_bracket_line = false
                })
            end
        }
    },
    event = "VeryLazy",
    main = "config.plugins.cmp",
    config = true,
}
