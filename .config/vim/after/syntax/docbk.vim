" <<-'.' xslt -s /dev/stdin ~/.local/share/xml/docbook/schemas/docbook-v5.1.rng |
" <?xml version="1.0" encoding="UTF-8"?>
" <xsl:stylesheet version="1.0"
"   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
"   xmlns:rng="http://relaxng.org/ns/structure/1.0"
" >
" 
" <xsl:output
"   method="text"
"   encoding="UTF-8"
"   media-type="text/plain;charset=UTF-8"
" />
" 
" <xsl:template match="/">
"     <xsl:apply-templates/>
" </xsl:template>
" 
" <xsl:template match="rng:element">
"     <xsl:value-of select="@name"/>
"     <xsl:text>&#x0A;</xsl:text>
" </xsl:template>
" 
" <xsl:template match="text()"/>
" 
" </xsl:stylesheet>
" .
" LANG=POSIX sort -u |
" paste -d '\t' - - - - - |
" sed 's/.*/syntax keyword docbkKeyword &'"$(printf '\t')"'contained/1' |
" expand -t '24'
syntax keyword docbkKeyword                     abbrev                  abstract                accel                   acknowledgements        contained
syntax keyword docbkKeyword acronym             address                 affiliation             alt                     anchor                  contained
syntax keyword docbkKeyword annotation          answer                  appendix                application             arc                     contained
syntax keyword docbkKeyword area                areaset                 areaspec                arg                     article                 contained
syntax keyword docbkKeyword artpagenums         attribution             audiodata               audioobject             author                  contained
syntax keyword docbkKeyword authorgroup         authorinitials          bibliocoverage          bibliodiv               biblioentry             contained
syntax keyword docbkKeyword bibliography        biblioid                bibliolist              bibliomisc              bibliomixed             contained
syntax keyword docbkKeyword bibliomset          biblioref               bibliorelation          biblioset               bibliosource            contained
syntax keyword docbkKeyword blockquote          book                    bridgehead              callout                 calloutlist             contained
syntax keyword docbkKeyword caption             caution                 chapter                 citation                citebiblioid            contained
syntax keyword docbkKeyword citerefentry        citetitle               city                    classname               classsynopsis           contained
syntax keyword docbkKeyword classsynopsisinfo   cmdsynopsis             co                      code                    col                     contained
syntax keyword docbkKeyword colgroup            collab                  colophon                colspec                 command                 contained
syntax keyword docbkKeyword computeroutput      confdates               confgroup               confnum                 confsponsor             contained
syntax keyword docbkKeyword conftitle           constant                constraint              constraintdef           constructorsynopsis     contained
syntax keyword docbkKeyword contractnum         contractsponsor         contrib                 copyright               coref                   contained
syntax keyword docbkKeyword country             cover                   database                date                    dedication              contained
syntax keyword docbkKeyword destructorsynopsis  edition                 editor                  email                   emphasis                contained
syntax keyword docbkKeyword entry               entrytbl                envar                   epigraph                equation                contained
syntax keyword docbkKeyword errorcode           errorname               errortext               errortype               example                 contained
syntax keyword docbkKeyword exceptionname       extendedlink            fax                     fieldsynopsis           figure                  contained
syntax keyword docbkKeyword filename            firstname               firstterm               footnote                footnoteref             contained
syntax keyword docbkKeyword foreignphrase       formalpara              funcdef                 funcparams              funcprototype           contained
syntax keyword docbkKeyword funcsynopsis        funcsynopsisinfo        function                givenname               glossary                contained
syntax keyword docbkKeyword glossdef            glossdiv                glossentry              glosslist               glosssee                contained
syntax keyword docbkKeyword glossseealso        glossterm               group                   guibutton               guiicon                 contained
syntax keyword docbkKeyword guilabel            guimenu                 guimenuitem             guisubmenu              hardware                contained
syntax keyword docbkKeyword holder              honorific               imagedata               imageobject             imageobjectco           contained
syntax keyword docbkKeyword important           index                   indexdiv                indexentry              indexterm               contained
syntax keyword docbkKeyword info                informalequation        informalexample         informalfigure          informaltable           contained
syntax keyword docbkKeyword initializer         inlineequation          inlinemediaobject       interfacename           issuenum                contained
syntax keyword docbkKeyword itemizedlist        itermset                jobtitle                keycap                  keycode                 contained
syntax keyword docbkKeyword keycombo            keysym                  keyword                 keywordset              label                   contained
syntax keyword docbkKeyword legalnotice         lhs                     lineage                 lineannotation          link                    contained
syntax keyword docbkKeyword listitem            literal                 literallayout           locator                 manvolnum               contained
syntax keyword docbkKeyword markup              mathphrase              mediaobject             member                  menuchoice              contained
syntax keyword docbkKeyword methodname          methodparam             methodsynopsis          modifier                mousebutton             contained
syntax keyword docbkKeyword msg                 msgaud                  msgentry                msgexplan               msginfo                 contained
syntax keyword docbkKeyword msglevel            msgmain                 msgorig                 msgrel                  msgset                  contained
syntax keyword docbkKeyword msgsub              msgtext                 multimediaparam         nonterminal             note                    contained
syntax keyword docbkKeyword olink               ooclass                 ooexception             oointerface             option                  contained
syntax keyword docbkKeyword optional            orderedlist             org                     orgdiv                  orgname                 contained
syntax keyword docbkKeyword otheraddr           othercredit             othername               package                 pagenums                contained
syntax keyword docbkKeyword para                paramdef                parameter               part                    partintro               contained
syntax keyword docbkKeyword person              personblurb             personname              phone                   phrase                  contained
syntax keyword docbkKeyword pob                 postcode                preface                 primary                 primaryie               contained
syntax keyword docbkKeyword printhistory        procedure               production              productionrecap         productionset           contained
syntax keyword docbkKeyword productname         productnumber           programlisting          programlistingco        prompt                  contained
syntax keyword docbkKeyword property            pubdate                 publisher               publishername           qandadiv                contained
syntax keyword docbkKeyword qandaentry          qandaset                question                quote                   refclass                contained
syntax keyword docbkKeyword refdescriptor       refentry                refentrytitle           reference               refmeta                 contained
syntax keyword docbkKeyword refmiscinfo         refname                 refnamediv              refpurpose              refsect1                contained
syntax keyword docbkKeyword refsect2            refsect3                refsection              refsynopsisdiv          releaseinfo             contained
syntax keyword docbkKeyword remark              replaceable             result                  returnvalue             revdescription          contained
syntax keyword docbkKeyword revhistory          revision                revnumber               revremark               rhs                     contained
syntax keyword docbkKeyword row                 sbr                     screen                  screenco                screenshot              contained
syntax keyword docbkKeyword secondary           secondaryie             sect1                   sect2                   sect3                   contained
syntax keyword docbkKeyword sect4               sect5                   section                 see                     seealso                 contained
syntax keyword docbkKeyword seealsoie           seeie                   seg                     seglistitem             segmentedlist           contained
syntax keyword docbkKeyword segtitle            seriesvolnums           set                     setindex                shortaffil              contained
syntax keyword docbkKeyword shortcut            sidebar                 simpara                 simplelist              simplemsgentry          contained
syntax keyword docbkKeyword simplesect          spanspec                state                   step                    stepalternatives        contained
syntax keyword docbkKeyword street              subject                 subjectset              subjectterm             subscript               contained
syntax keyword docbkKeyword substeps            subtitle                superscript             surname                 symbol                  contained
syntax keyword docbkKeyword synopfragment       synopfragmentref        synopsis                systemitem              table                   contained
syntax keyword docbkKeyword tag                 task                    taskprerequisites       taskrelated             tasksummary             contained
syntax keyword docbkKeyword tbody               td                      term                    termdef                 tertiary                contained
syntax keyword docbkKeyword tertiaryie          textdata                textobject              tfoot                   tgroup                  contained
syntax keyword docbkKeyword th                  thead                   tip                     title                   titleabbrev             contained
syntax keyword docbkKeyword toc                 tocdiv                  tocentry                token                   topic                   contained
syntax keyword docbkKeyword tr                  trademark               type                    uri                     userinput               contained
syntax keyword docbkKeyword varargs             variablelist            varlistentry            varname                 videodata               contained
syntax keyword docbkKeyword videoobject         void                    volumenum               warning                 wordasword              contained
syntax keyword docbkKeyword xref                year                                                                                            contained
