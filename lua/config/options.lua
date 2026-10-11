if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h13"
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_cursor_animation_length = 0.08
  vim.g.neovide_cursor_trail_size = 0.5
  vim.g.neovide_hide_mouse_when_typing = false
  vim.g.neovide_padding_top = 4
  vim.g.neovide_padding_bottom = 4
  vim.g.neovide_padding_left = 6
  vim.g.neovide_padding_right = 6
  vim.g.neovide_theme = "auto"
  vim.g.neovide_confirm_quit = true
end

vim.g.autoformat = false
-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
