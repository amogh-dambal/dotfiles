return {
    "folke/todo-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local todo_comments = require("todo-comments")

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "]t", function()
            todo_comments.jump_next()
        end, { desc = "Move to next TODO comment" })
        keymap.set("n", "[t", function()
            todo_comments.jump_prev()
        end, { desc = "Move to previous TODO comment" })

        todo_comments.setup()
    end
}
