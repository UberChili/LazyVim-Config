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
          enable_semantic_tokens = true,
          enable_document_symbols = true,
          enable_hover = true,
          enable_snippets = true,
          enable_format = true,
          enable_procedure_snippet = true,

          -- Uncomment and configure if you need custom collections
          collections = {
            { name = "core", path = "/home/andros/Odin/core" },
            { name = "base", path = "/home/andros/Odin/base" },
            { name = "vendor", path = "/home/andros/Odin/vendor" },
          },

          -- Uncomment to pass custom checker arguments
          -- checker_args = "-strict-style",
        },
      },
    },
  },
}
