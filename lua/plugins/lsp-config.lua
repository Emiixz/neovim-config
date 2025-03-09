return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")

      -- Configuração para TypeScript/JavaScript
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })
      -- Configuração para Ruby
      lspconfig.solargraph.setup({
        capabilities = capabilities,
      })

      -- Configuração para HTML (opcional, já presente no seu código)
      lspconfig.html.setup({
        capabilities = capabilities,
      })
   -- Configuração para css 
      lspconfig.cssls.setup({
        capabilities = capabilities,
      })

      -- Configuração para Lua
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }, -- Ignorar erros relacionados ao 'vim' global
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true), -- Configuração para o workspace do Neovim
            },
          },
        },
      })

      -- Configuração para Python
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })

      -- Configuração para Java
      lspconfig.jdtls.setup({
        capabilities = capabilities,
      })

      -- Configuração para C/C++
      lspconfig.clangd.setup({
        capabilities = capabilities,
      })

      -- Atalhos para funções do LSP
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
