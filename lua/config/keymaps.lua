vim.keymap.set("n", "<leader>fp", function()
  Snacks.picker.projects()
end, { desc = "Projects" })

if vim.g.neovide then
  local function copy()
    vim.cmd([[normal! "+y]])
  end
  local function paste()
    vim.api.nvim_paste(vim.fn.getreg("+"), true, -1)
  end

  vim.keymap.set("v", "<C-c>", copy, { silent = true, desc = "Copy to system clipboard" })
  vim.keymap.set({ "n", "i", "v", "c", "t" }, "<C-v>", paste, { silent = true, desc = "Paste from system clipboard" })
  vim.keymap.set("i", "<S-CR>", "<C-o>o", { desc = "New line below and move to it" })
  vim.keymap.set("i", "<C-S-CR>", "<C-o>O", { desc = "New line above and move to it" })
  vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent selection" })
  vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Unindent selection" })
end
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
