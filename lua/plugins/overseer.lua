-- or register it in your overseer setup call
return {
  "stevearc/overseer.nvim",
  config = function()
    local overseer = require("overseer")
    overseer.setup()

    overseer.register_template({
      name = "go test",
      condition = {
        filetype = { "go" },
      },
      builder = function()
        return {
          cmd = { "go" },
          args = { "test" },
        }
      end,
    })
  end,
}
