return {
   "goolord/alpha-nvim",
   opts = function(_, dashboard)
      --            local logo = [[
      --      ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
      --      ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z
      --      ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z
      --      ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z
      --      ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
      --      ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝
      --      ]]

      dashboard.section.buttons.val = {
         dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
         dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
         dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
         dashboard.button("p", " " .. " Open project", ":Telescope projects <CR>"),
         dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
         dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
         dashboard.button("l", "鈴" .. " Lazy", ":Lazy<CR>"),
         dashboard.button("q", " " .. " Quit", ":qa<CR>"),
      }
      for _, button in ipairs(dashboard.section.buttons.val) do
         button.opts.hl = "AlphaButtons"
         button.opts.hl_shortcut = "AlphaShortcut"
      end
      dashboard.section.footer.opts.hl = "Type"
      dashboard.section.header.opts.hl = "AlphaHeader"
      dashboard.section.buttons.opts.hl = "AlphaButtons"
      dashboard.opts.layout[1].val = 8
      return dashboard
   end,
}
