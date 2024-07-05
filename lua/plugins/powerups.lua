return {
  {
      'smoka7/hop.nvim',
      version = "*",
      opts = {
          keys = 'etovxqpdygfblzhckisuran'
      }
  },
  {
    "preservim/tagbar",
    config = function()
      vim.keymap.set('n', '<F8>', ':TagbarToggle<CR>')
    end
  },
  {
  "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {}
  }
}
