
return {
  {
    "laytan/cloak.nvim",
    lazy = false,
    config = function()
      require("cloak").setup({
        cloak_character = "*",  -- Usar '*' para mascarar
        filetypes = { "lua", "python", "javascript" },  -- Aplicar apenas para arquivos Lua, Python, etc.
        highlight = "IncSearch",  -- Destacar texto mascarado com a cor IncSearch
      })
    end,
  },
}
