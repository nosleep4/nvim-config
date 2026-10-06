return {
  "folke/edgy.nvim",
  opts = {
    keys = {
      ["<c-Right>"] = function(win)
        win:resize("width", 2)
      end,
      ["<c-Left>"] = function(win)
        win:resize("width", -2)
      end,
      ["<c-Up>"] = function(win)
        win:resize("height", 2)
      end,
      ["<c-Down>"] = function(win)
        win:resize("height", -2)
      end,
    },
  },
}
