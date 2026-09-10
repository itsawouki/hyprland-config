-- UserDecorAnimations.lua
-- Converted from UserDecorAnimations.conf


-- 2. Define bezier curves
hl.curve("wind",     { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } })
hl.curve("winIn",    { type = "bezier", points = { {0.1, 1.1}, {0.1, 1.1} } })
hl.curve("winOut",   { type = "bezier", points = { {0.3, -0.3}, {0, 1} } })
hl.curve("liner",    { type = "bezier", points = { {1, 1}, {1, 1} } })
hl.curve("overshot", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } })
hl.curve("smoothOut", { type = "bezier", points = { {0.5, 0}, {0.99, 0.99} } })
hl.curve("smoothIn",  { type = "bezier", points = { {0.5, -0.5}, {0.68, 1.5} } })

-- 3. Global animation (required root)
hl.animation({ leaf = "global", enabled = true, speed = 1, bezier = "liner" })

-- 4. Windows animations
hl.animation({ leaf = "windows",     enabled = true, speed = 6, bezier = "wind",     style = "slide" })
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 5, bezier = "winIn",    style = "slide" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 3, bezier = "smoothOut", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5, bezier = "wind",     style = "slide" })

-- 5. Fade
hl.animation({ leaf = "fade", enabled = true, speed = 3, bezier = "smoothOut" })

-- 6. Workspaces
hl.animation({ leaf = "workspaces",     enabled = true, speed = 5, bezier = "overshot" })
hl.animation({ leaf = "workspacesIn",   enabled = true, speed = 5, bezier = "winIn",    style = "slide" })
hl.animation({ leaf = "workspacesOut",  enabled = true, speed = 5, bezier = "winOut",   style = "slide" })

-- 7. Border animations (for rainbow borders – commented out by default)
-- Uncomment these if you want animated borders
-- hl.animation({ leaf = "border",     enabled = true, speed = 1, bezier = "liner" })
-- hl.animation({ leaf = "borderangle", enabled = true, speed = 180, bezier = "liner", style = "loop" })

-- 8. Decoration settings (DIRECTLY on hl.decoration, NOT hl.config.decoration)
hl.decoration = {
    rounding = 15,
    active_opacity = 1.0,
    inactive_opacity = 0.9,
    fullscreen_opacity = 1.0,

    dim_inactive = true,
    dim_strength = 0.1,
    dim_special = 0.8,

    -- Shadow (disabled)
    -- shadow = {
    --     enabled = false,
    --     range = 6,
    --     render_power = 1,
    --     color = "$color12",      -- uses variable from wallust
    --     color_inactive = "$color2"
    -- },

    blur = {
        enabled = true,
        size = 6,
        passes = 2,
        ignore_opacity = true,
        new_optimizations = true,
        special = true,
    },
}
