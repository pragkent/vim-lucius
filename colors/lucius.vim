" Kent's Vim colorsheme
" Derived from Jonathan Filip's lucius colorscheme

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let colors_name="lucius"

" Some other colors to save
" blue: 3eb8e5
" green: 92d400
" c green: d5f876, cae682

" Base color
" ----------
hi Normal guifg=#e0e0e0 guibg=#1c1c1c ctermfg=253 ctermbg=234


" Comment Group
" -------------
" any comment
hi Comment guifg=#585858 gui=NONE ctermfg=240 cterm=NONE


" Constant Group
" --------------
" any constant
hi Constant guifg=#91d631 gui=NONE ctermfg=149 cterm=NONE
hi link String Constant
hi link Character Constant
hi link Number Constant
hi link Boolean Constant
hi link Float Constant


" Identifier Group
" ----------------
" any variable name
hi Identifier guifg=#00d7af gui=NONE ctermfg=43 cterm=NONE
" function, method, class
hi link Function Identifier

" Statement Group
" ---------------
" any statement
hi Statement guifg=#ff5f87 gui=NONE ctermfg=204 cterm=NONE
" if, then, else
hi link Conditional Statement
" try, catch, throw, raise
hi link Exception Statement
" for, while, do
hi link Repeat Statement
" case, default
hi link Label Statement
" sizeof, +, *
hi link Operator Statement
" any other keyword
hi link Keyword Statement


" Preprocessor Group
" ------------------
" generic preprocessor
hi PreProc guifg=#8787ff gui=NONE ctermfg=105 cterm=NONE
" #include
hi link Include PreProc
" #define
hi link Define PreProc
" same as define
hi link Macro PreProc
" #if, #else, #endif
hi link PreCondit PreProc


" Type Group
" ----------
" int, long, char
hi Type guifg=#00d7ff gui=NONE ctermfg=45 cterm=NONE
" static, register, volative
hi link StorageClass Type
" struct, union, enum
hi link Structure Type
" typedef
hi link Typedef Type

" Special Group
" -------------
" any special symbol
hi Special guifg=#cca3b3 gui=NONE ctermfg=181 cterm=NONE
" special character in a constant
hi link SpecialChar Special
" things you can CTRL-]
hi link Tag Special
" character that needs attention
hi link Delimiter Special
" special things inside a comment
hi link SpecialComment Special
" debugging statements
hi link Debug Special


" Underlined Group
" ----------------
" text that stands out, html links
hi Underlined guifg=fg gui=underline ctermfg=fg cterm=underline


" Ignore Group
" ------------
" left blank, hidden
hi Ignore guifg=bg ctermfg=bg


" Error Group
" -----------
" any erroneous construct
hi Error guifg=#e37170 guibg=#432323 gui=NONE ctermfg=167 ctermbg=52 cterm=NONE


" Todo Group
" ----------
" todo, fixme, note, xxx
hi Todo guifg=#efef8f guibg=NONE gui=underline ctermfg=228 ctermbg=NONE cterm=underline


" Spelling
" --------
" word not recognized
hi SpellBad guisp=#ee0000 gui=undercurl ctermbg=196 cterm=undercurl
" word not capitalized
hi SpellCap guisp=#eeee00 gui=undercurl ctermbg=226 cterm=undercurl
" rare word
hi SpellRare guisp=#ffa500 gui=undercurl ctermbg=214 cterm=undercurl
" wrong spelling for selected region
hi SpellLocal guisp=#ffa500 gui=undercurl ctermbg=214 cterm=undercurl


" Cursor
" ------
" character under the cursor
hi Cursor guifg=bg guibg=#a3e3ed ctermfg=bg ctermbg=153
" like cursor, but used when in IME mode
hi CursorIM guifg=bg guibg=#96cdcd ctermfg=bg ctermbg=116
" cursor column
hi CursorColumn guifg=NONE guibg=#404448 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
" cursor line/row
hi CursorLine gui=NONE guibg=#404448 gui=NONE cterm=NONE ctermbg=236 cterm=NONE


" Misc
" ----
" directory names and other special names in listings
hi Directory guifg=#c0e0b0 gui=NONE ctermfg=151 cterm=NONE
" error messages on the command line
hi ErrorMsg guifg=#d75f5f guibg=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
" column separating vertically split windows
hi VertSplit guifg=#777777 guibg=#363946 gui=NONE ctermfg=242 ctermbg=237 cterm=NONE
" columns where signs are displayed (used in IDEs)
hi SignColumn guifg=#9fafaf guibg=#181818 gui=NONE ctermfg=145 ctermbg=233 cterm=NONE
" line numbers
hi LineNr guifg=#818698 guibg=#363946 ctermfg=245 ctermbg=237
" match parenthesis, brackets
hi MatchParen guifg=#00ff00 guibg=NONE gui=bold ctermfg=46 ctermbg=NONE cterm=bold
" the 'more' prompt when output takes more than one line
hi MoreMsg guifg=#2e8b57 gui=NONE ctermfg=29 cterm=NONE
" text showing what mode you are in
hi ModeMsg guifg=#76d5f8 guibg=NONE gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
" the '~' and '@' and showbreak, '>' double wide char doesn't fit on line
hi NonText guifg=#404040 gui=NONE ctermfg=238 cterm=NONE
" the hit-enter prompt (show more output) and yes/no questions
hi Question guifg=fg gui=NONE ctermfg=fg cterm=NONE
" meta and special keys used with map, unprintable characters
hi SpecialKey guifg=#405060 ctermfg=239
" titles for output from :set all, :autocmd, etc
hi Title guifg=#62bdde gui=NONE ctermfg=74 cterm=NONE
" warning messages
hi WarningMsg guifg=#e5786d gui=NONE ctermfg=173 cterm=NONE
" current match in the wildmenu completion
hi WildMenu guifg=#cae682 guibg=#363946 gui=bold,underline ctermfg=16 ctermbg=186 cterm=bold
" color column highlighting
hi ColorColumn guifg=NONE guibg=#403630 gui=NONE ctermfg=NONE ctermbg=94 cterm=NONE


" Diff
" ----
" added line
hi DiffAdd guifg=#80a090 guibg=#313c36 gui=NONE ctermfg=fg ctermbg=22 cterm=NONE
" changed line
hi DiffChange guifg=NONE guibg=#4a343a gui=NONE ctermfg=fg ctermbg=52 cterm=NONE
" deleted line
hi DiffDelete guifg=#6c6661 guibg=#3c3631 gui=NONE ctermfg=fg ctermbg=58 cterm=NONE
" changed text within line
hi DiffText guifg=#f05060 guibg=#4a343a gui=bold ctermfg=203 ctermbg=52 cterm=bold


" Folds
" -----
" line used for closed folds
hi Folded guifg=#d0e0f0 guibg=#202020 gui=NONE ctermfg=117 ctermbg=235 cterm=NONE
" column on side used to indicated open and closed folds
hi FoldColumn guifg=#91d6f8 guibg=#363946 gui=NONE ctermfg=117 ctermbg=238 cterm=NONE


" Search
" ------
" highlight incremental search text; also highlight text replaced with :s///c
hi IncSearch guifg=#66ffff gui=reverse ctermfg=87 cterm=reverse
" hlsearch (last search pattern), also used for quickfix
hi Search guibg=#ffaa33 gui=NONE ctermbg=214 cterm=NONE


" Popup Menu
" ----------
" normal item in popup
hi Pmenu guifg=#e0e0e0 guibg=#444444 gui=NONE ctermfg=253 ctermbg=238 cterm=NONE
" selected item in popup
hi PmenuSel guifg=#cae682 guibg=#505860 gui=NONE ctermfg=253 ctermbg=32 cterm=NONE
" scrollbar in popup
hi PMenuSbar guibg=#505860 gui=NONE ctermbg=59 cterm=NONE
" thumb of the scrollbar in the popup
hi PMenuThumb guibg=#808890 gui=NONE ctermbg=102 cterm=NONE


" Status Line
" -----------
" status line for current window
hi StatusLine guifg=#e0e0e0 guibg=#363946 gui=bold ctermfg=254 ctermbg=237 cterm=bold
" status line for non-current windows
hi StatusLineNC guifg=#767986 guibg=#363946 gui=NONE ctermfg=244 ctermbg=237 cterm=NONE


" Tab Lines
" ---------
" tab pages line, not active tab page label
hi TabLine guifg=#b6bf98 guibg=#363946 gui=NONE ctermfg=244 ctermbg=236 cterm=NONE
" tab pages line, where there are no labels
hi TabLineFill guifg=#cfcfaf guibg=#363946 gui=NONE ctermfg=187 ctermbg=236 cterm=NONE
" tab pages line, active tab page label
hi TabLineSel guifg=#efefef guibg=#414658 gui=bold ctermfg=254 ctermbg=236 cterm=bold


" Visual
" ------
" visual mode selection
hi Visual guifg=NONE guibg=#364458 ctermfg=NONE ctermbg=24
" visual mode selection when vim is not owning the selection (x11 only)
hi VisualNOS guifg=fg gui=underline ctermfg=fg cterm=underline
