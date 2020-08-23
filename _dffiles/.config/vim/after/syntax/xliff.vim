" Vim syntax file
" Language: XSD (XML Schema Definition Language)
" REFERENCES:
"   [1] <http://docs.oasis-open.org/xliff/xliff-core/v2.1/os/xliff-core-v2.1-os.html>
"   [2] <http://docs.oasis-open.org/xliff/xliff-core/v2.1/os/schemas/xliff_core_2.0.xsd>
" $ curl -o xliff20.xsd \
"   'http://docs.oasis-open.org/xliff/xliff-core/v2.1/os/schemas/xliff_core_2.0.xsd'
" $ for s in $(xmllint \
"   --xpath '//*[local-name()="element" and namespace-uri()="http://www.w3.org/2001/XMLSchema"]/@name' \
"   xliff20.xsd); do
"   	eval "$s; printf '\t\t\t\\ \047%s\047,\n' \$name"
"   done

runtime syntax/xml.vim

syntax cluster xmlTagHook add=xliffElement
syntax case match

let s:xliffElementNames = [
			\ 'xliff',
			\ 'file',
			\ 'skeleton',
			\ 'group',
			\ 'unit',
			\ 'segment',
			\ 'ignorable',
			\ 'notes',
			\ 'note',
			\ 'originalData',
			\ 'data',
			\ 'source',
			\ 'target',
			\ 'cp',
			\ 'ph',
			\ 'pc',
			\ 'sc',
			\ 'ec',
			\ 'mrk',
			\ 'sm',
			\ 'em']
for s:xliffElementName in s:xliffElementNames
	execute 'syntax match xliffElement '
				\ . '/\%(xlf:\)\?' . s:xliffElementName . '/'
endfor

highlight default link xliffElement Statement
