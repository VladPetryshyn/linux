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
  green = "#988971",
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
  line_bg = "#ebdbb2",
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
    highlight = {gruvbox_light.blue,gruvbox_light.bg}
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {n = gruvbox_light.red, i = gruvbox_light.green,v=gruvbox_light.blue,
                          [''] = gruvbox_light.blue,V=gruvbox_light.blue,
                          c = gruvbox_light.magenta,no = gruvbox_light.red,s = gruvbox_light.orange,
                          S=gruvbox_light.orange,[''] = gruvbox_light.orange,
                          ic = gruvbox_light.yellow,R = gruvbox_light.violet,Rv = gruvbox_light.violet,
                          cv = gruvbox_light.red,ce=gruvbox_light.red, r = gruvbox_light.cyan,
                          rm = gruvbox_light.cyan, ['r?'] = gruvbox_light.cyan,
                          ['!']  = gruvbox_light.red,t = gruvbox_light.red}
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()] ..' guibg='..gruvbox_light.bg)
      return '𝝺  '
    end,
  },
}

gls.left[6] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' ',
    separator_highlight = {'NONE',gruvbox_light.bg},
    highlight = {gruvbox_light.fg,gruvbox_light.bg},
  },
}

gls.left[7] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {'NONE',gruvbox_light.bg},
    highlight = {gruvbox_light.fg,gruvbox_light.bg,'bold'},
  }
}

gls.left[8] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {gruvbox_light.red,gruvbox_light.bg}
  }
}
gls.left[9] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {gruvbox_light.yellow,gruvbox_light.bg},
  }
}

gls.left[10] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = {gruvbox_light.cyan,gruvbox_light.bg},
  }
}

gls.left[11] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {gruvbox_light.blue,gruvbox_light.bg},
  }
}

gls.mid[1] = {
  FileName = {
    provider = 'FileName',
    condition = condition.buffer_not_empty,
    highlight = {gruvbox_light.fg,gruvbox_light.bg,'bold'}
  }
}
gls.mid[2] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,gruvbox_light.bg},
  },
}

gls.right[1] = {
  FileEncode = {
    provider = 'FileEncode',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE',gruvbox_light.bg},
    highlight = {gruvbox_light.green,gruvbox_light.bg,'bold'}
  }
}

gls.right[2] = {
  FileFormat = {
    provider = 'FileFormat',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE',gruvbox_light.bg},
    highlight = {gruvbox_light.green,gruvbox_light.bg,'bold'}
  }
}

gls.right[3] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = condition.check_git_workspace,
    separator = '',
    separator_highlight = {'NONE',gruvbox_light.bg},
    highlight = {gruvbox_light.violet,gruvbox_light.bg,'bold'},
  }
}

gls.right[4] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    highlight = {gruvbox_light.violet,gruvbox_light.bg,'bold'},
  }
}

gls.right[5] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {gruvbox_light.green,gruvbox_light.bg},
  }
}
gls.right[6] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = ' 柳',
    highlight = {gruvbox_light.orange,gruvbox_light.bg},
  }
}
gls.right[7] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {gruvbox_light.red,gruvbox_light.bg},
  }
}

gls.right[8] = {
  RainbowBlue = {
    provider = function() return ' ▊' end,
    highlight = {gruvbox_light.blue,gruvbox_light.bg}
  },
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator_highlight = {'NONE',gruvbox_light.bg},
    highlight = {gruvbox_light.blue,gruvbox_light.bg,'bold'}
  }
}

gls.short_line_left[2] = {
  SFileName = {
    provider =  'SFileName',
    condition = condition.buffer_not_empty,
    highlight = {gruvbox_light.fg,gruvbox_light.bg,'bold'}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    highlight = {gruvbox_light.fg,gruvbox_light.bg}
  }
}
