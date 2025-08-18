return {
  "nvimdev/indentmini.nvim",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    char = "│",  -- caractere usado para indicar a indentação
    exclude = {
      filetypes = {
        "help", "lazy", "mason", "NvimTree", "alpha", "dashboard", "Trouble",
      },
    },
  },
  config = function(_, opts)
    require("indentmini").setup(opts)
  end,
}
