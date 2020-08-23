" Vim syntax file
" Language: XSD (XML Schema Definition Language)
" REFERENCES:
"   [1] <https://www.w3.org/TR/xslt-30/#schema-for-xslt>
"   [2] <https://www.w3.org/TR/xslt-30/schema-for-xslt30.xsd>
" $ curl -o xslt30.xsd 'https://www.w3.org/TR/xslt-30/schema-for-xslt30.xsd'
" $ xmllint \
"  --xpath '//*[local-name()="element" and namespace-uri()="http://www.w3.org/2001/XMLSchema"]/@name' \
"  xslt30.xsd |
" for s in $(cat); do
"   eval "$s; printf '\t\t\t\\ \047%s\047,\n' \$name"
" done | sort -u

runtime syntax/xml.vim

syntax cluster xmlTagHook add=xsltElement
syntax case match

let s:xsltElementNames = [
			\ 'declaration',
			\ 'instruction',
			\ 'accept',
			\ 'accumulator',
			\ 'accumulator-rule',
			\ 'analyze-string',
			\ 'apply-imports',
			\ 'apply-templates',
			\ 'assert',
			\ 'attribute',
			\ 'attribute-set',
			\ 'break',
			\ 'call-template',
			\ 'catch',
			\ 'character-map',
			\ 'choose',
			\ 'comment',
			\ 'context-item',
			\ 'copy',
			\ 'copy-of',
			\ 'document',
			\ 'decimal-format',
			\ 'element',
			\ 'evaluate',
			\ 'expose',
			\ 'fallback',
			\ 'for-each',
			\ 'for-each-group',
			\ 'fork',
			\ 'function',
			\ 'global-context-item',
			\ 'if',
			\ 'import',
			\ 'import-schema',
			\ 'include',
			\ 'iterate',
			\ 'key',
			\ 'map',
			\ 'map-entry',
			\ 'matching-substring',
			\ 'merge',
			\ 'merge-action',
			\ 'merge-key',
			\ 'merge-source',
			\ 'message',
			\ 'mode',
			\ 'namespace',
			\ 'namespace-alias',
			\ 'next-iteration',
			\ 'next-match',
			\ 'non-matching-substring',
			\ 'number',
			\ 'on-completion',
			\ 'on-empty',
			\ 'on-non-empty',
			\ 'otherwise',
			\ 'output',
			\ 'output-character',
			\ 'override',
			\ 'package',
			\ 'param',
			\ 'perform-sort',
			\ 'preserve-space',
			\ 'processing-instruction',
			\ 'result-document',
			\ 'sequence',
			\ 'sort',
			\ 'source-document',
			\ 'strip-space',
			\ 'stylesheet',
			\ 'template',
			\ 'text',
			\ 'transform',
			\ 'try',
			\ 'use-package',
			\ 'value-of',
			\ 'variable',
			\ 'when',
			\ 'where-populated',
			\ 'with-param',
			\ 'literal-result-element']
for s:xsltElementName in s:xsltElementNames
	execute 'syntax match xsltElement '
				\ . '/\%(xsl:\)\@<=' . s:xsltElementName . '/'
endfor

highlight default link xsltElement Statement
