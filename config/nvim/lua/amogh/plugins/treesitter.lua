return {
    "nvim-treesitter/nvim-treesitter",
    event = {
        "BufReadPre", "BufNewFile"
    },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        --import
        local cfgs = require("nvim-treesitter.configs")
    
        cfgs.setup({
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = {
                "awk",
                "bash",
                "c",
                "capnp",
                "comment",
                "cpp",
                "csv",
                "dockerfile",
                "git_config",
                "git_rebase",
                "gitattributes",
                "gitcommit",
                "gitignore",
                "go",
                "gomod",
                "gosum",
                "gowork",
                "java",
                "javascript",
                "json",
                "lua",
                "make",
                "markdown",
                "markdown_inline",
                "python",
                "regex",
                "rust",
                "smithy",
                "sql",
                "tmux",
                "tsv",
                "toml",
                "typescript",
                "yaml",
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        })
    end
}
