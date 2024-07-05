-- TODO: add more power ups
-- HACK: hacking the world

return {
  {
    "smoka7/hop.nvim",
    version = "*",
    opts = {
      keys = "etovxqpdygfblzhckisuran",
    },
  },
  {
    "preservim/tagbar",
    config = function()
      vim.keymap.set("n", "<F8>", ":TagbarToggle<CR>")
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    config = function()
      local todo_comments = require('todo-comments')

      todo_comments.setup()

      vim.keymap.set("n", "]t", function()
        todo_comments.jump_next()
      end, { desc = "Next todo comment" })

      vim.keymap.set("n", "[t", function()
        todo_comments.jump_prev()
      end, { desc = "Previous todo comment" })
    end,
  },
}
