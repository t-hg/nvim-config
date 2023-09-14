return {
  "Mofiqul/dracula.nvim",
  config = function()
    local theme = require("dracula")
    theme.setup({
      colors = {
        bg = "#282C34",
        black = "#21222C",
        bright_blue = "#61AFEF",
        bright_cyan = "#56B6C2",
        bright_green = "#98C379",
        bright_magenta = "#FF92DF",
        bright_red = "#E06C75",
        bright_white = "#DCDFE4",
        bright_yellow = "#E5C07B",
        comment = "#6272A4",
        cyan = "#56B6C2",
        fg = "#F8F8F2",
        green = "#98C379",
        gutter_fg = "#4B5263",
        menu = "#21222C",
        nontext = "#4B5263",
        orange = "#FFB86C",
        pink = "#FF79C6",
        purple = "#C678DD",
        red = "#E06C75",
        selection = "#44475A",
        visual = "#3E4452",
        white = "#DCDFE4",
        yellow = "#E5C07B",
      },
    })
    theme.load()
  end,
}
