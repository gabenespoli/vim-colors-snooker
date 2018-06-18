" Vim Color File
" Name:       palettes.vim
" Maintainer: github.com/gabenespoli
" file modified from reedes/vim-colors-pencil

" Setup {{{1
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='palettes'

" not all terminals support italics properly.  If yours does, opt-in.
if ! exists("g:palettes_terminal_italics")
  let g:palettes_terminal_italics = 0
endif

if ! exists("g:palettes_spell_undercurl")
  let g:palettes_spell_undercurl = 1
endif

" Colors {{{1
let s:base00          = { "gui": "#1c1c1c", "cterm": "0"  }
let s:base01          = { "gui": "#262626", "cterm": "10" }
let s:base02          = { "gui": "#4e4e4e", "cterm": "11" }
let s:base03          = { "gui": "#585858", "cterm": "8"  }
let s:base04          = { "gui": "#808080", "cterm": "12" }
let s:base05          = { "gui": "#8a8a8a", "cterm": "7"  }
let s:base06          = { "gui": "#b2b2b2", "cterm": "13" }
let s:base07          = { "gui": "#c6c6c6", "cterm": "15" }

if &background == "dark"
  let s:bg            = s:base00
  let s:bg_light      = s:base01
  let s:bg_sel        = s:base02
  let s:fg_com        = s:base03
  let s:fg_dark       = s:base04
  let s:fg            = s:base05
  let s:fg_light      = s:base06
  let s:fg_bright     = s:base07
else
  let s:bg            = s:base07
  let s:bg_light      = s:base06
  let s:bg_sel        = s:base05
  let s:fg_com        = s:base04
  let s:fg_dark       = s:base03
  let s:fg            = s:base02
  let s:fg_light      = s:base01
  let s:fg_bright     = s:base00
endif

let s:red             = { "gui": "#d70000", "cterm": "1"  }
let s:orange          = { "gui": "#d75f00", "cterm": "9"  }
let s:yellow          = { "gui": "#d78700", "cterm": "3"  }
let s:green           = { "gui": "#00875f", "cterm": "2"  }
let s:cyan            = { "gui": "#008787", "cterm": "6"  }
let s:blue            = { "gui": "#0087af", "cterm": "4"  }
let s:purple          = { "gui": "#5f5faf", "cterm": "5"  }
let s:pink            = { "gui": "#af5f87", "cterm": "14" }

if g:palettes_spell_undercurl == 1
  let s:sp_un      = 'undercurl'
else
  let s:sp_un      = 'underline'
endif

" shamelessly stolen from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  " Not all terminals support italics properly. If yours does, opt-in.
  if g:palettes_terminal_italics == 0 && has_key(a:style, "cterm") && a:style["cterm"] == "italic"
    unlet a:style.cterm
  endif
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" Main Groups {{{1
" (see `:h w18`)

call s:h("Normal",        {"bg": s:bg, "fg": s:fg})
call s:h("Cursor",        {"bg": s:fg, "fg": s:bg })
call s:h("Comment",       {"fg": s:fg_com, "gui": "italic", "cterm": "italic"})

call s:h("Constant",      {"fg": s:cyan})
hi! link String           Constant
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant

call s:h("Identifier",    {"fg": s:blue})
hi! link Function         Identifier

call s:h("Statement",     {"fg": s:green})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Operator         Statement
hi! link Keyword          Statement
hi! link Exception        Statement

call s:h("PreProc",       {"fg": s:purple})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

call s:h("Type",          {"fg": s:yellow})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

call s:h("Special",       {"fg": s:orange})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h("Underlined",    {"fg": s:pink, "gui": "underline", "cterm": "underline"          })
call s:h("Ignore",        {"fg": s:bg                                                      })
call s:h("Error",         {"fg": s:red                                                     })
call s:h("Todo",          {"fg": s:pink, "bg": s:bg_light, "gui": "italic", "cterm": "italic" })

" Extra Groups {{{1
" ordered according to `:help hitest.vim`

call s:h("SpecialKey",    {"fg": s:bg_light, "gui": "bold", "cterm": "bold"})
call s:h("NonText",       {"fg": s:bg})
call s:h("Directory",     {"fg": s:blue})
call s:h("ErrorMsg",      {"fg": s:bg, "bg": s:red})
call s:h("IncSearch",     {"bg": s:orange, "fg": s:bg})
call s:h("Search",        {"bg": s:yellow, "fg": s:bg})
call s:h("MoreMsg",       {"fg": s:fg_com})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:fg_com})
call s:h("CursorLineNr",  {"fg": s:fg_dark})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"fg": s:fg_light, "bg": s:bg_light})
call s:h("Conceal",       {"fg": s:fg})
call s:h("StatusLineNC",  {"bg": s:bg_light, "fg": s:fg_com})
call s:h("VertSplit",     {"bg": s:bg, "fg": s:bg})
call s:h("Title",         {"fg": s:fg_bright, "bg": s:bg_light, "gui": "bold", "cterm": "bold"})
call s:h("Visual",        {"bg": s:bg_sel, "fg": s:fg})
call s:h("VisualNOS",     {"bg": s:bg_light, "fg": s:fg})
call s:h("WarningMsg",    {"fg": s:bg, "bg": s:orange})
call s:h("WildMenu",      {"fg": s:bg_light, "bg": s:fg_bright})
call s:h("Folded",        {"fg": s:fg, "bg": s:bg_light})
call s:h("FoldColumn",    {"fg": s:fg})
call s:h("DiffAdd",       {"bg": s:bg_light, "fg": s:green})
call s:h("DiffDelete",    {"bg": s:bg_light, "fg": s:red})
call s:h("DiffChange",    {"bg": s:bg,        "fg": s:fg})
call s:h("DiffText",      {"bg": s:bg_light, "fg": s:yellow})
call s:h("SignColumn",    {"fg": s:fg})

if has("gui_running")
  call s:h("SpellBad",    {"gui": s:sp_un, "sp": s:red})
  call s:h("SpellCap",    {"gui": s:sp_un, "sp": s:purple})
  call s:h("SpellRare",   {"gui": s:sp_un, "sp": s:cyan})
  call s:h("SpellLocal",  {"gui": s:sp_un, "sp": s:yellow})
else
  call s:h("SpellBad",    {"cterm": s:sp_un, "fg": s:fg})
  call s:h("SpellCap",    {"cterm": s:sp_un, "fg": s:fg})
  call s:h("SpellRare",   {"cterm": s:sp_un, "fg": s:fg})
  call s:h("SpellLocal",  {"cterm": s:sp_un, "fg": s:fg})
endif
call s:h("Pmenu",         {"fg": s:fg, "bg": s:bg_light})
call s:h("PmenuSel",      {"fg": s:bg, "bg": s:blue})
call s:h("PmenuSbar",     {"fg": s:fg, "bg": s:bg_light})
call s:h("PmenuThumb",    {"fg": s:fg, "bg": s:bg_light})
" call s:h("Pmenu",         {"fg": s:bg_light, "bg": s:fg})
" call s:h("PmenuSel",      {"fg": s:fg_bright, "bg": s:fg_dark})
" call s:h("PmenuSbar",     {"fg": s:fg, "bg": s:fg_bright})
" call s:h("PmenuThumb",    {"fg": s:bg, "bg": s:fg})
call s:h("TabLine",       {"fg": s:fg_dark, "bg": s:bg_light})
call s:h("TabLineSel",    {"fg": s:fg_bright, "bg": s:bg_light, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",   {"fg": s:fg_dark, "bg": s:bg_light})
call s:h("CursorColumn",  {"bg": s:bg_light})
call s:h("CursorLine",    {"bg": s:bg_light})
call s:h("ColorColumn",   {"bg": s:bg_light})

" remainder of syntax highlighting
call s:h("MatchParen",    {"bg": s:bg_light, "fg": s:fg})
call s:h("qfLineNr",      {"fg": s:fg_dark})

" nvim-only groups {{{2
hi! link TermCursor Cursor
hi! link TermCursorNC Cursor
hi! link EndOfBuffer NonText

" Plugin Groups {{{1
" GitGutter {{{2
call s:h("GitGutterAdd",            {"fg": s:green})
call s:h("GitGutterChange",         {"fg": s:yellow})
call s:h("GitGutterDelete",         {"fg": s:red})
call s:h("GitGutterChangeDelete",   {"fg": s:orange})

" DiffChar {{{2
call s:h("_DiffAddPos",             {"fg": s:green})
call s:h("_DiffPair",               {"fg": s:yellow})
call s:h("_DiffDelPos",             {"fg": s:red})
hi! link dcDiffDelPos               _DiffDelPos
hi! link dcDiffAddPos               _DiffAddPos
hi! link dcDiffPair                 _DiffPair
hi! link dcDiffChange               Normal
hi! link dcDiffDelStr               Normal
hi! link dcDiffText                 Normal

" Pandoc Markdown {{{2
hi! link pandocAtxStart             Title
call s:h("pandocEmphasis",          {"fg": s:fg_light, "gui": "italic", "cterm": "italic"})
call s:h("pandocStrong",            {"fg": s:fg_light, "gui": "bold", "cterm": "bold"})
call s:h("pandocStrongEmphasis",    {"fg": s:fg_light, "gui": "bold,italic", "cterm": "bold,italic"})
hi! link pandocEmphasisInStrong     pandocStrongEmphasis

hi! link pandocOperator             Comment
hi! link pandocCiteLocator          Delimiter
hi! link pandocImageIcon            Delimiter

call s:h("pandocReferenceLabel",    {"fg": s:purple, "gui": "italic", "cterm": "italic"})
call s:h("pandocReferenceURL",      {"fg": s:cyan, "gui": "italic", "cterm": "italic"})
call s:h("pandocNoFormatted",       {"fg": s:blue, "gui": "italic", "cterm": "italic"})

call s:h("pandocCiteKey",           {"fg": s:blue, "gui": "italic", "cterm": "italic"})
hi! link pandocCiteAnchor           pandocCiteKey
hi! link pandocPCite                pandocCiteKey
hi! link pandocICite                pandocCiteKey

" Markdown {{{2
hi! link markdownHeadingDelimiter   Title
hi! link markdownItalic             pandocEmphasis
hi! link markdownBold               pandocStrong
hi! link markdownLinkDelimiter      pandocOperator
hi! link markdownLinkTextDelimiter  pandocOperator
hi! link markdownLinkText           pandocReferenceLabel
hi! link markdownUrl                pandocReferenceURL

" Critic Markup {{{2
if exists("g:CriticHC") && g:CriticHC == 1
  call s:h("criticAdd",             {"bg": s:green,  "fg",: s:bg})
  call s:h("criticDel",             {"bg": s:red,    "fg",: s:bg})
  call s:h("criticMeta",            {"bg": s:pink,   "fg",: s:bg})
  call s:h("criticHighlighter",     {"bg": s:yellow, "fg",: s:bg})
else
  call s:h("criticAdd",             {"fg": s:green})
  call s:h("criticDel",             {"fg": s:red})
  call s:h("criticMeta",            {"fg": s:pink})
  call s:h("criticHighlighter",     {"fg": s:yellow})
endif

" Matlab {{{2
hi! link matlabCellComment          Title
hi! link matlabCellCommentIndented  Title
hi! link matlabDelimiter            Delimiter

" NERDTree {{{2
call s:h("NERDTreeExecFile",        {"fg": s:pink})
call s:h("NERDTreeLinkDir",         {"fg": s:cyan})
call s:h("NERDTreeLinkFile",        {"fg": s:cyan})
call s:h("NERDTreeLinkTarget",      {"fg": s:fg})

" ale {{{2
hi! link ALEErrorSign               ErrorMsg
hi! link ALEWarningSign             WarningMsg

" Tagbar {{{2
hi! link TagbarScope                Normal
hi! link TagbarType                 Comment
