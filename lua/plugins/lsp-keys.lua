return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ["*"] = {
        keys = {
          {
            "gr",
            function()
              vim.lsp.buf.references()
            end,
            desc = "References (quickfix)",
            nowait = true,
          },
        },
      },
    },
  },
}
