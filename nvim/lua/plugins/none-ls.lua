return {
	"nvimtools/none-ls.nvim",
	config = function()
		-- print("none-ls is being configured!") -- Debug print
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Lua formatter
				null_ls.builtins.formatting.stylua,

				-- C/C++ formatters
				null_ls.builtins.formatting.clang_format, -- Clang-format for C/C++
				null_ls.builtins.formatting.uncrustify, -- Uncrustify for C/C++
				null_ls.builtins.formatting.astyle, -- Artistic Style for C/C++
			},
		})

		-- Keybinding to format the current buffer
		vim.keymap.set("n", "<leader>cf", "<cmd>lua vim.lsp.buf.format()<cr>", { desc = "Format code" })
	end,
}
