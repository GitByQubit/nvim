--plugins/telescope.lua:
return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        -- or                              , branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },

        config = function()
            require('telescope').setup {}
            vim.keymap.set("n", "<space>ff", require('telescope.builtin').find_files)
            vim.keymap.set("n", "<space>en", function()
                local opts = require('telescope.themes').get_ivy({
                    cwd = vim.fn.stdpath("config"),
                })
                require('telescope.builtin').find_files(opts)
            end)
            vim.keymap.set("n", "<space>fb", require('telescope.builtin').buffers)

            vim.keymap.set("n", "<space>fg", require('telescope.builtin').live_grep)
        end
    }
}
