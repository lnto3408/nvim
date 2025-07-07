local keyMapper = require("utils.KeyMapper").mapKey

return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "codelldb",
      },
    },
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "gopls",
          "lua_ls",
          "vimls",
          "clangd",
          "pylsp",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local on_attach = function(client, bufnr)
        if client.server_capabilities.foldingRangeProvider then
          vim.o.foldmethod = 'expr'
          vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
        end
      end
      lspconfig.gopls.setup({ on_attach = on_attach })
      lspconfig.lua_ls.setup({ on_attach = on_attach })
      lspconfig.vimls.setup({ on_attach = on_attach })
      lspconfig.clangd.setup({ on_attach = on_attach })
      lspconfig.pylsp.setup({ on_attach = on_attach })

      -- vim.lsp.buf.hover
      -- vim.lsp.buf.definition
      -- vim.lsp.buf.code_action
      keyMapper("K", vim.lsp.buf.hover)
      keyMapper("gd", vim.lsp.buf.definition)
      keyMapper("<leader>ca", vim.lsp.buf.code_action)
    end,
  },
}
