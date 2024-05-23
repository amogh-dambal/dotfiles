return {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
        require("kanagawa").setup({
            commentStyle = {
                italic = false,
            },
            keywordStyle = {
                italic = false,
            },
            theme = "wave",
        })

        vim.cmd("colorscheme kanagawa")
    end
}
