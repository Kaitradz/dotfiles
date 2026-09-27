-- ~/.config/hypr/rules.lua
-- Migrated from rules.conf
-- Docs: https://wiki.hypr.land/Configuring/Basics/Window-Rules/

hl.layer_rule({
    match = { namespace = "rofi" },
    blur = true,
    ignore_alpha = 0.15,
})

-- Opacity rules: 90% for all windows except fullscreen
hl.window_rule({
    match = { class = ".*" },
    opacity = "1.0 override",
})

hl.window_rule({
    match = { class = ".*", fullscreen = true },
    opacity = "1.0 override",
})

hl.window_rule({
    name = "float-pavucontrol",
    match = { class = "^(pavucontrol)$" },
    float = true,
})

hl.window_rule({
    name = "float-nm-connection-editor",
    match = { class = "^(nm-connection-editor)$" },
    float = true,
})

hl.window_rule({
    name = "float-blueman-manager",
    match = { class = "^(blueman-manager)$" },
    float = true,
})

hl.window_rule({
    name = "float-open-file",
    match = { title = "^(Open File)$" },
    float = true,
})

hl.window_rule({
    name = "float-save-file",
    match = { title = "^(Save File)$" },
    float = true,
})


-- Waypaper Floating & Centered Zen Rule
hl.window_rule({
    name = "float-waypaper",
    match = { class = "^(waypaper)$" },
    float = true,
    center = true,
    size = { 800, 500 }
})

-- Calculator Floating & Centered Compact Rule
hl.window_rule({
    name = "float-calculator",
    match = { class = "^(org.gnome.Calculator)$" },
    float = true,
    center = true,
    size = { 360, 520 }
})

-- GNOME Text Editor Floating Rule
hl.window_rule({
    name = "float-gnome-text-editor",
    match = { class = "^(org.gnome.TextEditor)$" },
    float = true,
    center = true,
    size = { 900, 600 }
})
