local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
--hl.window_rule({
--    name  = "move-hyprland-run",
--    match = { class = "hyprland-run" },

--    move  = "20 monitor_h-120",
--    float = true,
--})


-- Modo infinity canvas: flota TODAS las ventanas nuevas (comportamiento base).
-- El modo POR WORKSPACE lo gestiona ~/scripts/ws_mode_enforcer.py junto con
-- floating_tile_toggle.py (SUPER+H): el daemon tilea las ventanas de los
-- workspaces marcados como mosaico en /tmp/hypr_ws_modes.json y hace que las
-- ventanas movidas entre workspaces adopten el modo del destino.
-- NOTA: los matchers por workspace de hl.window_rule existen pero se IGNORAN
-- en esta versión (verificado), por eso la regla es global y el daemon es quien
-- aplica la excepción por workspace.
hl.window_rule({
    name  = "float-all-windows",
    match = { class = ".*" },

    float = true,
})
