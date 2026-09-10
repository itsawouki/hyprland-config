-- UserKeybinds.lua
-- Converted from UserKeybinds.config


local mainMod = "SUPER"
local files = "thunar"
local term = "kitty"
local scriptsDir = os.getenv("HOME") .. "/.config/hypr/scripts"
local UserScripts = os.getenv("HOME") .. "/.config/hypr/UserScripts"


-- ags overview

-- Terminal & file manager
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(term))
hl.bind(mainMod .. " + T",      hl.dsp.exec_cmd(files))

-- Calculator

-- pyprland
hl.bind(mainMod .. " + SHIFT + Return", hl.dsp.exec_cmd("pypr toggle term"))
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("python3 ~/scripts/zoom_toggle.py"))

-- User added
hl.bind("ALT_L + SHIFT_L", hl.dsp.exec_cmd(scriptsDir .. "/SwitchKeyboardLayout.sh"))   -- was bindn

hl.bind("CTRL + SHIFT + Escape", hl.dsp.exec_cmd("missioncenter"))

-- Passthrough (commented)
-- hl.bind(mainMod .. " + ALT + P", hl.dsp.submap("passthru"))
-- hl.submap("passthru")
-- hl.bind(mainMod .. " + ALT + P", hl.dsp.submap("reset"))
-- hl.submap("reset")
--
--
------------------------
--- INFINITY CANVA -----

-- Workspaces - cambiar
hl.bind(mainMod .. " + Z", hl.dsp.focus({ workspace = "-1" }))
hl.bind(mainMod .. " + X", hl.dsp.focus({ workspace = "+1" }))


-- Infinite desktop / mover y redimensionar ventanas
hl.bind(mainMod .. " + H", hl.dsp.exec_cmd("python3 ~/scripts/floating_tile_toggle.py"))

hl.bind("ALT + Q",  hl.dsp.exec_cmd("python3 ~/scripts/navigate_windows.py left"))
hl.bind("ALT + E", hl.dsp.exec_cmd("python3 ~/scripts/navigate_windows.py right"))
hl.bind(mainMod .. " + up",    hl.dsp.exec_cmd("python3 ~/scripts/navigate_windows.py up"))
hl.bind(mainMod .. " + down",  hl.dsp.exec_cmd("python3 ~/scripts/navigate_windows.py down"))

hl.bind(mainMod .. " + ALT + left",  hl.dsp.exec_cmd("python3 ~/scripts/move_window_tiled.py left"))
hl.bind(mainMod .. " + ALT + right", hl.dsp.exec_cmd("python3 ~/scripts/move_window_tiled.py right"))
hl.bind(mainMod .. " + ALT + up",    hl.dsp.exec_cmd("python3 ~/scripts/move_window_tiled.py up"))
hl.bind(mainMod .. " + ALT + down",  hl.dsp.exec_cmd("python3 ~/scripts/move_window_tiled.py down"))

hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.exec_cmd("python3 ~/scripts/move_window.py left"),  { repeating = true })
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.exec_cmd("python3 ~/scripts/move_window.py right"), { repeating = true })
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.exec_cmd("python3 ~/scripts/move_window.py up"),    { repeating = true })
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.exec_cmd("python3 ~/scripts/move_window.py down"),  { repeating = true })

hl.bind(mainMod .. " + CTRL + left",  hl.dsp.exec_cmd("python3 ~/scripts/resize_window.py left"),  {    repeating = true })
hl.bind(mainMod .. " + CTRL + right", hl.dsp.exec_cmd("python3 ~/scripts/resize_window.py right"), { repeating = true })
hl.bind(mainMod .. " + CTRL + up",    hl.dsp.exec_cmd("python3 ~/scripts/resize_window.py up"),    { repeating = true })
hl.bind(mainMod .. " + CTRL + down",  hl.dsp.exec_cmd("python3 ~/scripts/resize_window.py down"),  { repeating = true })

