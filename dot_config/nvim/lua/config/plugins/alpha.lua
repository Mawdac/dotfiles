local M = {
  "goolord/alpha-nvim",
  lazy = false
}

function M.config ()
  local dashboard = require("alpha.themes.dashboard")

  dashboard.section.header.val = {
    [[                                                                       ]],
    [[  ██████   █████                   █████   █████  ███                  ]],
    [[ ░░██████ ░░███                   ░░███   ░░███  ░░░                   ]],
    [[  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   ]],
    [[  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  ]],
    [[  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  ]],
    [[  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  ]],
    [[  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ ]],
    [[ ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  ]],
    [[                                                                       ]],
  }
  dashboard.section.buttons.val = {
    dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
    dashboard.button("g", " " .. " Find grep", ":Telescope live_grep <CR>"),
    -- dashboard.button("p", " " .. " Find project", ":Telescope projects<CR>"),
    dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
    dashboard.button("1", " " .. " Neovim", ":e $MYVIMRC <CR>"),
    dashboard.button("2", "🎣" .. " Fish", ":e ~/.config/fish/config.fish <CR>"),
    dashboard.button("3", " " .. " Tmux", ":e ~/.tmux.conf.local <CR>"),
    dashboard.button("q", " " .. " Quit", ":qa<CR>"),
  }

  dashboard.section.footer.opts.hl = "Type"
  dashboard.section.footer.val = {
    [[                                                                       ]],
    [[                                                                       ]],
    [[                  Don't regret your past, learn from it                ]],
    [[                    Regrets just make a person weaker                  ]],
    [[                                                                       ]],
    [[                              Solid Snake                            ]],
  }

  dashboard.section.header.opts.hl = "Include"
  dashboard.section.buttons.opts.hl = "Keyword"

  dashboard.opts.opts.noautocmd = true

  require("alpha").setup(dashboard.opts)
end

return M
