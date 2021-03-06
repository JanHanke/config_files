---------------------------
-- Default awesome theme --
---------------------------

theme = {}

theme.font          = "sans 10"

alpha = "55"

theme.bg_normal     = "#333333" .. alpha -- "#222222"
theme.bg_focus      = "#ff9800"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#ffffff" -- "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.border_width  = 1
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

theme_name = "first"
theme_path = "/home/jan/.config/awesome/themes/" .. theme_name

-- Display the taglist squares
theme.taglist_squares_sel   = theme_path .. "/taglist/squarefw.png"
theme.taglist_squares_unsel = theme_path .. "/taglist/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme_path .. "/submenu.png"
theme.menu_height = 15
theme.menu_width  = 100

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = theme_path .. "/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = theme_path .. "/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = theme_path .. "/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = theme_path .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = theme_path .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = theme_path .. "/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = theme_path .. "/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = theme_path .. "/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = theme_path .. "/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = theme_path .. "/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = theme_path .. "/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = theme_path .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = theme_path .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = theme_path .. "/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme_path .. "/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme_path .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = theme_path .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = theme_path .. "/titlebar/maximized_focus_active.png"

theme.wallpaper = theme_path .. "/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh = theme_path .. "/layouts/fairh.png"
theme.layout_fairv = theme_path .. "/layouts/fairv.png"
theme.layout_floating  = theme_path .. "/layouts/floating.png"
theme.layout_magnifier = theme_path .. "/layouts/magnifier.png"
theme.layout_max = theme_path .. "/layouts/max.png"
theme.layout_fullscreen = theme_path .. "/layouts/fullscreen.png"
theme.layout_tilebottom = theme_path .. "/layouts/tilebottom.png"
theme.layout_tileleft   = theme_path .. "/layouts/tileleft.png"
theme.layout_tile = theme_path .. "/layouts/tile.png"
theme.layout_tiletop = theme_path .. "/layouts/tiletop.png"
theme.layout_spiral  = theme_path .. "/layouts/spiral.png"
theme.layout_dwindle = theme_path .. "/layouts/dwindle.png"

theme.awesome_icon = theme_path .. "/icons/awesome32.png"

-- Define the icon theme for application icons. If not set then the icons 
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
