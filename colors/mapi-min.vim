" mapi-min
" Scheme: by Alex Kurowski, based on Base16, but with less colors

hi clear
syntax reset
let g:colors_name = "mapi-min"

let s:prim = "255" " Primary color
let s:scnd = "245" " Secondary color
let s:cmnt = "240" " Comments
let s:hidn = "235" " Barely visible

let s:col0 = "0"   " #1c1c20 - Background
let s:col1 = "1"   " #ff4c95 - Red
let s:col2 = "2"   " #9eff3c - Green
let s:col3 = "3"   " #d7d787 - Yellow
let s:col4 = "4"   " #87d7ff - Blue

" Highlighting functions
fun <sid>hi(group, fg, bg)
  exec "hi " . a:group . " ctermfg=none ctermbg=none cterm=none"

  if a:fg != ""
    exec "hi " . a:group . " ctermfg=" . a:fg
  endif
  if a:bg != ""
    exec "hi " . a:group . " ctermbg=" . a:bg
  endif

  exec "hi " . a:group . " cterm=none"
endfun

fun <sid>hr(group, fg, bg)
  if a:fg != ""
    exec "hi " . a:group . " ctermfg=" . a:fg
  endif
  if a:bg != ""
    exec "hi " . a:group . " ctermbg=" . a:bg
  endif

  exec "hi " . a:group . " cterm=reverse"
endfun

" Vim editor colors
call <sid>hi("Bold",          "",     "")
call <sid>hi("Debug",         s:col1, "")
call <sid>hi("Directory",     s:scnd, "")
call <sid>hi("Error",         s:col1, "")
call <sid>hi("ErrorMsg",      s:col1, s:col0)
call <sid>hi("Exception",     s:col3, "")
call <sid>hi("FoldColumn",    s:cmnt, s:hidn)
call <sid>hi("Folded",        s:cmnt, s:hidn)
call <sid>hi("IncSearch",     s:hidn, s:col3)
call <sid>hi("Italic",        "",     "")
call <sid>hi("Macro",         s:col1, "")
call <sid>hi("MatchParen",    s:col0, s:cmnt)
call <sid>hi("ModeMsg",       s:col2, "")
call <sid>hi("MoreMsg",       s:col2, "")
call <sid>hi("Question",      s:scnd, "")
call <sid>hi("Search",        s:hidn, s:col3)
call <sid>hi("SpecialKey",    s:cmnt, "")
call <sid>hi("TooLong",       s:col1, "")
call <sid>hi("Underlined",    s:col3, "")
call <sid>hi("Visual",        s:prim, s:cmnt)
call <sid>hi("VisualNOS",     s:col1, "")
call <sid>hi("WarningMsg",    s:col1, "")
call <sid>hi("WildMenu",      s:col1, "")
call <sid>hi("Title",         s:scnd, "")
call <sid>hi("Conceal",       s:scnd, s:col0)
call <sid>hi("Cursor",        s:col0, s:prim)
call <sid>hi("NonText",       s:cmnt, "")
call <sid>hi("Normal",        s:prim, s:col0)
call <sid>hi("LineNr",        s:cmnt, s:col0)
call <sid>hi("SignColumn",    s:cmnt, s:col0)
call <sid>hr("StatusLine",    s:prim, s:col0)
call <sid>hr("StatusLineNC",  s:col0, s:cmnt)
call <sid>hi("VertSplit",     s:cmnt, s:col0)
call <sid>hi("ColorColumn",   "",     s:hidn)
call <sid>hi("CursorColumn",  "",     s:hidn)
call <sid>hi("CursorLine",    "",     s:hidn)
call <sid>hi("CursorLineNr",  s:cmnt, s:col0)
call <sid>hi("PMenu",         s:scnd, s:hidn)
call <sid>hi("PMenuSel",      s:hidn, s:scnd)
call <sid>hi("TabLine",       s:cmnt, s:col0)
call <sid>hi("TabLineFill",   s:cmnt, s:col0)
call <sid>hi("TabLineSel",    s:col2, s:col0)

" Standard syntax highlighting
call <sid>hi("Boolean",      s:col3, "")
call <sid>hi("Character",    s:col2, "")
call <sid>hi("Comment",      s:cmnt, "")
call <sid>hi("Conditional",  s:col4, "")
call <sid>hi("Constant",     s:col4, "")
call <sid>hi("Define",       s:scnd, "")
call <sid>hi("Delimiter",    s:cmnt, "")
call <sid>hi("Float",        s:col3, "")
call <sid>hi("Function",     s:prim, "")
call <sid>hi("Identifier",   s:col4, "")
call <sid>hi("Include",      s:scnd, "")
call <sid>hi("Keyword",      s:scnd, "")
call <sid>hi("Label",        s:col4, "")
call <sid>hi("Number",       s:col3, "")
call <sid>hi("Operator",     s:prim, "")
call <sid>hi("PreProc",      s:col3, "")
call <sid>hi("Repeat",       s:col4, "")
call <sid>hi("Special",      s:col4, "")
call <sid>hi("SpecialChar",  s:cmnt, "")
call <sid>hi("Statement",    s:col4, "")
call <sid>hi("StorageClass", s:prim, "")
call <sid>hi("String",       s:col2, "")
call <sid>hi("Structure",    s:scnd, "")
call <sid>hi("Tag",          s:col3, "")
call <sid>hi("Todo",         s:scnd, "")
call <sid>hi("Type",         s:col4, "")
call <sid>hi("Typedef",      s:col3, "")
call <sid>hi("Noise",        s:scnd, "")

" C highlighting
call <sid>hi("cOperator",   s:cmnt, "")
call <sid>hi("cPreCondit",  s:scnd, "")

" C# highlighting
call <sid>hi("csClass",                 s:col3, "")
call <sid>hi("csAttribute",             s:col3, "")
call <sid>hi("csModifier",              s:scnd, "")
call <sid>hi("csType",                  s:prim, "")
call <sid>hi("csUnspecifiedStatement",  s:scnd, "")
call <sid>hi("csContextualStatement",   s:scnd, "")
call <sid>hi("csNewDecleration",        s:prim, "")

" CSS highlighting
call <sid>hi("cssBraces",         s:scnd, "")
call <sid>hi("cssClassName",      s:col4, "")
call <sid>hi("cssClassNameDot",   s:col4, "")
call <sid>hi("cssColor",          s:col3, "")
call <sid>hi("cssIdentifier",     s:col4, "")
call <sid>hi("cssUnitDecorators", s:col3, "")

" Diff highlighting
call <sid>hi("DiffAdd",      s:col2, s:col0)
call <sid>hi("DiffChange",   s:col3, s:col0)
call <sid>hi("DiffDelete",   s:col1, s:col0)
call <sid>hi("DiffText",     s:scnd, s:col0)
call <sid>hi("DiffAdded",    s:col2, s:col0)
call <sid>hi("DiffFile",     s:col1, s:col0)
call <sid>hi("DiffNewFile",  s:col2, s:col0)
call <sid>hi("DiffLine",     s:scnd, s:col0)
call <sid>hi("DiffRemoved",  s:col1, s:col0)

" Git highlighting
call <sid>hi("gitCommitOverflow",  s:col1, "")
call <sid>hi("gitCommitSummary",   s:col2, "")

" GitGutter highlighting
call <sid>hi("GitGutterAdd",           s:col2, "")
call <sid>hi("GitGutterChange",        s:scnd, "")
call <sid>hi("GitGutterDelete",        s:col1, "")
call <sid>hi("GitGutterChangeDelete",  s:scnd, "")

" HTML highlighting
call <sid>hi("htmlBold",    s:col3, "")
call <sid>hi("htmlItalic",  s:scnd, "")
call <sid>hi("htmlEndTag",  s:prim, "")
call <sid>hi("htmlTag",     s:prim, "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:col3, "")
call <sid>hi("javaScriptBraces",  s:prim, "")
call <sid>hi("javaScriptNumber",  s:col3, "")
call <sid>hi("jsStorageClass",    s:col4, "")
call <sid>hi("jsObjectKey",       s:prim, "")
call <sid>hi("jsExport",          s:col4, "")
call <sid>hi("jsReturn",          s:col4, "")

" Mail highlighting
call <sid>hi("mailQuoted1",  s:col3, "")
call <sid>hi("mailQuoted2",  s:col2, "")
call <sid>hi("mailQuoted3",  s:scnd, "")
call <sid>hi("mailQuoted4",  s:cmnt, "")
call <sid>hi("mailQuoted5",  s:scnd, "")
call <sid>hi("mailQuoted6",  s:col3, "")
call <sid>hi("mailURL",      s:scnd, "")
call <sid>hi("mailEmail",    s:scnd, "")

" Markdown highlighting
call <sid>hi("markdownCode",              s:col2, "")
call <sid>hi("markdownError",             s:prim, s:col0)
call <sid>hi("markdownCodeBlock",         s:col2, "")
call <sid>hi("markdownHeadingDelimiter",  s:scnd, "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:scnd, "")
call <sid>hi("NERDTreeExecFile",  s:prim, "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  s:prim, "")
call <sid>hi("phpComparison",      s:prim, "")
call <sid>hi("phpParent",          s:prim, "")

" Python highlighting
call <sid>hi("pythonOperator",  s:scnd, "")
call <sid>hi("pythonRepeat",    s:scnd, "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               s:col4, "")
call <sid>hi("rubyDefine",                  s:col4, "")
call <sid>hi("rubyConditional",             s:col4, "")
call <sid>hi("rubyConstant",                s:col3, "")
call <sid>hi("rubyInterpolation",           s:prim, "")
call <sid>hi("rubyInterpolationDelimiter",  s:cmnt, "")
call <sid>hi("rubyRegexp",                  s:cmnt, "")
call <sid>hi("rubySymbol",                  s:col2, "")
call <sid>hi("rubyStringDelimiter",         s:col2, "")
call <sid>hi("rubyAccess",                  s:col3, "")
call <sid>hi("rubyMacro",                   s:col3, "")

" SASS highlighting
call <sid>hi("sassidChar",        s:col4, "")
call <sid>hi("sassClassChar",     s:col4, "")
call <sid>hi("sassInclude",       s:scnd, "")
call <sid>hi("sassMixing",        s:scnd, "")
call <sid>hi("sassMixinName",     s:scnd, "")
call <sid>hi("sassFunction",      s:col3, "")
call <sid>hi("sassVariable",      s:col3, "")
call <sid>hi("sassCssAttribute",  s:col3, "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     s:col2, s:hidn)
call <sid>hi("SignifySignChange",  s:scnd, s:hidn)
call <sid>hi("SignifySignDelete",  s:prim, s:hidn)

" Spelling highlighting
call <sid>hi("SpellBad",     "", s:col0)
call <sid>hi("SpellLocal",   "", s:col0)
call <sid>hi("SpellCap",     "", s:col0)
call <sid>hi("SpellRare",    "", s:col0)

" Remove functions
delf <sid>hi
delf <sid>hr

" Remove color variables
unlet s:prim s:scnd s:cmnt s:hidn
unlet s:col0 s:col1 s:col2 s:col3 s:col4
