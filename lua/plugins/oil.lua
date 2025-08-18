return {
  "stevearc/oil.nvim",
  opts = {
    default_file_explorer = true, -- substitui o netrw
    columns = {
      "icon", -- mostra ícones (se tiver nvim-web-devicons)
      "permissions",
      "size",
      "mtime",
    },
    view_options = {
      show_hidden = true, -- mostra arquivos ocultos
    },
    keymaps = {
      ["q"] = "actions.close", -- fechar com q
      ["<CR>"] = "actions.select", -- entrar no diretório/abrir arquivo
      ["<C-v>"] = "actions.select_vsplit", -- abrir no split vertical
      ["<C-x>"] = "actions.select_split", -- abrir no split horizontal
      ["<C-t>"] = "actions.select_tab", -- abrir em nova aba
      ["<BS>"] = "actions.parent", -- voltar para pasta anterior
      ["_"] = "actions.open_cwd", -- abrir CWD
      ["`"] = "actions.cd", -- mudar CWD
    },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Abrir Oil no diretório atual" },
  },
}

