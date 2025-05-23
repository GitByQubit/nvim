return {
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                vim.keymap.set("n", 'mm', '<Cmd>Dashboard<Cr>')
                -- config
            }
        end,
        dependencies = { { 'nvim-tree/nvim-web-devicons' } }
    }

}
