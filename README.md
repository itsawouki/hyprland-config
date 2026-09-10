# 🌙 My Hyprland Dotfiles

A personal [Hyprland](https://hyprland.org/) configuration built with a Lua-based
config layer instead of raw `.conf` files, paired with a custom
[Quickshell](https://quickshell.org/) bar/widget system, `pyprland` scratchpads,
and a set of Python scripts implementing an "infinite desktop" tiling/navigation
workflow.

> Built on top of [JaKooLit's Hyprland-Dots](https://github.com/JaKooLit/Hyprland-Dots)
> as a base, then reworked into Lua config syntax and extended with custom
> tooling. See [Credits](#-credits) below.

![screenshot placeholder](./screenshot.png)

## ✨ Features

- **Lua config** — `hyprland.lua` requires modular files (`Keybinds`, `Decoration`,
  `env`, `monitor`, `layout`, `misc`, `input`, `windowrules`, ...) instead of one
  giant `hyprland.conf`
- **Custom shell UI** via Quickshell (`Aki-Shell`) — control center, clipboard
  island, music widget, power menu, network/audio toggles, wallpaper picker
- **`pyprland`** for dropdown terminal scratchpad and window magnification
- **Infinite desktop** — Python daemon + keybinds for floating/tiled window
  navigation, moving, and resizing across an unbounded canvas
- **Dynamic theming** with `wallust`, including light/dark mode switching tied
  to wallpaper sets
- **Wallpaper tooling** — random/auto-change, per-wallpaper color extraction,
  effects
- **Rofi menus** for app launching, clipboard history (`cliphist`), emoji
  picker, calculator, and a custom `mpv`-based music player (RofiBeats)
- **Waybar** with runtime style/layout switching and a cava audio visualizer
  module
- **`hypridle` / `hyprlock`** for idle handling and screen locking
- **Game mode** toggle that strips animations/blur/shadows for performance
- **NixOS-aware** variants for Polkit where relevant

## 🧰 Stack

| Component        | Tool                                   |
|-------------------|-----------------------------------------|
| Compositor         | [Hyprland](https://hyprland.org/)       |
| Config language     | Lua (via `hl.*` API)                    |
| Bar / shell widgets | Quickshell                              |
| Scratchpads / IPC   | pyprland                                |
| Wallpaper daemon    | swww / awww                             |
| Theming             | wallust                                 |
| Idle / lock         | hypridle / hyprlock                     |
| Launcher            | Rofi                                    |
| Clipboard           | cliphist                                |
| Terminal            | kitty                                   |
| File manager        | Thunar                                  |

## ⌨️ Key Keybinds

All binds use `SUPER` as the main modifier.

| Keybind                | Action                              |
|-------------------------|--------------------------------------|
| `SUPER + Return`         | Open terminal                        |
| `SUPER + T`               | Open file manager                    |
| `SUPER + Q`                | Close active window                  |
| `SUPER + F`                | Toggle fullscreen                    |
| `SUPER + SHIFT + F`         | Toggle floating                      |
| `SUPER + SHIFT + Return`     | Toggle dropdown terminal (pyprland)  |
| `SUPER + D`                  | Toggle app launcher / island         |
| `SUPER + SHIFT + V`            | Toggle clipboard manager             |
| `SUPER + A / N / W / S`         | Toggle audio / network / wallpaper / settings panels |
| `SUPER + B`                       | Reload waybar                        |
| `SUPER + ALT + E`                   | Emoji picker                         |
| `CTRL + ALT + L`                      | Lock screen                          |
| `CTRL + ALT + P`                        | Power menu (wlogout)                 |
| `SUPER + ALT + <arrows>`                  | Move tiled window (infinite desktop) |
| `SUPER + CTRL + <arrows>`                   | Resize window                        |

Full binds live in [`Keybinds.lua`](./Keybinds.lua) and
[`UserKeybinds.lua`](./UserKeybinds.lua).

## 📁 Structure
