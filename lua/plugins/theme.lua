return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('tokyonight').setup {
        styles = 'night',
        transparent = true,
        terminal_colors = true,
      }
      vim.cmd [[colorscheme tokyonight]]
    end,
    opts = {},
  },
}
