hl.config({
	input = {
		kb_layout = "eu",
		kb_variant = "",
		kb_model = "",
		kb_options = "", --"grp:alt_shift_toggle,caps:backspace",
		kb_rules = "",
		follow_mouse = 1,
		sensitivity = 0,
		touchpad = {
			natural_scroll = false,
			-- tap_button_map = "lmr",
		},
	},

	general = {
		gaps_in = 2,
		gaps_out = 0,
		border_size = 2,
		col = {
			active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
			inactive_border = "rgba(595959aa)",
		},
		layout = "dwindle",
	},

	decoration = {
		rounding = 10,
    rounding_power = 2,

    active_opacity = 1.0,
    inactive_opacity = 1.0,

    shadow = {
      enabled = false
    },

		blur = {
			enabled = true,
      size = 5,
      passes = 2,
      vibrancy = 0.1696
		},
	},

	animations = {
		enabled = true,

	},

	dwindle = {
		force_split = 1,
		preserve_split = true,
	},

	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		disable_autoreload = true,
	},

	ecosystem = {
		no_update_news = false,
	},

	debug = {
		disable_logs = false,
	},
})
