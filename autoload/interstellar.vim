" Definitions for all the colors interstellar uses.
"
" This defines a global named interstellar#colors with attributes for all the
" color names in use. Recommended to do `let s:colors = g:interstellar#colors`
" so you can abbreviate.

let s:colors = {}
let s:colors.fg = pgmnt#color#hsl(233, 0.9, 0.97)
let s:colors.dark_fg = pgmnt#color#hsl(233, 0.1, 0.5)
let s:colors.bg = "#100d15"
let s:colors.light_bg = pgmnt#color#hsl(0, 0, 0.2)
let s:colors.dark_bg = pgmnt#color#hsl(233, 0.3, 0.2)

let s:sat = 1.0
let s:light = 0.75
let s:colors.green = pgmnt#color#hsl(120, 1.0, 0.75)
let s:colors.orange = pgmnt#color#hsl(30, 1.0, s:light - 0.1)
let s:colors.light_blue = pgmnt#color#hsl(185, 1.0, s:light)
let s:colors.blue = pgmnt#color#hsl(233, s:sat, s:light)
let s:colors.purple = pgmnt#color#hsl(263, s:sat, 0.7)
let s:colors.light_purple = pgmnt#color#hsl(263, 1.0, 0.8)
let s:colors.pink = pgmnt#color#hsl(338, s:sat, s:light)

let g:interstellar#colors = s:colors

" vim:shiftwidth=2:foldmethod=marker
