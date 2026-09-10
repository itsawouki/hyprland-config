hl.config({
    general = {
        gaps_in  = 8,
        gaps_out = { top = 45, right = 10, bottom = 10, left = 10 },

        border_size = 0,

        col = {
            active_border   = { colors = {"rgba(33ccffee)"}},
            inactive_border = "rgba(595959aa)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 20,
        rounding_power = 2,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 0.9,

        shadow = {
            enabled      = true,
            range        = 20,
            render_power = 3,
            color        = 0xee121212,
        },

        blur = {
            enabled   = true,
            size      = 10,
            passes    = 3,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})

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
