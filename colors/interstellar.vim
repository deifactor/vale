" throat-clearing {{{
if !has('gui_running') && &t_Co < 256
  finish
endif

set background=dark

highlight clear
if exists('syntax_on')
  syntax reset
endif
" }}}

" set up colors {{{
let g:colors_name = 'interstellar'

let s:fg = pgmnt#color#hsl(233, 0.9, 0.97)
let s:dark_fg = pgmnt#color#hsl(233, 0.1, 0.5)
let s:bg = "#100d15"
let s:light_bg = pgmnt#color#hsl(0, 0, 0.2)
let s:dark_bg = pgmnt#color#hsl(233, 0.3, 0.2)

let s:sat = 1.0
let s:light = 0.75
let s:orange = pgmnt#color#hsl(30, s:sat, s:light - 0.1)
let s:light_blue = pgmnt#color#hsl(185, s:sat - 0.2, s:light)
let s:blue = pgmnt#color#hsl(233, s:sat, s:light)
let s:violet = pgmnt#color#hsl(263, s:sat, s:light)
let s:purple = pgmnt#color#hsl(300, s:sat - 0.0, s:light + 0.1)
let s:magenta = pgmnt#color#hsl(338, s:sat, s:light)

function! s:hi(group, style)
  let fg = has_key(a:style, "fg") ? a:style.fg : "NONE"
  let bg = has_key(a:style, "bg") ? a:style.bg : "NONE"
  let gui = has_key(a:style, "gui") ? a:style.gui : "NONE"
  execute "highlight!" a:group "guifg=" fg "guibg=" bg "cterm=None" "gui=" gui
endfunction

" }}}

" actual color scheme stuff {{{

call s:hi("Normal",             {"fg": s:fg, "bg": s:bg})
hi! def link Delimiter Normal

call s:hi("Identifier",           {"fg": s:light_blue})
hi! def link Type Identifier

call s:hi("Comment", {"fg": s:dark_fg, "gui": "italic"})

call s:hi("Keyword", {"fg": s:blue})
hi! def link Conditional Keyword
hi! def link Operator Keyword

call s:hi("PreProc", {"fg": s:purple})

call s:hi("Statement", {"fg": s:blue})

call s:hi("Function", {"fg": s:magenta})
hi! def link Title Function

call s:hi("Constant", {"fg": s:violet})

call s:hi("Number", {"fg": s:violet})

call s:hi("SpecialComment", {"fg": s:orange, "gui": "italic"})

call s:hi("Folded", {"gui": "bold"})

call s:hi("SignColumn", {"fg": s:fg, "bg": s:light_bg})
call s:hi("VertSplit", {"fg": s:fg, "bg": s:bg})

" }}}

" rust-specific stuff

" desaturate the mod path separator a bit
hi! def link rustModPath Identifier
call s:hi("rustModPathSep", {"fg": pgmnt#color#adjust_color(s:light_blue, {"saturation": -0.2})})
