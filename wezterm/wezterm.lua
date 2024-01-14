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
 
  colors = { compose_cursor = "orange"  },
  window_background_image_hsb = {
    brightness = 0.1,
    hue = 1.0,
    saturation = 1.0,
  },
  keys = {
    {key="^", mods="CMD", action="IncreaseFontSize"}
  }
}
