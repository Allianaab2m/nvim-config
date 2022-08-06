local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {
  [[.......................................................]],
  [[......................,:clllc:,........................]],
  [[..................,ok00000000000dl;....................]],
  [[..............';lO00000000000000000Oo'.................]],
  [[............;clO0000000000000O000OO000:................]],
  [[............:d0000000000O00O0d000d00000l...............]],
  [[..........'cck00O0000000kkxO00l00d000000x,.............]],
  [[..........'lkdc,x00Od:O00xcx0dkkkk000000xc'............]],
  [[.........,;..;lxoc,..'l0000dxk0lk0000000d:.............]],
  [[............','''.....'0000ox0000000000ol;.............]],
  [[.......................k0kcO00kk0c0;o;o,...............]],
  [[.......................d0c.;00;ol.'....................]],
  [[.......................oo...k;.........................]],
  [[.......................;...............................]],
  [[......................;:lloooooooll;'''................]],
  [[...................'coooooooooooooooc;,,,,,,,''........]],
  [[..................:ooooooooooooooooool;,,,,,,,.........]],
  [[................,looooc:,,,,;:cllooooooc;,,,,,.........]],
  [[................',,,'.............',:clooc;,,..........]],
  [[.......................................',;c:'..........]],
}
dashboard.section.buttons.val = {
  dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
  dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("p", " " .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
  dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", " " .. " Find text", ":Telescope live_grep <CR>"),
  dashboard.button("c", " " .. " Config", ":e ~/.config/nvim/init.lua <CR>"),
  dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}
local function footer()
  return "Alliana's Neovim"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
