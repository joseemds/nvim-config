local gl = require 'galaxyline'

local colors = {
  bg = "#1e222a",
  line_bg = "#1e222a",
  fg = "#d8dee9",
  green = "#bbe67e",
  orange = "#ff8000",
  red = "#df8890",
  lightbg = "#282c34",
  nord = "#81a1c1",
  green_yellow = "#ebc888"
}

gl.short_line_list = {" "}

gl.section.left[1] = {
  FileIcon = {
    provider = "FileIcon",
    condition = buffer_not_empty,
    hightlight = {
      require 'galaxyline.provider_fileinfo'.get_file_icon_color,
      colors.lightbg
    }
  }
}

gl.section.left[2] = {
  ViMode = {
    provider = function()
      local alias = {
        n = "NORMAL",
        i = "INSERT",
        c = "COMMAND",
        v = "VISUAL",
        V = "VISUAL",
        [""] = "VISUAL",
        R = "REPLACE"
      }
      return alias[vim.fn.mode()]
    end,
    highlight = { colors.bg, colors.red },
    separator_highlight = { colors.red, colors.red }
  }
}
