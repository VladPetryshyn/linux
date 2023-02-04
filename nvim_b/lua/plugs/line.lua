local gl = require('galaxyline')
local condition = require('galaxyline.condition')
local gls = gl.section
gl.short_line_list = {'NvimTree','vista','dbui','packer'}


local gruvbox_dark = {
  bg = "#282828",
  fg = "#ebdbb2",
  line_bg = "#1d2021",
  fg_green = "#b8bb26",
  yellow = "#fabd2f",
  cyan = "#83a598",
  darkblue = "#458588",
  green = "#98971a",
  orange = "#fe8019",
  purple = "#b16286",
  grey = "#a89984",
  blue = "#458588",
  red = "#cc241d",
  magenta = "#d3869b",
}

local gruvbox_light = {
  bg = "#fbf1c7",
  fg = "#3c3836",
  line_bg = "#fbf1c7",
  fg_green = "#79740e",
  yellow = "#d79921",
  cyan = "#458588",
  darkblue = "#076678",
  green = "#98971a",
  orange = "#d65d0e",
  purple = "#b16286",
  grey = "#928374",
  blue = "#076678",
  red = "#9d0006",
  magenta = "#8f3f71",
}
gls.left[1] = {
  RainbowRed = {
    provider = function() return '▊ ' end,
    highlight = {gruvbox_dark.blue,gruvbox_dark.bg}
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {n = gruvbox_dark.red, i = gruvbox_dark.green,v=gruvbox_dark.blue,
                          [''] = gruvbox_dark.blue,V=gruvbox_dark.blue,
                          c = gruvbox_dark.magenta,no = gruvbox_dark.red,s = gruvbox_dark.orange,
                          S=gruvbox_dark.orange,[''] = gruvbox_dark.orange,
                          ic = gruvbox_dark.yellow,R = gruvbox_dark.violet,Rv = gruvbox_dark.violet,
                          cv = gruvbox_dark.red,ce=gruvbox_dark.red, r = gruvbox_dark.cyan,
                          rm = gruvbox_dark.cyan, ['r?'] = gruvbox_dark.cyan,
                          ['!']  = gruvbox_dark.red,t = gruvbox_dark.red}
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()] ..' guibg='..gruvbox_dark.bg)
      return '𝝺  '
    end,
  },
}

gls.left[6] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' ',
    separator_highlight = {'NONE',gruvbox_dark.bg},
    highlight = {gruvbox_dark.fg,gruvbox_dark.bg},
  },
}

gls.left[7] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {'NONE',gruvbox_dark.bg},
    highlight = {gruvbox_dark.fg,gruvbox_dark.bg,'bold'},
  }
}

gls.left[8] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {gruvbox_dark.red,gruvbox_dark.bg}
  }
}
gls.left[9] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {gruvbox_dark.yellow,gruvbox_dark.bg},
  }
}

gls.left[10] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = {gruvbox_dark.cyan,gruvbox_dark.bg},
  }
}

gls.left[11] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {gruvbox_dark.blue,gruvbox_dark.bg},
  }
}

gls.mid[1] = {
  FileName = {
    provider = 'FileName',
    condition = condition.buffer_not_empty,
    highlight = {gruvbox_dark.fg,gruvbox_dark.bg,'bold'}
  }
}
gls.mid[2] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,gruvbox_dark.bg},
  },
}

gls.right[1] = {
  FileEncode = {
    provider = 'FileEncode',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE',gruvbox_dark.bg},
    highlight = {gruvbox_dark.green,gruvbox_dark.bg,'bold'}
  }
}

gls.right[2] = {
  FileFormat = {
    provider = 'FileFormat',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE',gruvbox_dark.bg},
    highlight = {gruvbox_dark.green,gruvbox_dark.bg,'bold'}
  }
}

gls.right[3] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = condition.check_git_workspace,
    separator = '',
    separator_highlight = {'NONE',gruvbox_dark.bg},
    highlight = {gruvbox_dark.violet,gruvbox_dark.bg,'bold'},
  }
}

gls.right[4] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    highlight = {gruvbox_dark.violet,gruvbox_dark.bg,'bold'},
  }
}

gls.right[5] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {gruvbox_dark.green,gruvbox_dark.bg},
  }
}
gls.right[6] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = ' 柳',
    highlight = {gruvbox_dark.orange,gruvbox_dark.bg},
  }
}
gls.right[7] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {gruvbox_dark.red,gruvbox_dark.bg},
  }
}

gls.right[8] = {
  RainbowBlue = {
    provider = function() return ' ▊' end,
    highlight = {gruvbox_dark.blue,gruvbox_dark.bg}
  },
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator_highlight = {'NONE',gruvbox_dark.bg},
    highlight = {gruvbox_dark.blue,gruvbox_dark.bg,'bold'}
  }
}

gls.short_line_left[2] = {
  SFileName = {
    provider =  'SFileName',
    condition = condition.buffer_not_empty,
    highlight = {gruvbox_dark.fg,gruvbox_dark.bg,'bold'}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    highlight = {gruvbox_dark.fg,gruvbox_dark.bg}
  }
}
