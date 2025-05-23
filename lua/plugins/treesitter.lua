return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy  = false,
    main  = "nvim-treesitter.configs",
    opts  = {
        ensure_installed = {
            "bash",
            "markdown_inline",
            "regex",
            "lua",
            "luadoc",
            "python",
            "javascript",
            "typescript",
            "gdscript",
        },
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        indent = {
            enable = true,
        },
    },
}
