" throat-clearing {{{
if !has('gui_running') && &t_Co < 256
  finish
endif

set background=dark

highlight clear
if exists('syntax_on')
  syntax reset
endif
 
let g:colors_name = 'vale'

let s:colors = g:vale#colors

function! s:hi(group, style)
  let fg = has_key(a:style, "fg") ? a:style.fg : "NONE"
  let bg = has_key(a:style, "bg") ? a:style.bg : "NONE"
  let gui = has_key(a:style, "gui") ? a:style.gui : "NONE"
  execute "highlight!" a:group "guifg=" fg "guibg=" bg "cterm=None" "gui=" gui
endfunction

" }}}

" actual color scheme stuff {{{

call s:hi("Normal",             {"fg": s:colors.fg, "bg": s:colors.bg})
hi! def link Delimiter Normal

call s:hi("Identifier",           {"fg": s:colors.light_blue})
hi! def link Type Identifier

call s:hi("Comment", {"fg": s:colors.dark_fg, "gui": "italic"})

call s:hi("Keyword", {"fg": s:colors.blue})
hi! def link Conditional Keyword
hi! def link Operator Keyword

call s:hi("PreProc", {"fg": s:colors.purple})

call s:hi("Statement", {"fg": s:colors.blue})

call s:hi("Function", {"fg": s:colors.pink})
hi! def link Title Function

call s:hi("Constant", {"fg": s:colors.light_purple})

call s:hi("Number", {"fg": s:colors.light_purple})

call s:hi("SpecialComment", {"fg": s:colors.orange, "gui": "italic"})

call s:hi("Folded", {"gui": "bold"})

call s:hi("SignColumn", {"fg": s:colors.fg, "bg": s:colors.light_bg})
call s:hi("VertSplit", {"fg": s:colors.fg, "bg": s:colors.bg})

call s:hi("Todo", {"fg": s:colors.orange, "bg": s:colors.dark_bg, "gui": "bold"})

" }}}

" rust-specific stuff

" desaturate the mod path separator a bit
hi! def link rustModPath Identifier
call s:hi("rustModPathSep", {"fg": pgmnt#color#adjust_color(s:colors.light_blue, {"saturation": -0.2})})

" vim:shiftwidth=2:foldmethod=marker

