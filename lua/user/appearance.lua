lvim.transparent_window = true
lvim.builtin.time_based_themes = true -- set false to use your own configured theme


-- StatusLine
if lvim.builtin.fancy_statusline.active then
  require("user.lualine").config()
end

-- Theme
if lvim.builtin.time_based_themes == false then
  table.insert(lvim.plugins,
    {
      "dracula/vim",
      name = "dracula",
    })
  lvim.colorscheme = "dracula"
end

if lvim.builtin.time_based_themes == true then
  -- Appearance
  -- =================================================
  --table.insert(lvim.plugins,
  --  {
  --    "dracula/vim",
  --    name = "dracula",
  --    config = function()
  --      -- require("user.theme").dracula()
  --      local _time = os.date "*t"
  --      if (_time.hour >= 9 and _time.hour < 17) and lvim.builtin.time_based_themes then
  --        lvim.colorscheme = "dracula"
  --      end
  --    end
  --  }) -- dracula colorscheme
  table.insert(lvim.plugins,
    {
      "folke/tokyonight.nvim",
      config = function()
        require("user.theme").tokyonight()
        local _time = os.date "*t"
        if (_time.hour >= 9 and _time.hour < 17) and lvim.builtin.time_based_themes then
          lvim.colorscheme = "tokyonight-moon"
        end
      end
    })

  table.insert(lvim.plugins,
    {
      "rose-pine/neovim",
      name = "rose-pine",
      config = function()
        require("user.theme").rose_pine()
        lvim.colorscheme = "rose-pine"
      end,
      cond = function()
        local _time = os.date "*t"
        return (_time.hour >= 1 and _time.hour < 9) and lvim.builtin.time_based_themes
      end,
    })

  table.insert(lvim.plugins,
    {
      "catppuccin/nvim",
      name = "catppuccin",
      config = function()
        require("user.theme").catppuccin()
        local _time = os.date "*t"
        if (_time.hour >= 17 and _time.hour < 21) and lvim.builtin.time_based_themes then
          lvim.colorscheme = "catppuccin-mocha"
        end
      end,
    })
end
