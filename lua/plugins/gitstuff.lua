return {
  {
    "tpope/vim-fugitive",
    cmd = { "G", "Git", "Gdiffsplit", "Gvdiffsplit", "Gwrite", "Gread", "Gremove", "Gmove", "Gstatus", "Gcommit", "Gpush", "Gpull" }
  },
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "│" },
          change = { text = "│" },
          delete = { text = "_" },
          topdelete = { text = "‾" },
          changedelete = { text = "~" },
        },
        numhl = true,
        linehl = false,
        current_line_blame = true,
      })
    end
  }
}
