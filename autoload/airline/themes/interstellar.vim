" vim:shiftwidth=2

let s:colors = g:interstellar#colors
let s:p = {}

" TODO: Figure out cterm colors.
let s:a_normal = [s:colors.fg, pgmnt#color#lighten(s:colors.light_bg, 0.1), 0, 0]
let s:b_normal = [s:colors.fg, s:colors.light_bg, 0, 0]
let s:c_normal = [s:colors.fg, s:colors.dark_bg, 0, 0]
let s:p.normal = airline#themes#generate_color_map(s:a_normal, s:b_normal, s:c_normal)

let s:a_insert = [s:colors.dark_bg, s:colors.light_purple, 0, 0]
let s:b_insert = [s:colors.fg, pgmnt#color#darken(s:colors.light_purple, 0.5), 0, 0]
let s:c_insert = [s:colors.fg, s:colors.dark_bg, 0, 0]
let s:p.insert = airline#themes#generate_color_map(s:a_insert, s:b_insert, s:c_insert)

let s:a_command = [s:colors.dark_bg, s:colors.blue, 0, 0]
let s:b_command = [s:colors.fg, pgmnt#color#darken(s:colors.blue, 0.5), 0, 0]
let s:c_command = [s:colors.fg, s:colors.dark_bg, 0, 0]
let s:p.commandline = airline#themes#generate_color_map(s:a_command, s:b_command, s:c_command)

let s:a_visual = [s:colors.dark_bg, s:colors.green, 0, 0]
let s:b_visual = [s:colors.fg, pgmnt#color#darken(s:colors.green, 0.5), 0, 0]
let s:c_visual = [s:colors.fg, s:colors.dark_bg, 0, 0]
let s:p.visual = airline#themes#generate_color_map(s:a_visual, s:b_visual, s:c_visual)

let s:inactive = pgmnt#color#hsl(0, 0, 0.1)
let s:a_inactive = [s:colors.fg, s:inactive, 0, 0]
let s:b_inactive = [s:colors.fg, s:inactive, 0, 0]
let s:c_inactive = [s:colors.fg, s:inactive, 0, 0]
let s:p.inactive = airline#themes#generate_color_map(s:a_inactive, s:b_inactive, s:c_inactive)

let g:airline#themes#interstellar#palette = s:p
