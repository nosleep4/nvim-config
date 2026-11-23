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
  vim.keymap.set("x", "<Tab>", ">gv", { desc = "Indent selection" })
  vim.keymap.set("x", "<S-Tab>", "<gv", { desc = "Unindent selection" })
  vim.keymap.set("n", "<A-c>", '"_ciw', { desc = "Change word (no yank)" })

  --change delete/change to not yank!
  vim.keymap.set({ "n", "x" }, "d", '"_d', { desc = "Delete without yanking" })
  vim.keymap.set("n", "dd", '"_dd', { desc = "Delete line without yanking" })
  vim.keymap.set("n", "D", '"_D', { desc = "Delete to end of line without yanking" })
  vim.keymap.set({ "n", "x" }, "c", '"_c', { desc = "Change without yanking" })

  for _, prefix in ipairs({ "", "2-", "3-", "4-" }) do
    -- plain back/forward: jumplist
    vim.keymap.set("n", "<" .. prefix .. "X1Mouse>", "<C-o>", { desc = "Jump back" })
    vim.keymap.set("n", "<" .. prefix .. "X2Mouse>", "<C-i>", { desc = "Jump forward" })

    -- Ctrl + back/forward: switch buffers
    vim.keymap.set("n", "<C-" .. prefix .. "X1Mouse>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
    vim.keymap.set("n", "<C-" .. prefix .. "X2Mouse>", "<cmd>bnext<cr>", { desc = "Next buffer" })
  end
  -- AutoRefesh Opened projects buffers
  vim.keymap.set("n", "<leader>bR", function()
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.bo[buf].buflisted and not vim.api.nvim_buf_is_loaded(buf) then
      vim.fn.bufload(buf)
    end
  end
  pcall(function()
    require("neo-tree.sources.manager").refresh("buffers")
  end)
  end, { desc = "Load and refresh buffer tree" })

end
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
