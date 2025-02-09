--vim.cmd("set expandtab")
--vim.cmd("set tabstop=2")
--vim.cmd("set softtabstop=2")
--vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.cmd("set rnu") -- for relative number
vim.cmd("set clipboard+=unnamed,unnamedplus")

-- Enable mouse mode
vim.opt.mouse = "a"

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

--Hhow new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Display whitespaces
--vim.opt.list = true
--vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live
vim.opt.inccommand = "split"

-- Show which line the cursor is on && Minimal number of screen lines
vim.opt.cursorline = true
vim.opt.scrolloff = 10

vim.keymap.set({ "n", "v" }, "<leader>w", ":w<CR>", {})
vim.keymap.set({ "n", "v" }, "<leader>q", ":q<CR>", {})
vim.keymap.set({ "n", "v" }, "<leader>1q", ":q!<CR>", {})
vim.keymap.set({ "n", "v" }, "<leader>x", ":x<CR>", {})
vim.keymap.set({ "n", "i", "v" }, "kj", "<ESC>", {})
