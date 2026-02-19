-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- I had this on the desktop configuration
-- It seemed to work but it still kinda fucks up some stuff
-- like for example the lua formatting of the nvim config (.lua files)
-- i'm commenting it out and will just get used to whatever I get out of the box in neovim
-- but still keeping it just in case
-- local opt = vim.opt
-- opt.tabstop = 4
-- opt.expandtab = true
-- opt.softtabstop = 4
-- opt.shiftwidth = 4

-- Set languages for dictionaries and spellchecking (mostly for obsidian)
-- vim.g.spellchecking = true
-- vim.g.spelllanguages = { "en", "es" }

-- disable the fucking bullshit for now
vim.opt.spell = false
