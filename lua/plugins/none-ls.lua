return {
    {
        "nvimtools/none-ls.nvim",
        config = function()
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    -- lua
                    null_ls.builtins.formatting.stylua,
                    -- js/ts
                    null_ls.builtins.formatting.prettier,
                    null_ls.builtins.diagnostics.eslint_d,
                },
            })
        end,
    },
    {
        "jay-babu/mason-null-ls.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "nvimtools/none-ls.nvim",
        },
        config = function()
            require("mason-null-ls").setup({
                ensure_installed = {
                    -- lua
                    "stylua",
                    -- js/ts
                    "prettier",
                    "eslint_d",
                },
            })
        end,
    },
}
