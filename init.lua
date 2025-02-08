-- Lazy.nvim setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print("Installing lazy.nvim...")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.opt.undofile = true

require("lazy").setup({
  -- File Explorer
  {
       "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
  config = function()
		--vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
    require("neo-tree").setup({
      close_if_last_window = true,
      window = {
        --position = "left",
        width = 30,
      },
    })
	end,
  },

  -- Fuzzy Finder
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup()
    end,
  },

  -- Status Line
  {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({ options = { theme = "gruvbox" } })
    end,
  },
  -- Colorscheme
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme gruvbox")
    end,
  },
})

-- Basic Settings
vim.opt.number = true            -- Show line numbers
vim.opt.relativenumber = true    -- Relative line numbers
vim.opt.expandtab = true         -- Use spaces instead of tabs
vim.opt.shiftwidth = 4           -- Indentation width
vim.opt.tabstop = 4              -- Tab width
vim.opt.smartindent = true       -- Auto-indent new lines
vim.opt.wrap = false             -- Disable line wrapping
vim.opt.cursorline = true        -- Highlight current line
vim.opt.termguicolors = true     -- Enable true colors
vim.opt.ignorecase = true        -- Ignore case in search
vim.opt.smartcase = true         -- Smart case searching
vim.opt.splitbelow = true        -- Horizontal splits go below
vim.opt.splitright = true        -- Vertical splits go right

-- Key Mappings
vim.g.mapleader = " " -- Set leader key to Space
vim.keymap.set("n", "<Leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<Leader>f", ":Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<Leader>g", ":Telescope live_grep<CR>", { desc = "Search in files" })
vim.keymap.set("n", "<Leader>b", ":Telescope buffers<CR>", { desc = "Switch buffers" })
vim.keymap.set("n", "<Leader>h", ":split<CR>", { desc = "Horizontal split" })
vim.keymap.set("n", "<Leader>v", ":vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>t", ":Neotree filesystem reveal left<CR>", {})
-- Auto-commands
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.lsp.buf.format({ async = true })
  end,
})

