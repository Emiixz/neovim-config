return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
        component_separators = { left = " ", right = " " }, -- Espaços vazios
        section_separators = { left = " ", right = " " }, -- Espaços vazios
        globalstatus = true, -- Barra única para todas as janelas
      },
      sections = {
        lualine_a = { { "mode", padding = 2 } },
        lualine_b = { { "branch", icon = "", padding = 2 } },
        lualine_c = { { "filename", padding = 2, path = 1 } },
        lualine_x = { { "encoding", padding = 2 }, { "filetype", padding = 2 } },
        lualine_y = { { "progress", padding = 2 } },
        lualine_z = { { "location", padding = 2 } },
      },
    })
  end,
}
