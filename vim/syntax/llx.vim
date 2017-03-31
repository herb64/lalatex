" VIM syntax file
" Language:         LaLaTeX markup language
" Maintainer:       Herbert Mehlhose
" Latest Revision:  02.02.2016
" Remark:           Beta version for lalatex 0.5.4
"
" See http://vimregex.com/ - e.g. python + -> here \+

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Make highlighting more stable especially for long verbatims
" see also: http://vim.wikia.com/wiki/Fix_syntax_highlighting
" Increased to 1500 - let's see if this is sufficient.
let b:c_minlines = 1500
exec "syn sync minlines=" . b:c_minlines

" Use own lalatex colorscheme for our syntax
colorscheme lalatex

" KEYWORDS
setlocal iskeyword+=%
syntax keyword llxMacro %%TODO %%WARN %%NOTE %%INFO %%TIP
syntax keyword llxMacro %%NP %%NL %%BRK %%APP %%SRC %%LIT %%FOOT
syntax keyword llxMacro2 %%HIDE
syntax match llxList /^%%L[1n ]/
syntax match llxImage /^%%IMG\d* /
syntax match llxInclude /^%%INC /
syntax match llxRun /^%%RUN\d* /
syntax match llxHeading0 /^%%H0 .*/
syntax match llxHeading1 /^%%H1 .*/
syntax match llxHeading2 /^%%H2 .*/
syntax match llxHeading3 /^%%H[345] .*/
syntax match llxComment /^$$.*/
syntax match llxHref /^%%HREF.*/
syntax match llxTable /^%%TAB/
syntax region llxVerbatim start=/^%%[Vv]/ end=/^%%[Vv]\d*/
syntax region llxCode start=/^%%CODE/ end=/^%%CODE*/
syntax region llxPriv start=/^%%PRIV/ end=/^%%PRIV*/

"syntax match llxVariable /^$.\+\$/
syntax match llxVariable /^$\S\+\$/
syntax match llxRef /r{.*}/
syntax match llxMark /m{.*}/

highlight link llxMacro Macro
highlight link llxList Macro
highlight link llxTable Macro
highlight link llxMacro2 Macro2
highlight link llxImage Macro2
highlight link llxInclude Macro2
highlight link llxRun Macro2
highlight link llxHeading0 Heading0
highlight link llxHeading1 Heading1
highlight link llxHeading2 Heading2
highlight link llxHeading3 Heading3
highlight link llxComment Comment
highlight link llxHref Href
highlight link llxVerbatim Verbatim
highlight link llxCode Code
highlight link llxPriv Priv

highlight link llxVariable Variable
highlight link llxRef Constant
highlight link llxMark Marker

let b:current_syntax = "llx"
