-- Keybinds.lua
-- Converted from Keybinds.conf using hl.bind() + hl.dsp.*

local mainMod = "SUPER"
local scriptsDir = os.getenv("HOME") .. "/.config/hypr/scripts"
local UserScripts = os.getenv("HOME") .. "/.config/hypr/UserScripts"

-- System

hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exec_cmd(scriptsDir .. "/KillActiveProcess.sh"))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + ALT + F", hl.dsp.exec_cmd("hyprctl dispatch workspaceopt allfloat"))
hl.bind("CTRL + ALT + L", hl.dsp.exec_cmd(scriptsDir .. "/LockScreen.sh"))
hl.bind("CTRL + ALT + P", hl.dsp.exec_cmd(scriptsDir .. "/Wlogout.sh"))

-- Features / Extras
hl.bind(mainMod .. " + ALT + R", hl.dsp.exec_cmd(scriptsDir .. "/Refresh.sh"))
hl.bind(mainMod .. " + ALT + E", hl.dsp.exec_cmd(scriptsDir .. "/RofiEmoji.sh"))





-- UserScripts features





hl.bind(mainMod .. " + ALT + O", hl.dsp.exec_cmd("hyprctl setprop active opaque toggle"))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.exec_cmd(scriptsDir .. "/KeyBinds.sh"))

-- Waybar
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("pkill -SIGUSR1 waybar"))
hl.bind(mainMod .. " + CTRL + B", hl.dsp.exec_cmd(scriptsDir .. "/WaybarStyles.sh"))
hl.bind(mainMod .. " + ALT + B", hl.dsp.exec_cmd(scriptsDir .. "/WaybarLayout.sh"))

-- Layouts
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())   -- dwindle pseudo
hl.bind(mainMod .. " + CTRL + D", hl.dsp.exec_cmd("layoutmsg removemaster"))
hl.bind(mainMod .. " + I", hl.dsp.exec_cmd("layoutmsg addmaster"))
hl.bind(mainMod .. " + J", hl.dsp.exec_cmd("layoutmsg cyclenext"))
hl.bind(mainMod .. " + K", hl.dsp.exec_cmd("layoutmsg cycleprev"))
hl.bind(mainMod .. " + CTRL + Return", hl.dsp.exec_cmd("layoutmsg swapwithmaster"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("hyprctl dispatch splitratio 0.3"))

-- Group
hl.bind(mainMod .. " + G", hl.dsp.exec_cmd("togglegroup"))
hl.bind(mainMod .. " + CTRL + tab", hl.dsp.exec_cmd("changegroupactive"))

-- Cycling windows
hl.bind("ALT + tab", hl.dsp.exec_cmd("cyclenext"))
hl.bind("ALT + tab", hl.dsp.exec_cmd("bringactivetotop"))   -- second bind, same key, but it's fine

-- Volume / Media keys (repeat / release flags)
--hl.bind("xf86audioraisevolume", hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --inc"), { repeating = true, release = true })
--hl.bind("xf86audiolowervolume", hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --dec"),  { repeating = true, release = true })
--hl.bind("xf86AudioMicMute",    hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --toggle-mic"), { release = true })
--hl.bind("xf86audiomute",       hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --toggle"),      { release = true })
--hl.bind("xf86Sleep",           hl.dsp.exec_cmd("systemctl suspend"), { release = true })
--hl.bind("xf86Rfkill",          hl.dsp.exec_cmd(scriptsDir .. "/AirplaneMode.sh"), { release = true })

-- Media controls (release)
--hl.bind("xf86AudioPlayPause", hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --pause"), { release = true })
--hl.bind("xf86AudioPause",     hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --pause"), { release = true })
--hl.bind("xf86AudioPlay",      hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --pause"), { release = true })
--hl.bind("xf86AudioNext",      hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --nxt"),   { release = true })
--hl.bind("xf86AudioPrev",      hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --prv"),   { release = true })
--hl.bind("xf86audiostop",      hl.dsp.exec_cmd(scriptsDir .. "/MediaCtrl.sh --stop"),  { release = true })

-- Screenshots
hl.bind(mainMod .. " + Print",            hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --now"))
hl.bind(mainMod .. " + SHIFT + Print",    hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --area"))
hl.bind(mainMod .. " + CTRL + Print",     hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --in5"))
hl.bind(mainMod .. " + CTRL + SHIFT + Print", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --in10"))
hl.bind("ALT + Print",                    hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --active"))
--hl.bind(mainMod .. " + SHIFT + S",        hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --swappy"))
hl.bind(mainMod .. " + SHIFT + S",        hl.dsp.exec_cmd("/home/itsawouki/.config/hypr/scripts/ScreenShot.sh --area "))
-- Resize windows (repeatable)
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.exec_cmd("resizeactive -50 0"),  { repeating = true })
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.exec_cmd("resizeactive 50 0"),   { repeating = true })
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.exec_cmd("resizeactive 0 -50"),  { repeating = true })
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.exec_cmd("resizeactive 0 50"),   { repeating = true })

-- Move windows (non-repeatable)
hl.bind(mainMod .. " + CTRL + left",  hl.dsp.exec_cmd("movewindow l"))
hl.bind(mainMod .. " + CTRL + right", hl.dsp.exec_cmd("movewindow r"))
hl.bind(mainMod .. " + CTRL + up",    hl.dsp.exec_cmd("movewindow u"))
hl.bind(mainMod .. " + CTRL + down",  hl.dsp.exec_cmd("movewindow d"))

-- Focus direction
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Workspace navigation
hl.bind(mainMod .. " + tab",        hl.dsp.focus({ workspace = "m+1" }))
hl.bind(mainMod .. " + SHIFT + tab", hl.dsp.focus({ workspace = "m-1" }))

-- Special workspace
hl.bind(mainMod .. " + SHIFT + U", hl.dsp.window.move({ workspace = "special" }))
hl.bind(mainMod .. " + U",         hl.dsp.focus({ workspace = "special" }))

-- Workspace switching via key codes (numbers)
-- 1 = code:10, 2 = code:11, ..., 0 = code:19
local ws_codes = { ["10"] = "1", ["11"] = "2", ["12"] = "3", ["13"] = "4", ["14"] = "5",
                   ["15"] = "6", ["16"] = "7", ["17"] = "8", ["18"] = "9", ["19"] = "10" }
for code, ws in pairs(ws_codes) do
    -- Toggle: si ya estás en el workspace, vuelve al anterior (back_and_forth)
    hl.bind(mainMod .. " + code:" .. code, hl.dsp.exec_cmd("python3 ~/scripts/toggle_workspace.py " .. ws))
    hl.bind(mainMod .. " + SHIFT + code:" .. code, hl.dsp.window.move({ workspace = ws }))
    hl.bind(mainMod .. " + CTRL + code:" .. code, hl.dsp.exec_cmd("movetoworkspacesilent " .. ws))
end

-- Brackets for workspace movement
hl.bind(mainMod .. " + SHIFT + bracketleft",  hl.dsp.window.move({ workspace = "-1" }))
hl.bind(mainMod .. " + SHIFT + bracketright", hl.dsp.window.move({ workspace = "+1" }))
hl.bind(mainMod .. " + CTRL + bracketleft",   hl.dsp.exec_cmd("movetoworkspacesilent -1"))
hl.bind(mainMod .. " + CTRL + bracketright",  hl.dsp.exec_cmd("movetoworkspacesilent +1"))

-- Scroll through workspaces
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + period",     hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + comma",      hl.dsp.focus({ workspace = "e-1" }))

-- Mouse drag bindings (move/resize)
--hl.bind(mainMod, "mouse:272", hl.dsp.exec_cmd("movewindow"))
--hl.bind(mainMod, "mouse:273", hl.dsp.exec_cmd("resizewindow"))

hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
