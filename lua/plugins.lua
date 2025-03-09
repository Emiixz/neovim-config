return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",      -- Completão do LSP
      "hrsh7th/cmp-buffer",        -- Completão do buffer atual
      "hrsh7th/cmp-path",          -- Completão de caminhos de arquivos
      "hrsh7th/cmp-cmdline",       -- Completão para a linha de comando
      "saadparwaiz1/cmp_luasnip",  -- Completão para snippets (opcional, se você usar luasnip)
    },
    config = function()
      local cmp = require('cmp')

      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body) -- Se você estiver usando luasnip para snippets
          end,
        },
        mapping = {
          ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
          ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
          ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
          ['<C-y>'] = cmp.config.disable, -- Desabilita uma tecla padrão
          ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(), -- Aborta a completação no modo de inserção
            c = cmp.mapping.close(), -- Fecha a completação no modo de comando
          }),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirma a seleção
        },
        sources = cmp.config.sources({
          { name = 'nvim_lsp' }, -- Completão do LSP
          { name = 'buffer' },   -- Completão do buffer atual
          { name = 'path' },     -- Completão de caminhos de arquivos
        })
      })

      -- Configuração de completação para a linha de comando
      cmp.setup.cmdline(':', {
        sources = cmp.config.sources({
          { name = 'path' }
        }, {
          { name = 'cmdline' }
        })
      })
    end,
  },
}
