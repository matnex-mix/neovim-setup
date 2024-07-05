return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup({})
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
    config = function()
      --require('mason-lspconfig').setup({
      --  ensure_installed = { 'lua_ls', 'tsserver' }
      --})
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require('lspconfig')
      
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })

      local opts = {}

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, opts)
    end
  }
}
