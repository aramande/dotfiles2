local mainMod = "SUPER"
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + D", hl.dsp.window.close())
hl.bind(mainMod .. " + C", hl.dsp.window.fullscreen({action = "toggle"}))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("thunar"))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("~/.config/rofi/launchers/type-2/launcher.sh || pkill rofi"))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("~/.config/waybar/scripts/launch.sh"))
-- hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())

-- Launchers
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("signal-desktop"))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("discord"))
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. " + J", hl.dsp.exec_cmd("obsidian"))
hl.bind(mainMod .. " + K", hl.dsp.exec_cmd("keepassxc"))
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd("remmina"))
hl.bind(mainMod .. " + 9", hl.dsp.exec_cmd("scran -d $HOME/Pictures/Screenshots/"))

-- Navigate between Windows
hl.bind(mainMod .. " + h",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + n", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + t",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + w",  hl.dsp.focus({ direction = "down" }))

local hs = require("hyprsplit")
hs.config({
  num_workspaces = 5,
  persistent_workspaces = true
})
for i = 1, 5 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hs.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hs.dsp.window.move({ workspace = i, follow = false }))
end
hl.bind(mainMod .. " + SHIFT + C", hs.dsp.grab_rogue_windows())

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hs.dsp.focus({ workspace = "r+1" }))
hl.bind(mainMod .. " + mouse_up",   hs.dsp.focus({ workspace = "r-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
