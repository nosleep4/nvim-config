return {
  -- Treesitter grammar for C#
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "c_sharp" } },
  },

  -- Mason: install Roslyn's language server binary + formatter
  {
    "mason-org/mason.nvim",
    opts = {
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry", -- required for the "roslyn" package
      },
      ensure_installed = { "roslyn", "csharpier" },
    },
  },

  -- roslyn.nvim: the actual LSP client/config
  {
    "seblyng/roslyn.nvim",
    ft = { "cs", "razor" },
    opts = {},
  },

  -- Formatting via conform, using csharpier
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        cs = {},
        default_format_opts = { lsp_format = "prefer" },
      },
    },
  },
}
