
return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.gopls.setup({
				capabilities = capabilities,
			})

			lspconfig.clangd.setup({
				capabilities = capabilities,
			})

			lspconfig.intelephense.setup({
				capabilities = capabilities,
			})

			-- OmniSharp com suporte estendido
			local omnisharp_extended = require("omnisharp_extended")

			lspconfig.omnisharp.setup({
				cmd = { "omnisharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
				capabilities = capabilities,
				enable_editorconfig_support = true,
				enable_roslyn_analyzers = true,
				organize_imports_on_format = true,
				enable_import_completion = true,
				handlers = {
					["textDocument/definition"] = omnisharp_extended.handler,
				},
			})

			-- Mapeamentos de teclas
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
	{
		"Hoffs/omnisharp-extended-lsp.nvim",
	},
}

