-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

hl.env("GDK_SCALE", "1")

-- Vertical monitor on the left (90° clockwise).
hl.monitor({ output = "HDMI-A-1", mode = "1920x1080@60", position = "0x0", scale = 1.25, transform = 1 })

-- Primary landscape monitor in the center.
hl.monitor({ output = "DP-2", mode = "1920x1080@240", position = "864x228", scale = 1 })

-- Secondary landscape monitor on the right.
hl.monitor({ output = "DP-3", mode = "1920x1080@165", position = "2784x228", scale = 1 })
