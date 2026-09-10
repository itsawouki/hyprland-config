-- Startup_Apps.lua
-- Converted from Startup_Apps.conf
-- Uses hl.on("hyprland.start", ...) to run startup commands.

---local hl = require("hyprland")   -- or however you import the hl module

local scriptsDir = os.getenv("HOME") .. "/.config/hypr/scripts"
local UserScripts = os.getenv("HOME") .. "/.config/hypr/UserScripts"
local wallDIR = os.getenv("HOME") .. "/Pictures/wallpapers"

hl.on("hyprland.start", function()
    -- wallpaper daemon
    hl.exec_cmd("awww-daemon --format xrgb")

    -- Live wallpaper (commented out)
    -- hl.exec_cmd("mpvpaper -o \"no-audio --loop --geometry=100% --no-keepaspect-window\" HDMI-A-1 /home/itsawouki/Pictures/wallpapers/wallpaper.png")
    -- hl.exec_cmd(UserScripts .. "/WallpaperAutoChange.sh " .. wallDIR)  -- random wallpaper switcher

    -- Wallpaper (choose one)
    --hl.exec_cmd("awww img /home/itsawouki/Pictures/wallpapers/wallpaper.png")
    hl.exec_cmd("qs -p ".. os.getenv("HOME") .."/.config/Aki-Shell")

    -- Environment & systemd
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    -- Polkit
    hl.exec_cmd(scriptsDir .. "/Polkit.sh")

    -- Startup apps (some backgrounded with &)
    --hl.exec_cmd("waybar &")
    hl.exec_cmd("nm-applet --indicator &")
    --hl.exec_cmd("swaync &")
    hl.exec_cmd("ags &")
    -- hl.exec_cmd("blueman-applet &")
    -- hl.exec_cmd("rog-control-center &")

    -- Clipboard manager
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    -- Rainbow borders (commented)
    -- hl.exec_cmd(UserScripts .. "/RainbowBorders.sh &")

    -- Idle daemon
    hl.exec_cmd("hypridle &")

    -- Pyprland daemon
    hl.exec_cmd("pypr")

    -- Other commented options
    -- hl.exec_cmd("swww-daemon --format xrgb && swww img $HOME/Pictures/wallpapers/mecha-nostalgia.png")
    -- hl.exec_cmd(scriptsDir .. "/Polkit-NixOS.sh")
    -- hl.exec_cmd(scriptsDir .. "/PortalHyprland.sh")

    -- Wallpaper setter (hyprpaper)
    --hl.exec_cmd("hyprpaper")

    hl.exec_cmd("python3 ~/scripts/infinite_desktop_core.py 1.6 > /tmp/infinite-desktop.log 2>&1")

    -- Daemon que aplica el modo flotante/mosaico de cada workspace a las
    -- ventanas nuevas y movidas (ver ws_mode_enforcer.py)
    hl.exec_cmd("python3 ~/scripts/ws_mode_enforcer.py > /tmp/ws-mode-enforcer.log 2>&1 &")
    --h1.exec_cmd(menu)
end)
