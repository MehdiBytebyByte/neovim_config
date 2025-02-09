return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<leader>t', ':Neotree filesystem reveal left<CR>', {})
    require("neo-tree").setup({
      close_if_last_window = true,
      window = {
        --position = "left",
        width = 25,
      },
    })
  end
}
