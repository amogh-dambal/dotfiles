return {
    "gbprod/substitute.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local substitute = require("substitute")
        substitute.setup()

        -- set keymaps to enable cleaner substitution
        -- this will disable the built-in 's' key char
        -- so we'll have to use 'cl'. But in general,
        -- 's' is a nuisance to me anyway since it ends up
        -- putting me in INSERT mode. 
        local keymap = vim.keymap
    
        keymap.set("n", "s", substitute.operator, { desc = "Substitute with motion" })
        keymap.set("n", "ss", substitute.line, { desc = "Substitute line" })
        keymap.set("n", "S", substitute.eol, { desc = "Substitute to end of line" })
        keymap.set("x", "s", substitute.visual, { desc = "Substitute in VISUAL mode" })
    end,
}
