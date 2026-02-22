return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- use latest release, remove to use latest commit
  ft = "markdown",
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in the next major release
    workspaces = {
      {
        -- Remember to configure this properly for each machine
        -- There must be a way to make a little script to detect the machine
        -- and correctly set the directory
        name = "Vault",
        -- Fedora 43 Desktop
        -- path = "/home/andros/Nextcloud/Vault",
        -- Fedora 42 Fedora Asahi Remix
        -- path = "/home/andres/Nextcloud/Vault/",
        path = function()
          local user = vim.fn.expand("$USER")
          if user == "andros" then
            return "/home/andros/Nextcloud/Vault/"
          elseif user == "andres" then
            return "/home/andres/Nextcloud/Vault/"
          else
            error("obsidian.nvim: unknown user '" .. user .. "', please configure Vault path accordingly")
          end
        end,
      },
      -- {
      --   name = "personal",
      --   path = "~/vaults/personal",
      -- },
      -- {
      --   name = "work",
      --   path = "~/vaults/work",
      -- },
    },
  },
}
