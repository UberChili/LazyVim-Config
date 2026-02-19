-- add ols to lspconfig
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ols = {
        filetypes = {
          "odin",
        },
        init_options = {
          -- Enable/disable features as needed
          enable_semantic_tokens = false,
          enable_document_symbols = true,
          enable_hover = true,
          enable_snippets = true,
          enable_format = true,
          enable_procedure_snippet = true,

          -- Uncomment and configure if you need custom collections
          -- collections = {
          --   { name = "shared", path = vim.fn.expand('$HOME/odin-lib') }
          -- },

          -- Uncomment to pass custom checker arguments
          -- checker_args = "-strict-style",
        },
      },
    },
  },
}
