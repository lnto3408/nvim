return {
  'nvim-lualine/lualine.nvim',
  dependenciees = {'nvim-tree/nvim-web-devicons'},
  config = function()
    require("lualine").setup({
      options = {
        theme = "gruvbox",
        -- section_seperators = '',
        -- component_separators = '',
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch','diff'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'},
      },
      tabline = {
        lualine_a = {'buffers'},
        lualine_b = {'tabs'},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
    })
  end
}
