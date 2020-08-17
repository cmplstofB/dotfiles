syntax sync linebreaks=500

syntax match asciidocQuotedUnconstrainedMonospaced2
			\ /[\\+]\@<!``\S\_.\{-}\(``\|\n\s*\n\)/
			\ contains=asciidocEntityRef
highlight link asciidocQuotedUnconstrainedMonospaced2 Identifier

syntax match asciidocQuotedSingleQuoteLeft
			\ /\(^\|\s*\)\@<='`/
			\ conceal cchar=‘
highlight link asciidocQuotedSingleQuoteLeft Keyword
syntax match asciidocQuotedSingleQuoteRight
			\ /`\@<!`'/
			\ conceal cchar=’
highlight link asciidocQuotedSingleQuoteRight Keyword
syntax match asciidocQuotedDoubleQuoteLeft
			\ /\(^\|\s*\)\@<="`/
			\ conceal cchar=“
highlight link asciidocQuotedDoubleQuoteLeft Keyword
syntax match asciidocQuotedDoubleQuoteRight
			\ /`\@<!`"/
			\ conceal cchar=”
highlight link asciidocQuotedDoubleQuoteRight Keyword

highlight link asciidocQuotedBold _Bold
highlight link asciidocQuotedUnconstrainedBold _Bold
highlight link asciidocQuotedEmphasized _Itaric
highlight link asciidocQuotedEmphasizedItalic _Itaric
highlight link asciidocQuotedUnconstrainedEmphasized _Itaric

highlight link asciidocQuotedEmphasized2 Keyword
"highlight default link asciidocQuotedDoubleQuoted Label
"highlight default link asciidocQuotedSingleQuoted Label
