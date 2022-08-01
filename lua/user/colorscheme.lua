local colorscheme = "duskfox"

local nf_status_ok, nightfox = pcall(require, "nightfox")
if not nf_status_ok then
  return
end

nightfox.setup({
  options = {
    dim_inactive = true,
    styles = {
      comments = "italic",
      keywords = "bold",
      conditionals = "bold",
      functions = "bold"
    }
  }
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
