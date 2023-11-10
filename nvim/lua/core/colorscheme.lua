-- CHANGE THIS VARIABLE TO SET THE COLORSCHEME
local colorscheme = "night-owl"

-- essentially calls the colorscheme
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
