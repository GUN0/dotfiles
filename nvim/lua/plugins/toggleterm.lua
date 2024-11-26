return {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup{
                size = 60,
                open_mapping = [[<C-\>]],
                shade_filetypes = {},
                shade_terminals = true,
                shading_factor = '1',
                start_in_insert = true,
                persist_size = false,
                insert_mappings = true,
                direction = 'vertical',
                close_on_exit = true,
                shell = vim.o.shell,
                float_opts = {
                    border = 'single',
                    width = 60,
                    height = 100,
                    winblend = 3,
                    highlights = {
                        border = "Normal",
                        background = "Normal",
                    }
                },
            }
        end,
        lazy = true,
}
