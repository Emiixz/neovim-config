return {
  "codota/tabnine-nvim",
  build = "./dl_binaries.sh", -- Certifique-se de baixar os binários do Tabnine
  config = function()
    -- Configurações do Tabnine
    require("tabnine").setup({
      disable_auto_comment = true,  -- Desativa o comentário automático
      accept_keymap = "<Tab>",      -- Configura a tecla para aceitar sugestões
      debounce_ms = 800,            -- Configura o tempo de debounce para sugestões
      max_num_results = 10,         -- Número máximo de sugestões
    })
  end
}
