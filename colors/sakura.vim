let g:colors_name = expand('<sfile>:t:r')
set background=dark
highlight clear
if exists("syntax_on")
	syntax reset
endif

let s:palette = {
		\ "pink": {"gui": "#ffd7ff", "cterm": "225"},
		\ "black": {"gui": "#3f3740", "cterm": "NONE"},
		\ "white": {"gui": "#ffffd7", "cterm": "230"},
		\ "blue": {"gui": "#87afff", "cterm": "111"},
		\ "grey": {"gui": "#808080", "cterm": "NONE"},
		\ "bblack": {"gui": "#655e66", "cterm": "NONE"},
		\ "green": {"gui": "#afd7af", "cterm": "151"},
		\ "purple": {"gui": "#af87d7", "cterm": "140"},
		\ "deeppink": {"gui": "#ff87ff", "cterm": "213"},
		\ "rose": {"gui": "#ffd7d7", "cterm": "224"},
		\ "lightpink": {"gui": "#ffafd7", "cterm": "218"},
		\ "darkpink": {"gui": "#d7afff", "cterm": "183"},
		\ "gold": {"gui": "#d7d787", "cterm": "186"},
		\ "red": {"gui": "#d75f5f", "cterm": "167"},
		\ "orange": {"gui": "#ff875f", "cterm": "209"},
		\ "brown": {"gui": "#af8787", "cterm": "138"},
		\ "skyblue": {"gui": "#afd7ff", "cterm": "153"},
		\ "none": {"gui": "NONE", "cterm": "NONE"},
\}

fun! s:SetColor(group, fg, bg, attr)
		let l:hi = "hi ".a:group.
		\" guifg=".s:palette[a:fg].gui.
		\" guibg=".s:palette[a:bg].gui.
		\" gui=".a:attr.
		\" ctermfg=".s:palette[a:fg].cterm.
		\" ctermbg=".s:palette[a:bg].cterm.
		\" cterm=".a:attr
		execute l:hi
endfun

":help group-name
":help highlight-groups
let s:syntaxes = [
		\ ["Normal", "pink", "black", "none"],
		\ ["Comment", "grey", "none", "none"],
		\ ["Constant", "skyblue", "none", "none"],
		\ ["String", "green", "none", "none"],
		\ ["Character", "green", "none", "none"],
		\ ["Number", "darkpink", "none", "none"],
		\ ["Boolean", "darkpink", "none", "none"],
		\ ["Float", "darkpink", "none", "none"],
		\ ["Identifier", "skyblue", "none", "none"],
		\ ["Function", "skyblue", "none", "none"],
		\ ["Statement", "purple", "none", "bold"],
		\ ["Conditional", "purple", "none", "none"],
		\ ["Repeat", "purple", "none", "none"],
		\ ["Label", "gold", "none", "none"],
		\ ["Operator", "gold", "none", "none"],
		\ ["Keyword", "purple", "none", "none"],
		\ ["Exception", "purple", "none", "none"],
		\ ["PreProc", "white", "none", "none"],
		\ ["Include", "white", "none", "none"],
		\ ["Define", "white", "none", "none"],
		\ ["Macro", "green", "none", "none"],
		\ ["PreCondit", "white", "none", "none"],
		\ ["Type", "deeppink", "none", "bold"],
		\ ["StorageClass", "deeppink", "none", "bold"],
		\ ["Structure", "deeppink", "none", "none"],
		\ ["Typedef", "deeppink", "none", "none"],
		\ ["Special", "skyblue", "none", "none"],
		\ ["SpecialChar", "rose", "none", "none"],
		\ ["Tag", "purple", "none", "bold"],
		\ ["Delimiter", "pink", "none", "none"],
		\ ["SpecialComment", "grey", "none", "none"],
		\ ["Debug", "pink", "none", "none"],
		\ ["Error", "red", "none", "none"],
		\ ["Todo", "orange", "none", "none"],
		\ ["SpecialKey", "grey", "none", "none"],
		\ ["EndOfBuffer", "black", "none", "none"],
		\ ["NonText", "grey", "none", "none"],
		\ ["Directory", "lightpink", "none", "none"],
		\ ["ErrorMsg", "red", "none", "bold,underline"],
		\ ["IncSearch", "black", "gold", "none"],
		\ ["Search", "black", "pink", "none"],
		\ ["MoreMsg", "blue", "none", "bold"],
		\ ["LineNr", "grey", "none", "none"],
		\ ["CursorLineNr", "pink", "bblack", "none"],
		\ ["Question", "darkpink", "none", "none"],
		\ ["StatusLine", "pink", "bblack", "none"],
		\ ["StatusLineNC", "grey", "bblack", "none"],
		\ ["VertSplit", "bblack", "none", "none"],
		\ ["Title", "darkpink", "none", "bold"],
		\ ["Visual", "black", "pink", "none"],
		\ ["VisualNOS", "black", "pink", "bold,underline"],
		\ ["WarningMsg", "orange", "none", "bold"],
		\ ["WildMenu", "black", "pink", "none"],
		\ ["Folded", "grey", "bblack", "none"],
		\ ["FoldColumn", "grey", "bblack", "none"],
		\ ["DiffAdd", "green", "none", "none"],
		\ ["DiffChange", "skyblue", "none", "none"],
		\ ["DiffDelete", "deeppink", "none", "none"],
		\ ["DiffText", "lightpink", "none", "none"],
		\ ["SignColumn", "pink", "none", "none"],
		\ ["Conceal", "grey", "none", "none"],
		\ ["SpellBad", "red", "none", "underline"],
		\ ["SpellCap", "orange", "none", "underline"],
		\ ["SpellRare", "brown", "none", "underline"],
		\ ["SpellLocal", "skyblue", "none", "underline"],
		\ ["Pmenu", "pink", "none", "none"],
		\ ["PmenuSel", "black", "white", "none"],
		\ ["PmenuSbar", "pink", "none", "none"],
		\ ["PmenuThumb", "pink", "grey", "none"],
		\ ["TabLine", "pink", "none", "none"],
		\ ["TabLineSel", "black", "green", "none"],
		\ ["TabLineFill", "grey", "none", "none"],
		\ ["CursorColumn", "pink", "none", "none"],
		\ ["CursorLine", "none", "bblack", "none"],
		\ ["ColorColumn", "pink", "none", "none"],
		\ ["QuickFixLine", "skyblue", "none", "none"],
		\ ["StatusLineTerm", "pink", "none", "none"],
		\ ["StatusLineTermNC", "grey", "none", "none"],
		\ ["Cursor", "black", "pink", "none"],
		\ ["lCursor", "black", "pink", "none"],
		\ ["MatchParen", "lightpink", "black", "bold"],
		\ ["@variable", "pink", "black", "none"],
		\ ["NormalFloat", "pink", "black", "none"],
		\ ["FloatBorder", "pink", "black", "none"],
\]

for syntax in s:syntaxes
		call s:SetColor(syntax[0], syntax[1], syntax[2], syntax[3])
endfor
