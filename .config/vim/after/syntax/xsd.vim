" Vim syntax file
" Language: XSD (XML Schema Definition Language)
" REFERENCES:
"   [1] https://www.w3.org/TR/2012/REC-xmlschema11-1-20120405/
"   [2] https://www.w3.org/2012/04/XMLSchema.xsd
" xmllint \
"   --xpath '//*[local-name()="element" and namespace-uri()="http://www.w3.org/2001/XMLSchema"]/@name" \
"   XMLSchema.xsd |
" for s in $(cat); do
"   eval "$s; printf '\t\t\t\\ \047%s\047,\n' \$name"
" done | sort -u

runtime syntax/xml.vim

syntax cluster xmlTagHook add=xsdElement
syntax case match

let s:xsdElementNames = [
			\ 'all',
			\ 'alternative',
			\ 'annotation',
			\ 'any',
			\ 'anyAttribute',
			\ 'appinfo',
			\ 'assert',
			\ 'assertion',
			\ 'attribute',
			\ 'attributeGroup',
			\ 'choice',
			\ 'complexContent',
			\ 'complexType',
			\ 'defaultOpenContent',
			\ 'documentation',
			\ 'element',
			\ 'enumeration',
			\ 'explicitTimezone',
			\ 'extension',
			\ 'facet',
			\ 'field',
			\ 'fractionDigits',
			\ 'group',
			\ 'import',
			\ 'include',
			\ 'key',
			\ 'keyref',
			\ 'length',
			\ 'list',
			\ 'maxExclusive',
			\ 'maxInclusive',
			\ 'maxLength',
			\ 'minExclusive',
			\ 'minInclusive',
			\ 'minLength',
			\ 'notation',
			\ 'openContent',
			\ 'override',
			\ 'pattern',
			\ 'redefine',
			\ 'restriction',
			\ 'schema',
			\ 'selector',
			\ 'sequence',
			\ 'simpleContent',
			\ 'simpleType',
			\ 'totalDigits',
			\ 'union',
			\ 'unique',
			\ 'whiteSpace']
for s:xsdElementName in s:xsdElementNames
	execute 'syntax match xsdElement '
				\ . '/\%(xs:\)\@<=' . s:xsdElementName . '/'
endfor
"syntax match xsdElement '\%(xsd:\)\@<=unique'

highlight default link xsdElement Statement
