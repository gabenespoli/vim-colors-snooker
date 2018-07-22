" Vim Color File
" Name:       sumach.vim
" Maintainer: Gabe Nespoli (github.com/gabenespoli)
" file modified from reedes/vim-colors-pencil
" scheme inspired by altercation/vim-colors-solarized
" palette inspired by morhetz/gruvbox

" Setup {{{1
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='sumach'

if !exists('g:sumach_terminal_italics')
  let g:sumach_terminal_italics = 0
endif

if !exists('g:sumach_spell_undercurl')
  let g:sumach_spell_undercurl = 1
endif

if !exists('g:sumach_high_contrast')
  let g:sumach_high_contrast = 1
endif

" Colors {{{1
if &background ==? 'dark'
  let s:bg              = { 'gui': '#1c1c1c', 'cterm': '0'  }
  let s:bg_light        = { 'gui': '#2b2b2b', 'cterm': '10' }
  let s:bg_sel          = { 'gui': '#3a3a3a', 'cterm': '11' }
  let s:fg_com          = { 'gui': '#585858', 'cterm': '8'  }
  let s:fg_dark         = { 'gui': '#767676', 'cterm': '12' }
  let s:fg              = { 'gui': '#808080', 'cterm': '7'  }
  let s:fg_light        = { 'gui': '#a39e99', 'cterm': '13' }
  let s:fg_bright       = { 'gui': '#bcb2a8', 'cterm': '15' }
  let s:red             = { 'gui': '#c34b4b', 'cterm': '1'  }
  let s:orange          = { 'gui': '#af5f37', 'cterm': '9'  }
  let s:yellow          = { 'gui': '#c38737', 'cterm': '3'  }
  let s:green           = { 'gui': '#7d7d37', 'cterm': '2'  }
  let s:cyan            = { 'gui': '#4b875f', 'cterm': '6'  }
  let s:blue            = { 'gui': '#37879b', 'cterm': '4'  }
  let s:purple          = { 'gui': '#786ea7', 'cterm': '5'  }
  let s:pink            = { 'gui': '#af6487', 'cterm': '14' }

else
  let s:bg              = { 'gui': '#ffffff', 'cterm': '0'  }
  let s:bg_light        = { 'gui': '#ebebeb', 'cterm': '10' }
  let s:bg_sel          = { 'gui': '#dadada', 'cterm': '11' }
  let s:fg_com          = { 'gui': '#8a8a8a', 'cterm': '8'  }
  let s:fg_dark         = { 'gui': '#9e9e9e', 'cterm': '12' }
  let s:fg              = { 'gui': '#3a3a3a', 'cterm': '7'  }
  let s:fg_light        = { 'gui': '#1c1c1c', 'cterm': '13' }
  let s:fg_bright       = { 'gui': '#000000', 'cterm': '15' }
  let s:red             = { 'gui': '#ff4b4b', 'cterm': '1'  }
  let s:orange          = { 'gui': '#9b5f00', 'cterm': '9'  }
  let s:yellow          = { 'gui': '#eb8700', 'cterm': '3'  }
  let s:green           = { 'gui': '#879b37', 'cterm': '2'  }
  let s:cyan            = { 'gui': '#37915f', 'cterm': '6'  }
  let s:blue            = { 'gui': '#3773ff', 'cterm': '4'  }
  let s:purple          = { 'gui': '#9b5fff', 'cterm': '5'  }
  let s:pink            = { 'gui': '#ff739b', 'cterm': '14' }
endif

if g:sumach_spell_undercurl == 1
  let s:sp_un      = 'undercurl'
else
  let s:sp_un      = 'underline'
endif

" shamelessly stolen from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  " Not all terminals support italics properly. If yours does, opt-in.
  if g:sumach_terminal_italics == 0 && has_key(a:style, 'cterm') && a:style['cterm'] ==? 'italic'
    unlet a:style.cterm
  endif
  execute 'highlight' a:group
    \ 'guifg='   (has_key(a:style, 'fg')    ? a:style.fg.gui   : 'NONE')
    \ 'guibg='   (has_key(a:style, 'bg')    ? a:style.bg.gui   : 'NONE')
    \ 'guisp='   (has_key(a:style, 'sp')    ? a:style.sp.gui   : 'NONE')
    \ 'gui='     (has_key(a:style, 'gui')   ? a:style.gui      : 'NONE')
    \ 'ctermfg=' (has_key(a:style, 'fg')    ? a:style.fg.cterm : 'NONE')
    \ 'ctermbg=' (has_key(a:style, 'bg')    ? a:style.bg.cterm : 'NONE')
    \ 'cterm='   (has_key(a:style, 'cterm') ? a:style.cterm    : 'NONE')
endfunction

" Main Groups {{{1
" (see `:h w18`)

call s:h('Normal',        {'bg': s:bg, 'fg': s:fg})
call s:h('Cursor',        {'bg': s:fg, 'fg': s:bg })
call s:h('Comment',       {'fg': s:fg_com, 'gui': 'italic', 'cterm': 'italic'})

call s:h('Constant',      {'fg': s:cyan})
hi! link String           Constant
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant

call s:h('Identifier',    {'fg': s:green})
hi! link Function         Identifier

call s:h('Statement',     {'fg': s:blue})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
call s:h('Operator',      {'fg': s:fg_com})
hi! link Keyword          Statement
hi! link Exception        Statement

call s:h('PreProc',       {'fg': s:purple})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

call s:h('Type',          {'fg': s:yellow})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

call s:h('Special',       {'fg': s:orange})
hi! link SpecialChar      Special
hi! link Tag              Special
call s:h('Delimiter',     {'fg': s:fg_com})
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h('Underlined',    {'gui': 'underline', 'cterm': 'underline'})
call s:h('Ignore',        {'fg': s:bg_sel})
call s:h('Error',         {'fg': s:red})
call s:h('Todo',          {'fg': s:pink})

" Extra Groups {{{1
" ordered according to `:help hitest.vim`

call s:h('SpecialKey',    {'fg': s:fg_dark})
if has('nvim')
  call s:h('NonText',     {'fg': s:pink, 'gui': 'bold', 'cterm': 'bold'})
  call s:h('Whitespace',  {'fg': s:bg_light})
  call s:h('EndOfBuffer', {'fg': s:bg})
else
  call s:h('NonText',     {'fg': s:bg_light})
endif
call s:h('Directory',     {'fg': s:blue})
call s:h('ErrorMsg',      {'fg': s:fg_bright, 'bg': s:red})
call s:h('IncSearch',     {'bg': s:yellow, 'fg': s:bg})
call s:h('Search',        {'bg': s:yellow, 'fg': s:bg})
call s:h('MoreMsg',       {'fg': s:fg_com})
hi! link ModeMsg MoreMsg

call s:h('LineNr',        {'fg': s:fg_com})
call s:h('CursorLineNr',  {'fg': s:fg_dark})
call s:h('Question',      {'fg': s:red})
call s:h('StatusLine',    {'fg': s:fg_bright, 'bg': s:bg_light})
call s:h('Conceal',       {'fg': s:fg})
call s:h('StatusLineNC',  {'bg': s:bg_light, 'fg': s:fg_com})
call s:h('VertSplit',     {'bg': s:bg, 'fg': s:bg})
call s:h('Title',         {'fg': s:fg_bright, 'bg': s:bg, 'gui': 'bold', 'cterm': 'bold,italic'})
call s:h('Visual',        {'bg': s:bg_sel, 'fg': s:fg_light})
call s:h('VisualNOS',     {'bg': s:bg_light, 'fg': s:fg})
call s:h('WarningMsg',    {'fg': s:fg_bright, 'bg': s:pink})
call s:h('WildMenu',      {'fg': s:bg_light, 'bg': s:fg_bright})
call s:h('Folded',        {'fg': s:fg, 'bg': s:bg_light, 'gui': 'italic', 'cterm': 'italic'})
call s:h('FoldColumn',    {'fg': s:fg})
call s:h('SignColumn',    {'fg': s:fg})

if g:sumach_high_contrast
  call s:h('DiffAdd',       {'fg': s:green,  'gui': 'reverse', 'cterm': 'reverse'})
  call s:h('DiffDelete',    {'fg': s:red,    'gui': 'reverse', 'cterm': 'reverse'})
  call s:h('DiffChange',    {'fg': s:fg})
  call s:h('DiffText',      {'fg': s:yellow, 'gui': 'reverse', 'cterm': 'reverse'})
else
  call s:h('DiffAdd',       {'fg': s:green,  'gui': 'none', 'cterm': 'none'})
  call s:h('DiffDelete',    {'fg': s:red,    'gui': 'none', 'cterm': 'none'})
  call s:h('DiffChange',    {'fg': s:fg})
  call s:h('DiffText',      {'fg': s:yellow, 'gui': 'none', 'cterm': 'none'})
endif

if has('gui_running')
  call s:h('SpellBad',    {'gui': s:sp_un, 'sp': s:red})
  call s:h('SpellCap',    {'gui': s:sp_un, 'sp': s:purple})
  call s:h('SpellRare',   {'gui': s:sp_un, 'sp': s:cyan})
  call s:h('SpellLocal',  {'gui': s:sp_un, 'sp': s:yellow})
else
  call s:h('SpellBad',    {'cterm': s:sp_un})
  call s:h('SpellCap',    {'cterm': s:sp_un})
  call s:h('SpellRare',   {'cterm': s:sp_un})
  call s:h('SpellLocal',  {'cterm': s:sp_un})
endif

call s:h('Pmenu',         {'fg': s:fg, 'bg': s:bg_light})
hi! link PmenuSel         Cursor
call s:h('PmenuSbar',     {'fg': s:fg, 'bg': s:bg_light})
call s:h('PmenuThumb',    {'fg': s:fg, 'bg': s:bg_light})
call s:h('TabLine',       {'fg': s:fg_dark, 'bg': s:bg_light})
call s:h('TabLineSel',    {'fg': s:fg_light, 'bg': s:bg_light})
call s:h('TabLineFill',   {'fg': s:fg_dark, 'bg': s:bg})
call s:h('CursorColumn',  {'bg': s:bg_light})
call s:h('CursorLine',    {'bg': s:bg_light})
call s:h('ColorColumn',   {'bg': s:bg_light})

" remainder of syntax highlighting
call s:h('MatchParen',    {'bg': s:bg_light, 'fg': s:fg})
call s:h('qfLineNr',      {'fg': s:fg_dark})

" nvim-only groups {{{2
if has('nvim')
  hi! link TermCursor     Cursor
  hi! link TermCursorNC   Cursor
endif

" Syntaxes {{{1
" Markdown {{{2
hi! link markdownHeadingDelimiter   Title
call s:h('markdownItalic',          {'fg': s:fg_light, 'gui': 'italic', 'cterm': 'italic'})
call s:h('markdownBold',            {'fg': s:fg_light, 'gui': 'bold', 'cterm': 'bold'})
call s:h('markdownBoldItalic',      {'fg': s:fg_light, 'gui': 'bold,italic', 'cterm': 'bold,italic'})
hi! link markdownItalicDelimiter    Comment
hi! link markdownBoldDelimiter      Comment
hi! link markdownBoldItalicDelimiter Comment
hi! link markdownLinkDelimiter      Comment
hi! link markdownLinkTextDelimiter  Comment
call s:h('markdownLinkText',        {'fg': s:purple, 'gui': 'italic', 'cterm': 'italic'})
call s:h('markdownUrl',             {'fg': s:cyan, 'gui': 'italic', 'cterm': 'italic'})
" hi! link markdownUrlTitle           pandocLinkTip
hi! link markdownUrlTitleDelimiter  markdownUrlTitle

" Pandoc Markdown {{{2
hi! link pandocAtxStart             markdownHeadingDelimiter
hi! link pandocEmphasis             markdownItalic
hi! link pandocStrong               markdownBold
hi! link pandocStrongEmphasis       markdownBoldItalic
hi! link pandocEmphasisInStrong     markdownBoldItalic

hi! link pandocOperator             Comment
hi! link pandocReferenceLabel       markdownLinkText
hi! link pandocReferenceURL         markdownUrl
hi! link pandocLinkTip              markdownUrlTitle

hi! link pandocImageIcon            Delimiter
hi! link pandocCiteLocator          Delimiter
hi! link pandocFootnoteIDHead       Delimiter
hi! link pandocFootnoteIDTail       Delimiter

call s:h('pandocCiteKey',           {'fg': s:blue, 'gui': 'italic', 'cterm': 'italic'})
hi! link pandocCiteAnchor           pandocCiteKey
hi! link pandocPCite                pandocCiteKey
hi! link pandocICite                pandocCiteKey
hi! link pandocFootnoteID           pandocCiteKey
" code
hi! link pandocNoFormatted          pandocCiteKey

" Critic Markup {{{2
hi! link criticAdd                  DiffAdd
hi! link criticDel                  DiffDelete
hi! link criticHighlighter          DiffText
if g:sumach_high_contrast
  call s:h('criticMeta',            {'bg': s:pink, 'fg': s:bg})
else
  call s:h('criticMeta',            {'bg': s:bg, 'fg': s:pink})
endif

" Octave/Matlab {{{2
hi! link octaveDelimiter            Delimiter
hi! link octaveSemicolon            Normal
hi! link octaveBlockComment         Title
hi! link octaveVariable             Identifier
hi! link octaveOperator             Operator
hi! link octaveIdentifier           Identifier
hi! link octaveTab                  Error
hi! link matlabDelimiter            Delimiter
hi! link matlabCellComment          Title
hi! link matlabCellCommentIndented  Title

" vim {{{2
call s:h('vimGroup',                {'fg': s:blue})
hi! link vimBracket                 Special
hi! link vimFuncSID                 Keyword
hi! link vimMapMod                  Keyword
hi! link vimNotation                Special
hi! link vimOption                  Identifier

" Plugin Groups {{{1
" GitGutter / Signify {{{2
call s:h('GitGutterAdd',            {'fg': s:green})
call s:h('GitGutterChange',         {'fg': s:yellow})
call s:h('GitGutterDelete',         {'fg': s:red})
call s:h('GitGutterChangeDelete',   {'fg': s:orange})
call s:h('GitGutterAddLine',        {'fg': s:bg, 'bg': s:green})
call s:h('GitGutterChangeLine',     {'fg': s:bg, 'bg': s:yellow})
call s:h('GitGutterDeleteLine',     {'fg': s:bg, 'bg': s:red})
call s:h('GitGutterChangeDeleteLine', {'fg': s:bg, 'bg': s:orange})

call s:h('SignifySignAdd',          {'fg': s:green})
call s:h('SignifySignChange',       {'fg': s:yellow})
call s:h('SignifySignDelete',       {'fg': s:red})
call s:h('SignifySignChangeDelete', {'fg': s:orange})
call s:h('SignifyLineAdd',          {'fg': s:bg, 'bg': s:green})
call s:h('SignifyLineChange',       {'fg': s:bg, 'bg': s:yellow})
call s:h('SignifyLineDelete',       {'fg': s:bg, 'bg': s:red})
call s:h('SignifyLineChangeDelete', {'fg': s:bg, 'bg': s:orange})

" call s:h('diffAdded',               {'fg': s:green})
" call s:h('diffRemoved',             {'fg': s:red})

" DiffChar {{{2
hi! link dcDiffDelPos               Normal
hi! link dcDiffAddPos               DiffDelete
hi! link dcDiffPair                 DiffText
hi! link dcDiffChange               Normal
hi! link dcDiffDelStr               Normal
hi! link dcDiffText                 Normal

" CtrlP {{{2
call s:h('CtrlPMatch',              {'fg': s:yellow})
call s:h('CtrlPPrtBase',            {'fg': s:fg_bright, 'bg': s:bg})
hi! link CtrlPPrtCursor             Cursor
hi! link CtrlPBufferNr              Constant
hi! link CtrlPBufferInd             Type
hi! link CtrlPBufferHid             Normal
hi! link CtrlPBufferVis             Comment
hi! link CtrlPBufferCur             Question
hi! link CtrlPBufferHidMod          CtrlPBufferHid
hi! link CtrlPBufferVisMod          CtrlPBufferVis
hi! link CtrlPBufferCurMod          CtrlPBufferCur
hi! link CtrlPBufferPath            Comment
call s:h('CtrlPMode1',              {'fg': s:green, 'bg': s:bg_light})
hi! link CtrlPMode2                 StatusLine
call s:h('CtrlPStats',              {'fg': s:red, 'bg': s:bg_light})

" netrw {{{2
call s:h('netrwClassify',           {'fg': s:fg_com})
call s:h('netrwSymLink',            {'fg': s:cyan})
call s:h('netrwExe',                {'fg': s:pink})

" NERDTree {{{2
call s:h('NERDTreeExecFile',        {'fg': s:pink})
hi! link NERDTreeLinkFile           netrwSymLink
hi! link NERDTreeLinkDir            netrwSymLink
call s:h('NERDTreeLinkTarget',      {'fg': s:fg})

" Tagbar {{{2
hi! link TagbarScope                Normal
hi! link TagbarType                 Comment

" vim-notes {{{2
hi link notesTitle                  Title
hi link notesAtxHeading             Title
hi link notesAtxMarker              Title
