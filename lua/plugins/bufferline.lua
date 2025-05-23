return {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers", -- Muestra buffers, no tabs
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "Explorer"
                    } -- Ajuste si usas Neotree
                }
            }
        })
    end
}
