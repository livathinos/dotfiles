" Vim color file
" Maintainer:   Daniel Schierbeck <daniel.schierbeck@gmail.com>

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="satellite"

hi Normal    guifg=#ddddcc guibg=#030813 gui=none

" highlight groups
hi Cursor       guifg=black           guibg=yellow   gui=none
hi CursorLine   guibg=#131823
hi ErrorMsg     guifg=white           guibg=red      gui=none
hi VertSplit    guifg=gray40          guibg=gray40   gui=none
hi Folded       guifg=grey            guibg=grey30   gui=none
hi FoldColumn   guifg=tan             guibg=grey30   gui=none
hi IncSearch    guifg=#b0ffff         guibg=#2050d0
hi LineNr       guifg=#303040      gui=none
hi ModeMsg      guifg=SkyBlue         gui=none
hi MoreMsg      guifg=SeaGreen        gui=none
hi NonText      guifg=cyan            gui=none
hi Question     guifg=springgreen     gui=none
hi Search       guifg=gray80          guibg=#445599  gui=none
hi SpecialKey   guifg=cyan            gui=none
hi StatusLine   guifg=white           guibg=#202030  gui=bold ctermfg=darkblue ctermbg=white
hi StatusLineNC guifg=white           guibg=#030813   gui=none ctermfg=black
hi TabLine      guibg=#261d13         guifg=#aaa  gui=underline,bold
hi TabLineFill  guibg=#261d13         guifg=#aaa  gui=underline
hi TabLineSel   guibg=bg              guifg=#f7f7f1  gui=bold
hi Title        guifg=white           gui=none
hi Visual       guifg=white           guibg=SkyBlue4 gui=none
hi WarningMsg   guifg=salmon          gui=none
hi Pmenu        guifg=#000000         guibg=#a78869  gui=none
hi PmenuSbar    guifg=fg              guibg=#B99F86  gui=none
hi PmenuSel     guifg=bg              guibg=#c0aa94  gui=none
hi PmenuThumb   guifg=bg              guibg=#f7f7f1  gui=none
hi WildMenu     guifg=gray            guibg=gray17   gui=none
hi MatchParen   guifg=white           guibg=skyblue4 gui=bold
hi ColorColumn                        guibg=#131823


hi DiffAdded    guifg=#8F9D6A ctermfg=green
hi DiffRemoved  guifg=salmon ctermfg=red ctermbg=black

if has("spell")
    hi SpellBad   guisp=#f07070 gui=undercurl
    hi SpellCap   guisp=#7070f0 gui=undercurl
    hi SpellLocal guisp=#70f0f0 gui=undercurl
    hi SpellRare  guisp=#f070f0 gui=undercurl
endif

hi Keyword      guifg=#CDA869
hi Comment      guifg=#738C73     gui=none
hi Number       guifg=#A4C260
hi Constant     guifg=white         gui=none
hi Identifier   guifg=#EEEEDD
hi Function     guifg=white           gui=none
hi Type         guifg=#EEEEDD           gui=none
hi Statement    guifg=#CDA869 gui=none
hi Delimiter    guifg=#625224
""hi Delimiter    guifg=#997744
hi PreProc      guifg=#C2B470 gui=none
hi Special      guifg=#CDA869         gui=none
hi Character    guifg=#DDF2A4
hi Boolean      guifg=#AA88AA
hi Ignore       guifg=grey40          gui=none
hi Todo         guibg=#EEEE33 guifg=black gui=bold
hi String       guifg=#8F9D6A
hi SignColumn   guibg=#0B0804 gui=none
hi ShowMarksHLl guifg=lightgoldenrod2 guibg=#151207

hi link Operator Special
hi link Tag Constant
hi link Structure Special
hi link StorageClass Special


" color terminal definitions
hi SpecialKey   ctermfg=darkgreen
hi NonText      cterm=bold           ctermfg=darkblue
hi Directory    ctermfg=darkcyan
hi ErrorMsg     cterm=bold           ctermfg=7        ctermbg=1
hi IncSearch    cterm=NONE           ctermfg=yellow   ctermbg=green
hi Search       cterm=NONE           ctermfg=grey     ctermbg=blue
hi MoreMsg      ctermfg=darkgreen
hi ModeMsg      cterm=NONE           ctermfg=brown
hi LineNr       ctermfg=3
hi Question     ctermfg=green
hi StatusLine   cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit    cterm=reverse guibg=#111
hi Title        ctermfg=5
hi Visual       cterm=reverse
hi VisualNOS    cterm=bold,underline
hi WarningMsg   ctermfg=1
hi WildMenu     ctermfg=0            ctermbg=3
hi Folded       ctermfg=darkgrey     ctermbg=NONE
hi FoldColumn   ctermfg=darkgrey     ctermbg=NONE
hi DiffAdded    ctermbg=darkgreen ctermfg=black
hi DiffRemoved  ctermbg=darkred ctermfg=white
hi DiffChange   ctermbg=5
hi DiffText     cterm=bold           ctermbg=1
hi Comment      ctermfg=darkcyan
hi Constant     ctermfg=brown
hi Special      ctermfg=5
hi Identifier   ctermfg=6
hi Statement    ctermfg=3
hi PreProc      ctermfg=5
hi Type         ctermfg=2
hi Ignore       ctermfg=darkgrey
hi Error        cterm=bold           ctermfg=7        ctermbg=1


" Ruby
"hi rubySymbol         guifg=#DDF2A4
"hi rubySymbol guifg=#99A9FF
hi rubySymbol guifg=#FFEC8B
hi rubyConstant guifg=#FFFFFF
hi rubyKeywordArgument guifg=#FFFFFF
hi rubyOperator guifg=#DCDC9E


" Rails
hi link railsStringSpecial rubySymbol
hi railsMethod guifg=#CDA869
hi link railsClass Constant


" HTML
hi htmlTagName    guifg=#CCCCCC
hi link htmlArg htmlTagName
hi link htmlTag htmlTagName
hi link htmlEndTag htmlTagName
hi link htmlLink Normal
hi htmlH1       gui=bold


" Mustache
hi mustacheMarker guifg=#885555
hi mustacheVariable guifg=#FFFFFF
hi mustacheSection guifg=#888888


" PHP
hi phpStructure guifg=lightgoldenrod2
hi phpStorageClass guifg=lightgoldenrod2
hi phpStatement guifg=lightgoldenrod2
hi link phpVarSelector Identifier
hi link phpQuoteSingle Delimiter
hi link phpQuoteDouble Delimiter


" JavaScript
hi javaScriptFunction guifg=lightgoldenrod2


" Make
hi link makeTarget Operator


" Java
hi link javaClassDecl Keyword
hi link javaScopeDecl Keyword
hi link javaBraces    Special


" Python
hi link pythonOperator Keyword
hi link pythonDecorator Delimiter


" Common Lisp
hi link lispAtom Character
hi link lispKey  Special


" YAML
hi link yamlKey Special
hi link yamlPlainScalar Comment

hi! LustySelected guibg=#2C4073 guifg=#ffffff
hi! LustyCurrentBuffer guifg=#cccccc

hi TargetFile guifg=black guibg=#B9B7B6 gui=bold


" Gemfile
hi link rubyGemfileMethod Keyword
