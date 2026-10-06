-- lua/plugins/colorscheme.lua
return {
  -- Override the built-in tokyonight plugin specifications
  {
    "folke/tokyonight.nvim",
    lazy = true, -- LazyVim handles loading this automatically
    opts = {
      style = "moon",
      transparent = false, -- Enables transparent backgrounds
      styles = {
        sidebars = "dark",
        floats = "dark",
      },
      -- You can still use the callback functions directly inside opts
    },
  },
}
