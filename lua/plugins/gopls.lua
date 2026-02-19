-- add pyright to lspconfig
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = {
        filetypes = {
          "go",
          "gomod",
          "gowork",
          "gotmpl",
        },
      },
    },
  },
}
