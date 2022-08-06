local status_ok, fine_cmdline = pcall(require, "fine-cmdline")
if not status_ok then
  return
end

fine_cmdline.setup({
  hooks = {
    after_mount = function(input)
      vim.keymap.set("i", "<Esc>", "<Cmd>stopinsert<CR>", {buffer = input.bufnr})
    end
  }
})
