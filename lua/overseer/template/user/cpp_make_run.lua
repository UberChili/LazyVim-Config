-- ~/.config/nvim/lua/overseer/template/user/cpp_make_run.lua
local function find_makefile_dir()
  local path = vim.fn.expand("%:p:h")
  while path ~= "/" do
    if vim.fn.filereadable(path .. "/Makefile") == 1 then
      return path
    end
    path = vim.fn.fnamemodify(path, ":h")
  end
  return nil
end

return {
  name = "make && run",
  builder = function()
    local dir = find_makefile_dir()
    if not dir then
      vim.notify("No Makefile found", vim.log.levels.ERROR)
      return nil
    end
    local args = vim.fn.input("Args: ")
    return {
      cmd = { "sh", "-c", "make clean && make && build/" .. vim.fn.fnamemodify(dir, ":t") .. " " .. args },
      cwd = dir,
      -- components = { { "on_output_quickfix", open = true }, "default" },
    }
  end,
  condition = {
    filetype = { "cpp" },
  },
}
