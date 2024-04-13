local wezterm = require 'wezterm';

wezterm.on("update-right-status", function(window, pane)
  -- "Wed Mar 3 08:14"
  local date = wezterm.strftime("%a %b %-d %H:%M ");

  local bat = ""
  for _, b in ipairs(wezterm.battery_info()) do
    bat = "🔋 " .. string.format("%.0f%%", b.state_of_charge * 100)
  end

  window:set_right_status(wezterm.format({
    {Text=bat .. "   "..date},
  }));
end)

return {
  default_prog = {"/opt/homebrew/bin/fish", "-l"},
  use_ime = true,
  font = wezterm.font("Cica"),
  font_size = 16,
  -- color_scheme = "iceberg-dark",
  color_scheme = "Japanesque",
  -- color_scheme = "JetBrains Darcula",

  background = {
    {
      -- This is the deepest/back-most layer. It will be rendered first
        source = {
          File = '/Users/ikaruga/documents/s.jpg',
        },
        -- The texture tiles vertically but not horizontally.
        -- When we repeat it, mirror it so that it appears "more seamless".
        -- An alternative to this is to set `width = "100%"` and have
        -- it stretch across the display
        repeat_x = 'Mirror',
        hsb = dimmer,
        opacity = 1.0,
        hsb = {
          brightness = 0.1,
          hue = 1.0,
          saturation = 1.0,
        },
        -- When the viewport scrolls, move this layer 10% of the number of
        -- pixels moved by the main viewport. This makes it appear to be
        -- further behind the text.
        attachment = { Parallax = 0.1 },
      }
    },
  text_background_opacity = 1.0,
  window_background_opacity = 0.9,
  colors = { compose_cursor = "orange"  },
  window_background_image_hsb = {
    brightness = 0.1,
    hue = 0.1,
    saturation = 1.0,
  },
  keys = {
    {key="^", mods="CMD", action="IncreaseFontSize"}
  },
}
