return {
    {
        "kdheepak/lazygit.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    {
        "tpope/vim-fugitive",
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                current_line_blame = true,
            })
        end,
    },
    {
        "sindrets/diffview.nvim",
        config = function()
            require("diffview").setup({
                keymaps = {
                    view = {
                        {
                            "n",
                            "q",
                            function()
                                vim.cmd(":DiffviewClose")
                            end,
                            { desc = "Close the diff" },
                        },
                    },
                    file_panel = {
                        {
                            "n",
                            "q",
                            function()
                                vim.cmd(":DiffviewClose")
                            end,
                            { desc = "Close the diff" },
                        },
                    },
                    file_history_panel = {
                        {
                            "n",
                            "q",
                            function()
                                vim.cmd(":DiffviewClose")
                            end,
                            { desc = "Close the diff" },
                        },
                    },
                },
            })
        end,
    },
}
