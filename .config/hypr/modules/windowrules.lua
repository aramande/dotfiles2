-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
suppressMaximizeRule:set_enabled(false)

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

-- hl.window_rule({ name = "ws-firefox", match = { class = "firefox" }, workspace = "1 silent" })
-- hl.window_rule({ name = "ws-telegram", match = { class = "org.telegram.desktop" }, workspace = "2 silent" })
-- hl.window_rule({ name = "ws-chrome", match = { class = "google-chrome" }, workspace = "4 silent" })
-- hl.window_rule({ name = "ws-edge", match = { class = "Microsoft-edge" }, workspace = "5 silent" })
-- hl.window_rule({ name = "ws-thunderbird", match = { class = "org.mozilla.Thunderbird" }, workspace = "6 silent" })
hl.window_rule({ name = "ws-keepass", match = { class = "org.keepassxc.KeePassXC" }, workspace = "2 silent", monitor = "DP-4" })
