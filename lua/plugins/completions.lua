return {
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
    priority = 100,
    dependencies = {
      "onsails/lspkind.nvim",       -- Ícones para autocompletar
      "hrsh7th/cmp-nvim-lsp",       -- Integração com LSP
      "hrsh7th/cmp-path",           -- Autocompletar caminhos de arquivos
      "hrsh7th/cmp-buffer",         -- Autocompletar baseado no buffer atual
      "L3MON4D3/LuaSnip",           -- Snippets
      "saadparwaiz1/cmp_luasnip",   -- Integração com snippets
      "rafamadriz/friendly-snippets", -- Snippets prontos

      -- Plugins necessários para Tabnine funcionar
      "tzachar/cmp-tabnine",
      "codota/tabnine-nvim",
    },
    config = function()
      local cmp = require("cmp")
      local tabnine = require("cmp_tabnine.config")

      -- Carregar snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      -- Configuração do Tabnine
      tabnine:setup({
        max_lines = 1000,
        max_num_results = 10,
        sort = true,
      })

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" }, -- LSP
          { name = "luasnip" },  -- Snippets
          { name = "buffer" },   -- Buffer atual
          { name = "path" },     -- Autocompletar caminhos
          { name = "cmp_tabnine", priority = 100 }, -- Adiciona Tabnine como fonte
        }),
      })
    end,
  },
}
