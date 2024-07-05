return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function ()
      require('gitsigns').setup()
    end
  },
  {
    'voldikss/vim-floaterm',
    config = function ()
      --vim.keymap.set('n', "<leader>ft", ':FloatermNew --height=0.6 --width=0.4 --wintype=float --name=floaterm1 --position=topleft --autoclose=2 powershell -NoExit -Command "cd ./"<CR>', {})
      vim.keymap.set('n', "t", ":FloatermToggle myfloat<CR>", {})
      vim.keymap.set('t', "<Esc>", "<C-\\><C-n>:q<CR>", {})
    end
  }
}
