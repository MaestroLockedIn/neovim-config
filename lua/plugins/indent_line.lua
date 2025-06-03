return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
    config = function() 
   		require("ibl").setup({
  indent = { char = "│" },
  exclude = {
    filetypes = {
      "dashboard", "neo-tree", "lazy", "help", "startify", "alpha", "Trouble", "toggleterm"
    },
  },
}) 
		end
  },
}

