return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter", -- carrega quando o Neovim inicia
    config = function()
      local status_ok, alpha = pcall(require, "alpha")
      if not status_ok then
        return
      end

      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        -- pode colocar ascii art ou deixar vazio
      }

      dashboard.section.buttons.val = {
        -- botões, pode personalizar aqui
      }

      local function footer()
        return "An idiot admires complexity, a genius admires simplicity. -- Terry A. Davis"
      end

      dashboard.section.footer.val = footer()

      dashboard.opts.opts.noautocmd = true
      -- vim.cmd([[autocmd User AlphaReady echo 'ready']])

      alpha.setup(dashboard.opts)
    end,
  },
}
