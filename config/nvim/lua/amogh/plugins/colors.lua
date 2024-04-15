return {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            styles = {
                comments = {
                    italic = false,
                },
                keywords = {
                    italic = false,
                }
            },
            style = "storm",
        })

        vim.cmd("colorscheme tokyonight")
    end
}
