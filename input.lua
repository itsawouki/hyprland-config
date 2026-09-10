hl.config({
    input =  {
	kb_layout = "us,ir",
	kb_variant = ",winkeys",
	kb_options = "grp:alt_shift_toggle"
    }
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})


