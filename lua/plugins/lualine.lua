return {

	{
		'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
     config = function()
      require("lualine").setup({
	        options = {
    theme = "tokyonight",
    icons_enabled = true,
    section_separators = "",
    component_separators = "|",
	globalstatus = true, -- Important for proper layout with sidebars
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff" }, -- Git status
    lualine_c = { "filename" },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = {
      "location",
      {
        function()
          return os.date("%Y-%m-%d %H:%M")
        end,
        icon = "", -- optional clock icon
      },
    },
  },
      })
    end,
}
}
