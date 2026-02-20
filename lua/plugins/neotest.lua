return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "rouge8/neotest-rust",
      "fredrikaverpil/neotest-golang",
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      {
        "nvim-treesitter/nvim-treesitter", -- Optional, but recommended
        branch = "main", -- NOTE; not the master branch!
        build = function()
          vim.cmd(":TSUpdate go")
        end,
      },
      -- Configuring the Go adapter
      {
        "fredrikaverpil/neotest-golang",
        version = "*", -- Optional, but recommended; track releases
        build = function()
          vim.system({ "go", "install", "gotest.tools/gotestsum@latest" }):wait() -- Optional, but recommended
        end,
      },
    },
    config = function()
      local config = {
        runner = "gotestsum", -- Optional, but recommended
      }
      require("neotest").setup({
        adapters = {
          require("neotest-golang")(config),
          require("neotest-rust"),
        },
      })
    end,
  },
}
