return {
  {
    "bluz71/vim-moonfly-colors",
    config = function()
      -- Ativa a transparência no Moonfly
      vim.g.moonflyTransparent = true

      -- Define o esquema de cores
      vim.o.background = "dark"
      vim.cmd.colorscheme("moonfly")

      -- Torna o fundo transparente de forma segura
      local transparent_groups = {
        "Normal", "NormalNC", "NormalFloat",
        "VertSplit", "StatusLine",
        "NvimTreeNormal", "NeoTreeNormal",
        "TelescopeNormal", "TelescopePromptNormal",
        "TelescopePreviewNormal", "TelescopeResultsNormal",
        "TelescopeBorder", "TelescopePromptBorder",
        "TelescopePreviewBorder", "TelescopeResultsBorder"
      }

      for _, group in ipairs(transparent_groups) do
        pcall(vim.api.nvim_set_hl, 0, group, { guibg = "NONE", ctermbg = "NONE" })
      end
    end
  }
}
