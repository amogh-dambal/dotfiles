return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            -- lsps for mason to install
            ensure_installed = {
                "tsserver",
                "pyright",
                "rust_analyzer",
                "jdtls",
                "gopls",
                "clangd",
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "gofumpt",
                "goimports",
                "gomodifytags",
                "impl",
                "delve",
                "prettier",
                "stylua",
                "isort",
                "black",
                "pylint",
                "eslint_d",
            }
        })
    end,
}
