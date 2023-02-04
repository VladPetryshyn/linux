require('lualine').setup {
  options = {
    theme = 'material-nvim',
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'branch' },
    lualine_c = { 'fileformat' },
    lualine_x = {},
    lualine_y = { 'diagnostics', 'diff' },
    lualine_z = {
      { 'filename', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
