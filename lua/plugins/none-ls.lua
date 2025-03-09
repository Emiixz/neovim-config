return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- Formatação
        null_ls.builtins.formatting.stylua,         -- Lua
        null_ls.builtins.formatting.prettier,-- JavaScript, TypeScript, CSS, HTML, JSON, etc.       
        null_ls.builtins.formatting.stylelint,
        null_ls.builtins.formatting.rubocop,        -- Ruby
        null_ls.builtins.formatting.clang_format,   -- C, C++
        null_ls.builtins.formatting.black,          -- Python
        null_ls.builtins.formatting.gofmt,          -- Go (Golang)
        null_ls.builtins.formatting.google_java_format, -- Java

        -- Diagnóstico
        null_ls.builtins.diagnostics.erb_lint,  -- ERB (Ruby)
        null_ls.builtins.diagnostics.rubocop,   -- Ruby
        null_ls.builtins.diagnostics.mypy,      -- Python (substitui flake8)
        null_ls.builtins.diagnostics.cppcheck,  -- C, C++
        null_ls.builtins.diagnostics.golangci_lint, -- Go (Golang)
        null_ls.builtins.diagnostics.checkstyle, -- Java
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
