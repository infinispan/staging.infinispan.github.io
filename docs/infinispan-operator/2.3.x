<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="Asciidoctor 2.0.17">
<title>Infinispan Operator 2.3 Guide</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic%7CNoto+Serif:400,400italic,700,700italic%7CDroid+Sans+Mono:400,700">
<style>
/*! Asciidoctor default stylesheet | MIT License | https://asciidoctor.org */
/* Uncomment the following line when using as a custom stylesheet */
/* @import "https://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic%7CNoto+Serif:400,400italic,700,700italic%7CDroid+Sans+Mono:400,700"; */
html{font-family:sans-serif;-webkit-text-size-adjust:100%}
a{background:none}
a:focus{outline:thin dotted}
a:active,a:hover{outline:0}
h1{font-size:2em;margin:.67em 0}
b,strong{font-weight:bold}
abbr{font-size:.9em}
abbr[title]{cursor:help;border-bottom:1px dotted #dddddf;text-decoration:none}
dfn{font-style:italic}
hr{height:0}
mark{background:#ff0;color:#000}
code,kbd,pre,samp{font-family:monospace;font-size:1em}
pre{white-space:pre-wrap}
q{quotes:"\201C" "\201D" "\2018" "\2019"}
small{font-size:80%}
sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}
sup{top:-.5em}
sub{bottom:-.25em}
img{border:0}
svg:not(:root){overflow:hidden}
figure{margin:0}
audio,video{display:inline-block}
audio:not([controls]){display:none;height:0}
fieldset{border:1px solid silver;margin:0 2px;padding:.35em .625em .75em}
legend{border:0;padding:0}
button,input,select,textarea{font-family:inherit;font-size:100%;margin:0}
button,input{line-height:normal}
button,select{text-transform:none}
button,html input[type=button],input[type=reset],input[type=submit]{-webkit-appearance:button;cursor:pointer}
button[disabled],html input[disabled]{cursor:default}
input[type=checkbox],input[type=radio]{padding:0}
button::-moz-focus-inner,input::-moz-focus-inner{border:0;padding:0}
textarea{overflow:auto;vertical-align:top}
table{border-collapse:collapse;border-spacing:0}
*,::before,::after{box-sizing:border-box}
html,body{font-size:100%}
body{background:#fff;color:rgba(0,0,0,.8);padding:0;margin:0;font-family:"Noto Serif","DejaVu Serif",serif;line-height:1;position:relative;cursor:auto;-moz-tab-size:4;-o-tab-size:4;tab-size:4;word-wrap:anywhere;-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased}
a:hover{cursor:pointer}
img,object,embed{max-width:100%;height:auto}
object,embed{height:100%}
img{-ms-interpolation-mode:bicubic}
.left{float:left!important}
.right{float:right!important}
.text-left{text-align:left!important}
.text-right{text-align:right!important}
.text-center{text-align:center!important}
.text-justify{text-align:justify!important}
.hide{display:none}
img,object,svg{display:inline-block;vertical-align:middle}
textarea{height:auto;min-height:50px}
select{width:100%}
.subheader,.admonitionblock td.content>.title,.audioblock>.title,.exampleblock>.title,.imageblock>.title,.listingblock>.title,.literalblock>.title,.stemblock>.title,.openblock>.title,.paragraph>.title,.quoteblock>.title,table.tableblock>.title,.verseblock>.title,.videoblock>.title,.dlist>.title,.olist>.title,.ulist>.title,.qlist>.title,.hdlist>.title{line-height:1.45;color:#7a2518;font-weight:400;margin-top:0;margin-bottom:.25em}
div,dl,dt,dd,ul,ol,li,h1,h2,h3,#toctitle,.sidebarblock>.content>.title,h4,h5,h6,pre,form,p,blockquote,th,td{margin:0;padding:0}
a{color:#2156a5;text-decoration:underline;line-height:inherit}
a:hover,a:focus{color:#1d4b8f}
a img{border:0}
p{line-height:1.6;margin-bottom:1.25em;text-rendering:optimizeLegibility}
p aside{font-size:.875em;line-height:1.35;font-style:italic}
h1,h2,h3,#toctitle,.sidebarblock>.content>.title,h4,h5,h6{font-family:"Open Sans","DejaVu Sans",sans-serif;font-weight:300;font-style:normal;color:#ba3925;text-rendering:optimizeLegibility;margin-top:1em;margin-bottom:.5em;line-height:1.0125em}
h1 small,h2 small,h3 small,#toctitle small,.sidebarblock>.content>.title small,h4 small,h5 small,h6 small{font-size:60%;color:#e99b8f;line-height:0}
h1{font-size:2.125em}
h2{font-size:1.6875em}
h3,#toctitle,.sidebarblock>.content>.title{font-size:1.375em}
h4,h5{font-size:1.125em}
h6{font-size:1em}
hr{border:solid #dddddf;border-width:1px 0 0;clear:both;margin:1.25em 0 1.1875em}
em,i{font-style:italic;line-height:inherit}
strong,b{font-weight:bold;line-height:inherit}
small{font-size:60%;line-height:inherit}
code{font-family:"Droid Sans Mono","DejaVu Sans Mono",monospace;font-weight:400;color:rgba(0,0,0,.9)}
ul,ol,dl{line-height:1.6;margin-bottom:1.25em;list-style-position:outside;font-family:inherit}
ul,ol{margin-left:1.5em}
ul li ul,ul li ol{margin-left:1.25em;margin-bottom:0}
ul.square li ul,ul.circle li ul,ul.disc li ul{list-style:inherit}
ul.square{list-style-type:square}
ul.circle{list-style-type:circle}
ul.disc{list-style-type:disc}
ol li ul,ol li ol{margin-left:1.25em;margin-bottom:0}
dl dt{margin-bottom:.3125em;font-weight:bold}
dl dd{margin-bottom:1.25em}
blockquote{margin:0 0 1.25em;padding:.5625em 1.25em 0 1.1875em;border-left:1px solid #ddd}
blockquote,blockquote p{line-height:1.6;color:rgba(0,0,0,.85)}
@media screen and (min-width:768px){h1,h2,h3,#toctitle,.sidebarblock>.content>.title,h4,h5,h6{line-height:1.2}
h1{font-size:2.75em}
h2{font-size:2.3125em}
h3,#toctitle,.sidebarblock>.content>.title{font-size:1.6875em}
h4{font-size:1.4375em}}
table{background:#fff;margin-bottom:1.25em;border:1px solid #dedede;word-wrap:normal}
table thead,table tfoot{background:#f7f8f7}
table thead tr th,table thead tr td,table tfoot tr th,table tfoot tr td{padding:.5em .625em .625em;font-size:inherit;color:rgba(0,0,0,.8);text-align:left}
table tr th,table tr td{padding:.5625em .625em;font-size:inherit;color:rgba(0,0,0,.8)}
table tr.even,table tr.alt{background:#f8f8f7}
table thead tr th,table tfoot tr th,table tbody tr td,table tr td,table tfoot tr td{line-height:1.6}
h1,h2,h3,#toctitle,.sidebarblock>.content>.title,h4,h5,h6{line-height:1.2;word-spacing:-.05em}
h1 strong,h2 strong,h3 strong,#toctitle strong,.sidebarblock>.content>.title strong,h4 strong,h5 strong,h6 strong{font-weight:400}
.center{margin-left:auto;margin-right:auto}
.stretch{width:100%}
.clearfix::before,.clearfix::after,.float-group::before,.float-group::after{content:" ";display:table}
.clearfix::after,.float-group::after{clear:both}
:not(pre).nobreak{word-wrap:normal}
:not(pre).nowrap{white-space:nowrap}
:not(pre).pre-wrap{white-space:pre-wrap}
:not(pre):not([class^=L])>code{font-size:.9375em;font-style:normal!important;letter-spacing:0;padding:.1em .5ex;word-spacing:-.15em;background:#f7f7f8;border-radius:4px;line-height:1.45;text-rendering:optimizeSpeed}
pre{color:rgba(0,0,0,.9);font-family:"Droid Sans Mono","DejaVu Sans Mono",monospace;line-height:1.45;text-rendering:optimizeSpeed}
pre code,pre pre{color:inherit;font-size:inherit;line-height:inherit}
pre>code{display:block}
pre.nowrap,pre.nowrap pre{white-space:pre;word-wrap:normal}
em em{font-style:normal}
strong strong{font-weight:400}
.keyseq{color:rgba(51,51,51,.8)}
kbd{font-family:"Droid Sans Mono","DejaVu Sans Mono",monospace;display:inline-block;color:rgba(0,0,0,.8);font-size:.65em;line-height:1.45;background:#f7f7f7;border:1px solid #ccc;border-radius:3px;box-shadow:0 1px 0 rgba(0,0,0,.2),inset 0 0 0 .1em #fff;margin:0 .15em;padding:.2em .5em;vertical-align:middle;position:relative;top:-.1em;white-space:nowrap}
.keyseq kbd:first-child{margin-left:0}
.keyseq kbd:last-child{margin-right:0}
.menuseq,.menuref{color:#000}
.menuseq b:not(.caret),.menuref{font-weight:inherit}
.menuseq{word-spacing:-.02em}
.menuseq b.caret{font-size:1.25em;line-height:.8}
.menuseq i.caret{font-weight:bold;text-align:center;width:.45em}
b.button::before,b.button::after{position:relative;top:-1px;font-weight:400}
b.button::before{content:"[";padding:0 3px 0 2px}
b.button::after{content:"]";padding:0 2px 0 3px}
p a>code:hover{color:rgba(0,0,0,.9)}
#header,#content,#footnotes,#footer{width:100%;margin:0 auto;max-width:62.5em;*zoom:1;position:relative;padding-left:.9375em;padding-right:.9375em}
#header::before,#header::after,#content::before,#content::after,#footnotes::before,#footnotes::after,#footer::before,#footer::after{content:" ";display:table}
#header::after,#content::after,#footnotes::after,#footer::after{clear:both}
#content{margin-top:1.25em}
#content::before{content:none}
#header>h1:first-child{color:rgba(0,0,0,.85);margin-top:2.25rem;margin-bottom:0}
#header>h1:first-child+#toc{margin-top:8px;border-top:1px solid #dddddf}
#header>h1:only-child,body.toc2 #header>h1:nth-last-child(2){border-bottom:1px solid #dddddf;padding-bottom:8px}
#header .details{border-bottom:1px solid #dddddf;line-height:1.45;padding-top:.25em;padding-bottom:.25em;padding-left:.25em;color:rgba(0,0,0,.6);display:flex;flex-flow:row wrap}
#header .details span:first-child{margin-left:-.125em}
#header .details span.email a{color:rgba(0,0,0,.85)}
#header .details br{display:none}
#header .details br+span::before{content:"\00a0\2013\00a0"}
#header .details br+span.author::before{content:"\00a0\22c5\00a0";color:rgba(0,0,0,.85)}
#header .details br+span#revremark::before{content:"\00a0|\00a0"}
#header #revnumber{text-transform:capitalize}
#header #revnumber::after{content:"\00a0"}
#content>h1:first-child:not([class]){color:rgba(0,0,0,.85);border-bottom:1px solid #dddddf;padding-bottom:8px;margin-top:0;padding-top:1rem;margin-bottom:1.25rem}
#toc{border-bottom:1px solid #e7e7e9;padding-bottom:.5em}
#toc>ul{margin-left:.125em}
#toc ul.sectlevel0>li>a{font-style:italic}
#toc ul.sectlevel0 ul.sectlevel1{margin:.5em 0}
#toc ul{font-family:"Open Sans","DejaVu Sans",sans-serif;list-style-type:none}
#toc li{line-height:1.3334;margin-top:.3334em}
#toc a{text-decoration:none}
#toc a:active{text-decoration:underline}
#toctitle{color:#7a2518;font-size:1.2em}
@media screen and (min-width:768px){#toctitle{font-size:1.375em}
body.toc2{padding-left:15em;padding-right:0}
#toc.toc2{margin-top:0!important;background:#f8f8f7;position:fixed;width:15em;left:0;top:0;border-right:1px solid #e7e7e9;border-top-width:0!important;border-bottom-width:0!important;z-index:1000;padding:1.25em 1em;height:100%;overflow:auto}
#toc.toc2 #toctitle{margin-top:0;margin-bottom:.8rem;font-size:1.2em}
#toc.toc2>ul{font-size:.9em;margin-bottom:0}
#toc.toc2 ul ul{margin-left:0;padding-left:1em}
#toc.toc2 ul.sectlevel0 ul.sectlevel1{padding-left:0;margin-top:.5em;margin-bottom:.5em}
body.toc2.toc-right{padding-left:0;padding-right:15em}
body.toc2.toc-right #toc.toc2{border-right-width:0;border-left:1px solid #e7e7e9;left:auto;right:0}}
@media screen and (min-width:1280px){body.toc2{padding-left:20em;padding-right:0}
#toc.toc2{width:20em}
#toc.toc2 #toctitle{font-size:1.375em}
#toc.toc2>ul{font-size:.95em}
#toc.toc2 ul ul{padding-left:1.25em}
body.toc2.toc-right{padding-left:0;padding-right:20em}}
#content #toc{border:1px solid #e0e0dc;margin-bottom:1.25em;padding:1.25em;background:#f8f8f7;border-radius:4px}
#content #toc>:first-child{margin-top:0}
#content #toc>:last-child{margin-bottom:0}
#footer{max-width:none;background:rgba(0,0,0,.8);padding:1.25em}
#footer-text{color:hsla(0,0%,100%,.8);line-height:1.44}
#content{margin-bottom:.625em}
.sect1{padding-bottom:.625em}
@media screen and (min-width:768px){#content{margin-bottom:1.25em}
.sect1{padding-bottom:1.25em}}
.sect1:last-child{padding-bottom:0}
.sect1+.sect1{border-top:1px solid #e7e7e9}
#content h1>a.anchor,h2>a.anchor,h3>a.anchor,#toctitle>a.anchor,.sidebarblock>.content>.title>a.anchor,h4>a.anchor,h5>a.anchor,h6>a.anchor{position:absolute;z-index:1001;width:1.5ex;margin-left:-1.5ex;display:block;text-decoration:none!important;visibility:hidden;text-align:center;font-weight:400}
#content h1>a.anchor::before,h2>a.anchor::before,h3>a.anchor::before,#toctitle>a.anchor::before,.sidebarblock>.content>.title>a.anchor::before,h4>a.anchor::before,h5>a.anchor::before,h6>a.anchor::before{content:"\00A7";font-size:.85em;display:block;padding-top:.1em}
#content h1:hover>a.anchor,#content h1>a.anchor:hover,h2:hover>a.anchor,h2>a.anchor:hover,h3:hover>a.anchor,#toctitle:hover>a.anchor,.sidebarblock>.content>.title:hover>a.anchor,h3>a.anchor:hover,#toctitle>a.anchor:hover,.sidebarblock>.content>.title>a.anchor:hover,h4:hover>a.anchor,h4>a.anchor:hover,h5:hover>a.anchor,h5>a.anchor:hover,h6:hover>a.anchor,h6>a.anchor:hover{visibility:visible}
#content h1>a.link,h2>a.link,h3>a.link,#toctitle>a.link,.sidebarblock>.content>.title>a.link,h4>a.link,h5>a.link,h6>a.link{color:#ba3925;text-decoration:none}
#content h1>a.link:hover,h2>a.link:hover,h3>a.link:hover,#toctitle>a.link:hover,.sidebarblock>.content>.title>a.link:hover,h4>a.link:hover,h5>a.link:hover,h6>a.link:hover{color:#a53221}
details,.audioblock,.imageblock,.literalblock,.listingblock,.stemblock,.videoblock{margin-bottom:1.25em}
details{margin-left:1.25rem}
details>summary{cursor:pointer;display:block;position:relative;line-height:1.6;margin-bottom:.625rem;outline:none;-webkit-tap-highlight-color:transparent}
details>summary::-webkit-details-marker{display:none}
details>summary::before{content:"";border:solid transparent;border-left:solid;border-width:.3em 0 .3em .5em;position:absolute;top:.5em;left:-1.25rem;transform:translateX(15%)}
details[open]>summary::before{border:solid transparent;border-top:solid;border-width:.5em .3em 0;transform:translateY(15%)}
details>summary::after{content:"";width:1.25rem;height:1em;position:absolute;top:.3em;left:-1.25rem}
.admonitionblock td.content>.title,.audioblock>.title,.exampleblock>.title,.imageblock>.title,.listingblock>.title,.literalblock>.title,.stemblock>.title,.openblock>.title,.paragraph>.title,.quoteblock>.title,table.tableblock>.title,.verseblock>.title,.videoblock>.title,.dlist>.title,.olist>.title,.ulist>.title,.qlist>.title,.hdlist>.title{text-rendering:optimizeLegibility;text-align:left;font-family:"Noto Serif","DejaVu Serif",serif;font-size:1rem;font-style:italic}
table.tableblock.fit-content>caption.title{white-space:nowrap;width:0}
.paragraph.lead>p,#preamble>.sectionbody>[class=paragraph]:first-of-type p{font-size:1.21875em;line-height:1.6;color:rgba(0,0,0,.85)}
.admonitionblock>table{border-collapse:separate;border:0;background:none;width:100%}
.admonitionblock>table td.icon{text-align:center;width:80px}
.admonitionblock>table td.icon img{max-width:none}
.admonitionblock>table td.icon .title{font-weight:bold;font-family:"Open Sans","DejaVu Sans",sans-serif;text-transform:uppercase}
.admonitionblock>table td.content{padding-left:1.125em;padding-right:1.25em;border-left:1px solid #dddddf;color:rgba(0,0,0,.6);word-wrap:anywhere}
.admonitionblock>table td.content>:last-child>:last-child{margin-bottom:0}
.exampleblock>.content{border:1px solid #e6e6e6;margin-bottom:1.25em;padding:1.25em;background:#fff;border-radius:4px}
.exampleblock>.content>:first-child{margin-top:0}
.exampleblock>.content>:last-child{margin-bottom:0}
.sidebarblock{border:1px solid #dbdbd6;margin-bottom:1.25em;padding:1.25em;background:#f3f3f2;border-radius:4px}
.sidebarblock>:first-child{margin-top:0}
.sidebarblock>:last-child{margin-bottom:0}
.sidebarblock>.content>.title{color:#7a2518;margin-top:0;text-align:center}
.exampleblock>.content>:last-child>:last-child,.exampleblock>.content .olist>ol>li:last-child>:last-child,.exampleblock>.content .ulist>ul>li:last-child>:last-child,.exampleblock>.content .qlist>ol>li:last-child>:last-child,.sidebarblock>.content>:last-child>:last-child,.sidebarblock>.content .olist>ol>li:last-child>:last-child,.sidebarblock>.content .ulist>ul>li:last-child>:last-child,.sidebarblock>.content .qlist>ol>li:last-child>:last-child{margin-bottom:0}
.literalblock pre,.listingblock>.content>pre{border-radius:4px;overflow-x:auto;padding:1em;font-size:.8125em}
@media screen and (min-width:768px){.literalblock pre,.listingblock>.content>pre{font-size:.90625em}}
@media screen and (min-width:1280px){.literalblock pre,.listingblock>.content>pre{font-size:1em}}
.literalblock pre,.listingblock>.content>pre:not(.highlight),.listingblock>.content>pre[class=highlight],.listingblock>.content>pre[class^="highlight "]{background:#f7f7f8}
.literalblock.output pre{color:#f7f7f8;background:rgba(0,0,0,.9)}
.listingblock>.content{position:relative}
.listingblock code[data-lang]::before{display:none;content:attr(data-lang);position:absolute;font-size:.75em;top:.425rem;right:.5rem;line-height:1;text-transform:uppercase;color:inherit;opacity:.5}
.listingblock:hover code[data-lang]::before{display:block}
.listingblock.terminal pre .command::before{content:attr(data-prompt);padding-right:.5em;color:inherit;opacity:.5}
.listingblock.terminal pre .command:not([data-prompt])::before{content:"$"}
.listingblock pre.highlightjs{padding:0}
.listingblock pre.highlightjs>code{padding:1em;border-radius:4px}
.listingblock pre.prettyprint{border-width:0}
.prettyprint{background:#f7f7f8}
pre.prettyprint .linenums{line-height:1.45;margin-left:2em}
pre.prettyprint li{background:none;list-style-type:inherit;padding-left:0}
pre.prettyprint li code[data-lang]::before{opacity:1}
pre.prettyprint li:not(:first-child) code[data-lang]::before{display:none}
table.linenotable{border-collapse:separate;border:0;margin-bottom:0;background:none}
table.linenotable td[class]{color:inherit;vertical-align:top;padding:0;line-height:inherit;white-space:normal}
table.linenotable td.code{padding-left:.75em}
table.linenotable td.linenos,pre.pygments .linenos{border-right:1px solid;opacity:.35;padding-right:.5em;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}
pre.pygments span.linenos{display:inline-block;margin-right:.75em}
.quoteblock{margin:0 1em 1.25em 1.5em;display:table}
.quoteblock:not(.excerpt)>.title{margin-left:-1.5em;margin-bottom:.75em}
.quoteblock blockquote,.quoteblock p{color:rgba(0,0,0,.85);font-size:1.15rem;line-height:1.75;word-spacing:.1em;letter-spacing:0;font-style:italic;text-align:justify}
.quoteblock blockquote{margin:0;padding:0;border:0}
.quoteblock blockquote::before{content:"\201c";float:left;font-size:2.75em;font-weight:bold;line-height:.6em;margin-left:-.6em;color:#7a2518;text-shadow:0 1px 2px rgba(0,0,0,.1)}
.quoteblock blockquote>.paragraph:last-child p{margin-bottom:0}
.quoteblock .attribution{margin-top:.75em;margin-right:.5ex;text-align:right}
.verseblock{margin:0 1em 1.25em}
.verseblock pre{font-family:"Open Sans","DejaVu Sans",sans-serif;font-size:1.15rem;color:rgba(0,0,0,.85);font-weight:300;text-rendering:optimizeLegibility}
.verseblock pre strong{font-weight:400}
.verseblock .attribution{margin-top:1.25rem;margin-left:.5ex}
.quoteblock .attribution,.verseblock .attribution{font-size:.9375em;line-height:1.45;font-style:italic}
.quoteblock .attribution br,.verseblock .attribution br{display:none}
.quoteblock .attribution cite,.verseblock .attribution cite{display:block;letter-spacing:-.025em;color:rgba(0,0,0,.6)}
.quoteblock.abstract blockquote::before,.quoteblock.excerpt blockquote::before,.quoteblock .quoteblock blockquote::before{display:none}
.quoteblock.abstract blockquote,.quoteblock.abstract p,.quoteblock.excerpt blockquote,.quoteblock.excerpt p,.quoteblock .quoteblock blockquote,.quoteblock .quoteblock p{line-height:1.6;word-spacing:0}
.quoteblock.abstract{margin:0 1em 1.25em;display:block}
.quoteblock.abstract>.title{margin:0 0 .375em;font-size:1.15em;text-align:center}
.quoteblock.excerpt>blockquote,.quoteblock .quoteblock{padding:0 0 .25em 1em;border-left:.25em solid #dddddf}
.quoteblock.excerpt,.quoteblock .quoteblock{margin-left:0}
.quoteblock.excerpt blockquote,.quoteblock.excerpt p,.quoteblock .quoteblock blockquote,.quoteblock .quoteblock p{color:inherit;font-size:1.0625rem}
.quoteblock.excerpt .attribution,.quoteblock .quoteblock .attribution{color:inherit;font-size:.85rem;text-align:left;margin-right:0}
p.tableblock:last-child{margin-bottom:0}
td.tableblock>.content{margin-bottom:1.25em;word-wrap:anywhere}
td.tableblock>.content>:last-child{margin-bottom:-1.25em}
table.tableblock,th.tableblock,td.tableblock{border:0 solid #dedede}
table.grid-all>*>tr>*{border-width:1px}
table.grid-cols>*>tr>*{border-width:0 1px}
table.grid-rows>*>tr>*{border-width:1px 0}
table.frame-all{border-width:1px}
table.frame-ends{border-width:1px 0}
table.frame-sides{border-width:0 1px}
table.frame-none>colgroup+*>:first-child>*,table.frame-sides>colgroup+*>:first-child>*{border-top-width:0}
table.frame-none>:last-child>:last-child>*,table.frame-sides>:last-child>:last-child>*{border-bottom-width:0}
table.frame-none>*>tr>:first-child,table.frame-ends>*>tr>:first-child{border-left-width:0}
table.frame-none>*>tr>:last-child,table.frame-ends>*>tr>:last-child{border-right-width:0}
table.stripes-all>*>tr,table.stripes-odd>*>tr:nth-of-type(odd),table.stripes-even>*>tr:nth-of-type(even),table.stripes-hover>*>tr:hover{background:#f8f8f7}
th.halign-left,td.halign-left{text-align:left}
th.halign-right,td.halign-right{text-align:right}
th.halign-center,td.halign-center{text-align:center}
th.valign-top,td.valign-top{vertical-align:top}
th.valign-bottom,td.valign-bottom{vertical-align:bottom}
th.valign-middle,td.valign-middle{vertical-align:middle}
table thead th,table tfoot th{font-weight:bold}
tbody tr th{background:#f7f8f7}
tbody tr th,tbody tr th p,tfoot tr th,tfoot tr th p{color:rgba(0,0,0,.8);font-weight:bold}
p.tableblock>code:only-child{background:none;padding:0}
p.tableblock{font-size:1em}
ol{margin-left:1.75em}
ul li ol{margin-left:1.5em}
dl dd{margin-left:1.125em}
dl dd:last-child,dl dd:last-child>:last-child{margin-bottom:0}
li p,ul dd,ol dd,.olist .olist,.ulist .ulist,.ulist .olist,.olist .ulist{margin-bottom:.625em}
ul.checklist,ul.none,ol.none,ul.no-bullet,ol.no-bullet,ol.unnumbered,ul.unstyled,ol.unstyled{list-style-type:none}
ul.no-bullet,ol.no-bullet,ol.unnumbered{margin-left:.625em}
ul.unstyled,ol.unstyled{margin-left:0}
li>p:empty:only-child::before{content:"";display:inline-block}
ul.checklist>li>p:first-child{margin-left:-1em}
ul.checklist>li>p:first-child>.fa-square-o:first-child,ul.checklist>li>p:first-child>.fa-check-square-o:first-child{width:1.25em;font-size:.8em;position:relative;bottom:.125em}
ul.checklist>li>p:first-child>input[type=checkbox]:first-child{margin-right:.25em}
ul.inline{display:flex;flex-flow:row wrap;list-style:none;margin:0 0 .625em -1.25em}
ul.inline>li{margin-left:1.25em}
.unstyled dl dt{font-weight:400;font-style:normal}
ol.arabic{list-style-type:decimal}
ol.decimal{list-style-type:decimal-leading-zero}
ol.loweralpha{list-style-type:lower-alpha}
ol.upperalpha{list-style-type:upper-alpha}
ol.lowerroman{list-style-type:lower-roman}
ol.upperroman{list-style-type:upper-roman}
ol.lowergreek{list-style-type:lower-greek}
.hdlist>table,.colist>table{border:0;background:none}
.hdlist>table>tbody>tr,.colist>table>tbody>tr{background:none}
td.hdlist1,td.hdlist2{vertical-align:top;padding:0 .625em}
td.hdlist1{font-weight:bold;padding-bottom:1.25em}
td.hdlist2{word-wrap:anywhere}
.literalblock+.colist,.listingblock+.colist{margin-top:-.5em}
.colist td:not([class]):first-child{padding:.4em .75em 0;line-height:1;vertical-align:top}
.colist td:not([class]):first-child img{max-width:none}
.colist td:not([class]):last-child{padding:.25em 0}
.thumb,.th{line-height:0;display:inline-block;border:4px solid #fff;box-shadow:0 0 0 1px #ddd}
.imageblock.left{margin:.25em .625em 1.25em 0}
.imageblock.right{margin:.25em 0 1.25em .625em}
.imageblock>.title{margin-bottom:0}
.imageblock.thumb,.imageblock.th{border-width:6px}
.imageblock.thumb>.title,.imageblock.th>.title{padding:0 .125em}
.image.left,.image.right{margin-top:.25em;margin-bottom:.25em;display:inline-block;line-height:0}
.image.left{margin-right:.625em}
.image.right{margin-left:.625em}
a.image{text-decoration:none;display:inline-block}
a.image object{pointer-events:none}
sup.footnote,sup.footnoteref{font-size:.875em;position:static;vertical-align:super}
sup.footnote a,sup.footnoteref a{text-decoration:none}
sup.footnote a:active,sup.footnoteref a:active{text-decoration:underline}
#footnotes{padding-top:.75em;padding-bottom:.75em;margin-bottom:.625em}
#footnotes hr{width:20%;min-width:6.25em;margin:-.25em 0 .75em;border-width:1px 0 0}
#footnotes .footnote{padding:0 .375em 0 .225em;line-height:1.3334;font-size:.875em;margin-left:1.2em;margin-bottom:.2em}
#footnotes .footnote a:first-of-type{font-weight:bold;text-decoration:none;margin-left:-1.05em}
#footnotes .footnote:last-of-type{margin-bottom:0}
#content #footnotes{margin-top:-.625em;margin-bottom:0;padding:.75em 0}
div.unbreakable{page-break-inside:avoid}
.big{font-size:larger}
.small{font-size:smaller}
.underline{text-decoration:underline}
.overline{text-decoration:overline}
.line-through{text-decoration:line-through}
.aqua{color:#00bfbf}
.aqua-background{background:#00fafa}
.black{color:#000}
.black-background{background:#000}
.blue{color:#0000bf}
.blue-background{background:#0000fa}
.fuchsia{color:#bf00bf}
.fuchsia-background{background:#fa00fa}
.gray{color:#606060}
.gray-background{background:#7d7d7d}
.green{color:#006000}
.green-background{background:#007d00}
.lime{color:#00bf00}
.lime-background{background:#00fa00}
.maroon{color:#600000}
.maroon-background{background:#7d0000}
.navy{color:#000060}
.navy-background{background:#00007d}
.olive{color:#606000}
.olive-background{background:#7d7d00}
.purple{color:#600060}
.purple-background{background:#7d007d}
.red{color:#bf0000}
.red-background{background:#fa0000}
.silver{color:#909090}
.silver-background{background:#bcbcbc}
.teal{color:#006060}
.teal-background{background:#007d7d}
.white{color:#bfbfbf}
.white-background{background:#fafafa}
.yellow{color:#bfbf00}
.yellow-background{background:#fafa00}
span.icon>.fa{cursor:default}
a span.icon>.fa{cursor:inherit}
.admonitionblock td.icon [class^="fa icon-"]{font-size:2.5em;text-shadow:1px 1px 2px rgba(0,0,0,.5);cursor:default}
.admonitionblock td.icon .icon-note::before{content:"\f05a";color:#19407c}
.admonitionblock td.icon .icon-tip::before{content:"\f0eb";text-shadow:1px 1px 2px rgba(155,155,0,.8);color:#111}
.admonitionblock td.icon .icon-warning::before{content:"\f071";color:#bf6900}
.admonitionblock td.icon .icon-caution::before{content:"\f06d";color:#bf3400}
.admonitionblock td.icon .icon-important::before{content:"\f06a";color:#bf0000}
.conum[data-value]{display:inline-block;color:#fff!important;background:rgba(0,0,0,.8);border-radius:50%;text-align:center;font-size:.75em;width:1.67em;height:1.67em;line-height:1.67em;font-family:"Open Sans","DejaVu Sans",sans-serif;font-style:normal;font-weight:bold}
.conum[data-value] *{color:#fff!important}
.conum[data-value]+b{display:none}
.conum[data-value]::after{content:attr(data-value)}
pre .conum[data-value]{position:relative;top:-.125em}
b.conum *{color:inherit!important}
.conum:not([data-value]):empty{display:none}
dt,th.tableblock,td.content,div.footnote{text-rendering:optimizeLegibility}
h1,h2,p,td.content,span.alt,summary{letter-spacing:-.01em}
p strong,td.content strong,div.footnote strong{letter-spacing:-.005em}
p,blockquote,dt,td.content,span.alt,summary{font-size:1.0625rem}
p{margin-bottom:1.25rem}
.sidebarblock p,.sidebarblock dt,.sidebarblock td.content,p.tableblock{font-size:1em}
.exampleblock>.content{background:#fffef7;border-color:#e0e0dc;box-shadow:0 1px 4px #e0e0dc}
.print-only{display:none!important}
@page{margin:1.25cm .75cm}
@media print{*{box-shadow:none!important;text-shadow:none!important}
html{font-size:80%}
a{color:inherit!important;text-decoration:underline!important}
a.bare,a[href^="#"],a[href^="mailto:"]{text-decoration:none!important}
a[href^="http:"]:not(.bare)::after,a[href^="https:"]:not(.bare)::after{content:"(" attr(href) ")";display:inline-block;font-size:.875em;padding-left:.25em}
abbr[title]{border-bottom:1px dotted}
abbr[title]::after{content:" (" attr(title) ")"}
pre,blockquote,tr,img,object,svg{page-break-inside:avoid}
thead{display:table-header-group}
svg{max-width:100%}
p,blockquote,dt,td.content{font-size:1em;orphans:3;widows:3}
h2,h3,#toctitle,.sidebarblock>.content>.title{page-break-after:avoid}
#header,#content,#footnotes,#footer{max-width:none}
#toc,.sidebarblock,.exampleblock>.content{background:none!important}
#toc{border-bottom:1px solid #dddddf!important;padding-bottom:0!important}
body.book #header{text-align:center}
body.book #header>h1:first-child{border:0!important;margin:2.5em 0 1em}
body.book #header .details{border:0!important;display:block;padding:0!important}
body.book #header .details span:first-child{margin-left:0!important}
body.book #header .details br{display:block}
body.book #header .details br+span::before{content:none!important}
body.book #toc{border:0!important;text-align:left!important;padding:0!important;margin:0!important}
body.book #toc,body.book #preamble,body.book h1.sect0,body.book .sect1>h2{page-break-before:always}
.listingblock code[data-lang]::before{display:block}
#footer{padding:0 .9375em}
.hide-on-print{display:none!important}
.print-only{display:block!important}
.hide-for-print{display:none!important}
.show-for-print{display:inherit!important}}
@media amzn-kf8,print{#header>h1:first-child{margin-top:1.25rem}
.sect1{padding:0!important}
.sect1+.sect1{border:0}
#footer{background:none}
#footer-text{color:rgba(0,0,0,.6);font-size:.9em}}
@media amzn-kf8{#header,#content,#footnotes,#footer{padding:0}}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="canonical" href="http://infinispan.org/docs/stable/titles/operator.html">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.3.1/themes/default/style.min.css">
<link rel="stylesheet" href="css/css.css">
<link rel="stylesheet" href="/assets/css/clipboard.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.3.1/jstree.min.js"></script>
<script src="js/ojs.js"></script>
<script src="/assets/javascript/clipboard.min.js" type="text/javascript"></script>
<script src="/assets/javascript/copy.js" type="text/javascript"></script>
</head>
<body id="infinispan_operator" class="book toc2 toc-left">
<div id="header">
<h1>Infinispan Operator 2.3 Guide</h1>
<div id="toc" class="toc2">
<div id="toctitle">Table of Contents</div>
<ul class="sectlevel1">
<li><a href="#operator">1. Infinispan Operator</a>
<ul class="sectlevel2">
<li><a href="#supported-versions_operator">1.1. Supported versions</a></li>
<li><a href="#infinispan-operator-deployments_operator">1.2. Infinispan Operator deployments</a></li>
<li><a href="#operator-managed-clusters_operator">1.3. Cluster management</a></li>
<li><a href="#operator-reconciliation_operator">1.4. Resource reconciliation</a></li>
</ul>
</li>
<li><a href="#installing-native-cli-plugin">2. Installing the native Infinispan CLI as a client plugin</a>
<ul class="sectlevel2">
<li><a href="#installing-native-cli_installing-native-cli-plugin">2.1. Installing the native Infinispan CLI plugin</a></li>
<li><a href="#native-cli-usage_installing-native-cli-plugin">2.2. kubectl-infinispan command reference</a></li>
</ul>
</li>
<li><a href="#installation">3. Installing Infinispan Operator</a>
<ul class="sectlevel2">
<li><a href="#install-olm_install">3.1. Installing Infinispan Operator on Red Hat OpenShift</a></li>
<li><a href="#install-native-cli_install">3.2. Installing Infinispan Operator with the native CLI plugin</a></li>
<li><a href="#install-operatorhub_install">3.3. Installing Infinispan Operator from OperatorHub.io</a></li>
<li><a href="#install-manually_install">3.4. Building and installing Infinispan Operator manually</a></li>
</ul>
</li>
<li><a href="#creating-clusters">4. Creating Infinispan clusters</a>
<ul class="sectlevel2">
<li><a href="#infinispan-cr_creating-clusters">4.1. Infinispan custom resource (CR)</a></li>
<li><a href="#creating-clusters-native-cli_creating-clusters">4.2. Creating Infinispan clusters</a></li>
<li><a href="#verifying-clusters_creating-clusters">4.3. Verifying Infinispan cluster views</a></li>
<li><a href="#creating-minimal-clusters_creating-clusters">4.4. Modifying Infinispan clusters</a></li>
<li><a href="#graceful-shutdown_creating-clusters">4.5. Stopping and starting Infinispan clusters</a></li>
</ul>
</li>
<li><a href="#configuring-clusters">5. Configuring Infinispan clusters</a>
<ul class="sectlevel2">
<li><a href="#applying-custom-configuration_configuring-clusters">5.1. Applying custom configuration to Infinispan clusters</a></li>
<li><a href="#infinispan-configuration_configuring-clusters">5.2. Custom Infinispan configuration</a>
<ul class="sectlevel3">
<li><a href="#_cache_template">5.2.1. Cache template</a></li>
<li><a href="#_logging_configuration">5.2.2. Logging configuration</a></li>
</ul>
</li>
<li><a href="#secure_credentials_configuring-clusters">5.3. Securing custom Infinispan configuration</a></li>
</ul>
</li>
<li><a href="#upgrading-clusters">6. Upgrading Infinispan clusters</a>
<ul class="sectlevel2">
<li><a href="#cluster-upgrades_upgrading-clusters">6.1. Infinispan cluster upgrades</a></li>
<li><a href="#upgrading-clusters-downtime_upgrading-clusters">6.2. Upgrading Infinispan clusters with downtime</a></li>
<li><a href="#upgrading-clusters-rolling_upgrading-clusters">6.3. Performing Hot Rod rolling upgrades for Infinispan clusters</a>
<ul class="sectlevel3">
<li><a href="#recovering_rolling_upgrades_upgrading-clusters">6.3.1. Recovering from a failed Hot Rod rolling upgrade</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#creating-services">7. Setting up Infinispan services</a>
<ul class="sectlevel2">
<li><a href="#services_services">7.1. Service types</a></li>
<li><a href="#creating-datagrid-service_services">7.2. Creating Data Grid Service pods</a>
<ul class="sectlevel3">
<li><a href="#datagrid-cr_services">7.2.1. Data Grid Service CR</a></li>
</ul>
</li>
<li><a href="#allocating-storage_services">7.3. Allocating storage resources</a>
<ul class="sectlevel3">
<li><a href="#persistent-volume-claims_services">7.3.1. Persistent volume claims</a></li>
</ul>
</li>
<li><a href="#allocating-cpu-and-memory_services">7.4. Allocating CPU and memory</a></li>
<li><a href="#setting-jvm-options_services">7.5. Setting JVM options</a></li>
<li><a href="#configuring-pod-priority_services">7.6. Configuring pod priority</a></li>
<li><a href="#configuring-logging_services">7.7. Adjusting log levels</a>
<ul class="sectlevel3">
<li><a href="#logging-levels_services">7.7.1. Logging reference</a></li>
</ul>
</li>
<li><a href="#specifying-server-image_services">7.8. Specifying Infinispan Server images</a></li>
<li><a href="#creating-cache-service_services">7.9. Creating Cache Service pods</a>
<ul class="sectlevel3">
<li><a href="#cache-service-resources_services">7.9.1. Cache Service CR</a></li>
</ul>
</li>
<li><a href="#automatic-scaling_services">7.10. Automatic scaling</a>
<ul class="sectlevel3">
<li><a href="#configuring-autoscaling_services">7.10.1. Configuring automatic scaling</a></li>
</ul>
</li>
<li><a href="#adding-custom-labels_services">7.11. Adding labels and annotations to Infinispan resources</a></li>
<li><a href="#adding-labels-annotations-env_services">7.12. Adding labels and annotations with environment variables</a></li>
<li><a href="#defining-environment-variables_services">7.13. Defining environment variables in the Infinispan Operator subscription</a></li>
</ul>
</li>
<li><a href="#configuring-authentication">8. Configuring authentication</a>
<ul class="sectlevel2">
<li><a href="#default-credentials_authn">8.1. Default credentials</a></li>
<li><a href="#retrieving-credentials_authn">8.2. Retrieving credentials</a></li>
<li><a href="#adding-credentials_authn">8.3. Adding custom user credentials</a></li>
<li><a href="#changing-operator-password_authn">8.4. Changing the operator password</a></li>
<li><a href="#disabling-authentication_authn">8.5. Disabling user authentication</a></li>
</ul>
</li>
<li><a href="#client-certificates">9. Configuring client certificate authentication</a>
<ul class="sectlevel2">
<li><a href="#client-certificate-authentication_client-certificates">9.1. Client certificate authentication</a></li>
<li><a href="#enabling-client-certificate-authentication_client-certificates">9.2. Enabling client certificate authentication</a></li>
<li><a href="#providing-client-truststores_client-certificates">9.3. Providing client truststores</a></li>
<li><a href="#providing-client-certificates_client-certificates">9.4. Providing client certificates</a></li>
</ul>
</li>
<li><a href="#configuring-encryption">10. Configuring encryption</a>
<ul class="sectlevel2">
<li><a href="#encryption-service-ca_tls">10.1. Encryption with Red Hat OpenShift service certificates</a></li>
<li><a href="#retrieving-tls-certificates_tls">10.2. Retrieving TLS certificates</a></li>
<li><a href="#disabling-encryption_tls">10.3. Disabling encryption</a></li>
<li><a href="#using-custom-encryption-secrets_tls">10.4. Using custom TLS certificates</a>
<ul class="sectlevel3">
<li><a href="#custom-encryption-secrets_tls">10.4.1. Custom encryption secrets</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#authorization">11. Configuring user roles and permissions</a>
<ul class="sectlevel2">
<li><a href="#allocating-storage_authorization">11.1. Enabling security authorization</a></li>
<li><a href="#user-roles-permissions_authorization">11.2. User roles and permissions</a></li>
<li><a href="#assigning-user-roles_authorization">11.3. Assigning roles and permissions to users</a></li>
<li><a href="#adding-custom-roles-permissions_authorization">11.4. Adding custom roles and permissions</a></li>
</ul>
</li>
<li><a href="#creating-network">12. Configuring network access to Infinispan</a>
<ul class="sectlevel2">
<li><a href="#getting-internal-service_network-services">12.1. Getting the service for internal connections</a></li>
<li><a href="#exposing-loadbalancer_network-services">12.2. Exposing Infinispan through a LoadBalancer service</a></li>
<li><a href="#exposing-nodeport_network-services">12.3. Exposing Infinispan through a NodePort service</a></li>
<li><a href="#exposing-routes_network-services">12.4. Exposing Infinispan through a Route</a></li>
<li><a href="#network-services_network-services">12.5. Network services</a></li>
</ul>
</li>
<li><a href="#setting-up-xsite">13. Setting up cross-site replication</a>
<ul class="sectlevel2">
<li><a href="#cross-site-expose-types_cross-site">13.1. Cross-site replication expose types</a></li>
<li><a href="#managed-cross-site-connections_cross-site">13.2. Managed cross-site replication</a>
<ul class="sectlevel3">
<li><a href="#creating-sa-tokens-openshift_cross-site">13.2.1. Creating service account tokens for managed cross-site connections</a></li>
<li><a href="#exchanging-sa-tokens_cross-site">13.2.2. Exchanging service account tokens</a></li>
<li><a href="#applying-cluster-roles-xsite_cross-site">13.2.3. Setting up Kubernetes for managed cross-site connections</a></li>
<li><a href="#configuring-sites-automatically_cross-site">13.2.4. Configuring managed cross-site connections</a></li>
</ul>
</li>
<li><a href="#configuring-sites-manually_cross-site">13.3. Manually configuring cross-site connections</a></li>
<li><a href="#allocating-cpu-and-memory-cross-site_cross-site">13.4. Allocating CPU and memory for Gossip router pod</a></li>
<li><a href="#disabling-gossip-router-cross-site_cross-site">13.5. Disabling local Gossip router and service</a></li>
<li><a href="#cross-site-resources-automatic_cross-site">13.6. Resources for configuring cross-site replication</a></li>
<li><a href="#securing-cross-site-connections_cross-site">13.7. Securing cross-site connections</a>
<ul class="sectlevel3">
<li><a href="#cross-site-encryption-resources_cross-site">13.7.1. Resources for configuring cross-site encryption</a></li>
<li><a href="#cross-site-encryption-secrets_cross-site">13.7.2. Cross-site encryption secrets</a></li>
</ul>
</li>
<li><a href="#configuring-sites-in-clusters_cross-site">13.8. Configuring sites in the same Kubernetes cluster</a></li>
</ul>
</li>
<li><a href="#monitoring-services">14. Monitoring Infinispan services</a>
<ul class="sectlevel2">
<li><a href="#creating-service-monitor_monitor">14.1. Creating a Prometheus service monitor</a>
<ul class="sectlevel3">
<li><a href="#disabling-service-monitor_monitor">14.1.1. Disabling the Prometheus service monitor</a></li>
<li><a href="#configuring-service-monitor-target-labels_monitor">14.1.2. Configuring Service Monitor Target Labels</a></li>
</ul>
</li>
<li><a href="#creating-grafana-dashboards_monitor">14.2. Creating Grafana data sources</a></li>
<li><a href="#configuring-grafana-dashboards_monitor">14.3. Configuring Infinispan dashboards</a></li>
<li><a href="#enabling-jmx_monitor">14.4. Enabling JMX remote ports for Infinispan clusters</a></li>
<li><a href="#deploying-cryostat_monitor">14.5. Setting up JFR recordings with Cryostat</a></li>
</ul>
</li>
<li><a href="#anti-affinity">15. Guaranteeing availability with anti-affinity</a>
<ul class="sectlevel2">
<li><a href="#anti-affinity_availability">15.1. Anti-affinity strategies</a></li>
<li><a href="#configuring_anti_affinity-availability">15.2. Configuring anti-affinity</a>
<ul class="sectlevel3">
<li><a href="#anti-affinity-strategies_availability">15.2.1. Anti-affinity strategy configurations</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#creating-caches">16. Creating caches with Infinispan Operator</a>
<ul class="sectlevel2">
<li><a href="#caches_creating-caches">16.1. Infinispan caches</a></li>
<li><a href="#creating-caches_creating-caches">16.2. Creating caches with the Cache CR</a></li>
<li><a href="#updating_cache_creating-caches">16.3. Updating caches with the Cache CR</a></li>
<li><a href="#adding-cache-stores_creating-caches">16.4. Adding persistent cache stores</a></li>
<li><a href="#creating-caches-cacheservice_creating-caches">16.5. Adding caches to Cache Service pods</a>
<ul class="sectlevel3">
<li><a href="#default-cache-service-config_creating-caches">16.5.1. Default cache configuration</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#batch-cr">17. Running batch operations</a>
<ul class="sectlevel2">
<li><a href="#batching-inline_batch">17.1. Running inline batch operations</a></li>
<li><a href="#batching-create-configmap_batch">17.2. Creating ConfigMaps for batch operations</a></li>
<li><a href="#batching-configmap_batch">17.3. Running batch operations with ConfigMaps</a></li>
<li><a href="#batch-status_batch">17.4. Batch status messages</a></li>
<li><a href="#batch-operations_batch">17.5. Example batch operations</a>
<ul class="sectlevel3">
<li><a href="#_caches">17.5.1. Caches</a></li>
<li><a href="#_counters">17.5.2. Counters</a></li>
<li><a href="#_protobuf_schema">17.5.3. Protobuf schema</a></li>
<li><a href="#_tasks">17.5.4. Tasks</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#backing-up-restoring">18. Backing up and restoring Infinispan clusters</a>
<ul class="sectlevel2">
<li><a href="#backup-restore_backup-restore">18.1. Backup and Restore CRs</a></li>
<li><a href="#backing-up-clusters_backup-restore">18.2. Backing up Infinispan clusters</a></li>
<li><a href="#restoring-clusters_backup-restore">18.3. Restoring Infinispan clusters</a></li>
<li><a href="#backup-restore-status_backup-restore">18.4. Backup and restore status</a>
<ul class="sectlevel3">
<li><a href="#handling-failed-backups_backup-restore">18.4.1. Handling failed backup and restore operations</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#deploying-code">19. Deploying custom code to Infinispan</a>
<ul class="sectlevel2">
<li><a href="#copying-code_custom-code">19.1. Copying code artifacts to Infinispan clusters</a></li>
<li><a href="#downloading-code_custom-code">19.2. Downloading code artifacts</a></li>
</ul>
</li>
<li><a href="#eventing">20. Sending cloud events from Infinispan clusters</a>
<ul class="sectlevel2">
<li><a href="#cloud-events_cloud-events">20.1. Cloud events</a></li>
<li><a href="#enabling-cloud-events_cloud-events">20.2. Enabling cloud events</a></li>
</ul>
</li>
<li><a href="#connecting-clients">21. Establishing remote client connections</a>
<ul class="sectlevel2">
<li><a href="#client-connection-details_clients">21.1. Client connection details</a></li>
<li><a href="#connecting-cli_clients">21.2. Connecting to Infinispan clusters with remote shells</a></li>
<li><a href="#connecting-console_clients">21.3. Accessing Infinispan Console</a></li>
<li><a href="#hotrod-clients_clients">21.4. Hot Rod clients</a>
<ul class="sectlevel3">
<li><a href="#hotrod-configuration-builder_clients">21.4.1. Hot Rod client configuration API</a></li>
<li><a href="#configuring-clients-present-certificates_clients">21.4.2. Configuring Hot Rod clients for certificate authentication</a></li>
<li><a href="#creating-caches-hotrod_clients">21.4.3. Creating caches from Hot Rod clients</a></li>
</ul>
</li>
<li><a href="#connecting-rest_clients">21.5. Accessing the REST API</a></li>
</ul>
</li>
</ul>
</div>
</div>
<div id="content">
<div class="sect1">
<h2 id="operator"><a class="anchor" href="#operator"></a>1. Infinispan Operator</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Infinispan Operator provides operational intelligence and reduces management complexity for deploying Infinispan on Kubernetes and Red Hat OpenShift.</p>
</div>
<div class="sect2">
<h3 id="supported-versions_operator"><a class="anchor" href="#supported-versions_operator"></a>1.1. Supported versions</h3>
<div class="paragraph _abstract">
<p>Since version 2.3.0 Infinispan Operator supports multiple Infinispan Server versions.
You can upgrade the version of your cluster between supported Infinispan versions:</p>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Infinispan Operator version</th>
<th class="tableblock halign-left valign-top">Infinispan Server versions</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock">2.3.0</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">13.0.10<br>
14.0.1<br>
14.0.6
14.0.9
14.0.13
14.0.17
14.0.19
14.0.20
14.0.21</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="infinispan-operator-deployments_operator"><a class="anchor" href="#infinispan-operator-deployments_operator"></a>1.2. Infinispan Operator deployments</h3>
<div class="paragraph">
<p>When you install Infinispan Operator, it extends the Kubernetes API with Custom Resource Definitions (CRDs) for deploying and managing Infinispan clusters on Red Hat OpenShift.</p>
</div>
<div class="paragraph">
<p>To interact with Infinispan Operator, Kubernetes users apply Custom Resources (CRs) through the Kubernetes Dashboard or <code>kubectl</code> client.
Infinispan Operator listens for <code>Infinispan</code> CRs and automatically provisions native resources, such as StatefulSets and Secrets, that your Infinispan deployment requires.
Infinispan Operator also configures Infinispan services according to the specifications in <code>Infinispan</code> CRs, including the number of pods for the cluster and backup locations for cross-site replication.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="../topics/images/custom-resources-ispn.png" alt="This illustration depicts how Kubernetes users pass custom resources to Infinispan Operator.">
</div>
<div class="title">Figure 1. Custom resources</div>
</div>
</div>
<div class="sect2">
<h3 id="operator-managed-clusters_operator"><a class="anchor" href="#operator-managed-clusters_operator"></a>1.3. Cluster management</h3>
<div class="paragraph">
<p>A single Infinispan Operator installation can manage multiple clusters with different Infinispan versions in separate namespaces.
Each time a user applies CRs to modify the deployment, Infinispan Operator applies the changes globally to all Infinispan clusters.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="../topics/images/operator-managed-clusters-ispn.png" alt="This illustration depicts how Infinispan Operator manages multiple clusters on Kubernetes.">
</div>
<div class="title">Figure 2. Operator-managed clusters</div>
</div>
</div>
<div class="sect2">
<h3 id="operator-reconciliation_operator"><a class="anchor" href="#operator-reconciliation_operator"></a>1.4. Resource reconciliation</h3>
<div class="paragraph">
<p>Infinispan Operator reconciles custom resources such as the <code>Cache</code> CR with resources on your Infinispan cluster.</p>
</div>
<div class="paragraph">
<p>Bidirectional reconciliation synchronizes your CRs with changes that you make to Infinispan resources through the Infinispan Console, command line interface (CLI), or other client application and vice versa.
For example if you create a cache through the Infinispan Console then Infinispan Operator adds a declarative Kubernetes representation.</p>
</div>
<div class="paragraph">
<p>To perform reconciliation Infinispan Operator creates a <code>listener</code> pod for each Infinispan cluster that detects modifications for <code>Infinispan</code> resources.</p>
</div>
<div class="ulist">
<div class="title">Notes about reconciliation</div>
<ul>
<li>
<p>When you create a cache through the Infinispan Console, CLI, or other client application, Infinispan Operator creates a corresponding <code>Cache</code> CR with a unique name that conforms to the Kubernetes naming policy.</p>
</li>
<li>
<p>Declarative Kubernetes representations of Infinispan resources that Infinispan Operator creates with the <code>listener</code> pod are linked to <code>Infinispan</code> CRs.<br>
Deleting <code>Infinispan</code> CRs removes any associated resource declarations.</p>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="installing-native-cli-plugin"><a class="anchor" href="#installing-native-cli-plugin"></a>2. Installing the native Infinispan CLI as a client plugin</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Infinispan provides a command line interface (CLI) compiled to a native executable that you can install as a plugin for <code>kubectl</code> clients.
You can then use your <code>kubectl</code> client to:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Create Infinispan Operator subscriptions and remove Infinispan Operator installations.</p>
</li>
<li>
<p>Set up Infinispan clusters and configure services.</p>
</li>
<li>
<p>Work with Infinispan resources via remote shells.</p>
</li>
</ul>
</div>
<div class="sect2">
<h3 id="installing-native-cli_installing-native-cli-plugin"><a class="anchor" href="#installing-native-cli_installing-native-cli-plugin"></a>2.1. Installing the native Infinispan CLI plugin</h3>
<div class="paragraph _abstract">
<p>Install the native Infinispan Command Line Interface (CLI) as a plugin for <code>kubectl</code> clients.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Have a <code>kubectl</code> or <code>oc</code> client.</p>
</li>
<li>
<p>Download the native Infinispan CLI distribution from <a href="https://github.com/infinispan/infinispan-quarkus/releases/">infinispan-quarkus releases</a>.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Extract the <code>.zip</code> archive for the native Infinispan CLI distribution.</p>
</li>
<li>
<p>Copy the native executable, or create a hard link, to a file named "kubectl-infinispan", for example:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>cp infinispan-cli kubectl-infinispan</code></pre>
</div>
</div>
</li>
<li>
<p>Add <code>kubectl-infinispan</code> to your <code>PATH</code>.</p>
</li>
<li>
<p>Verify that the CLI is installed.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl plugin list

The following compatible plugins are available:
/path/to/kubectl-infinispan</code></pre>
</div>
</div>
</li>
<li>
<p>Use the <code class="command">infinispan --help</code> command to view available commands.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl infinispan --help</code></pre>
</div>
</div>
</li>
</ol>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://kubernetes.io/docs/tasks/extend-kubectl/kubectl-plugins/#installing-kubectl-plugins">Installing kubectl plugins</a></p>
</li>
<li>
<p><a href="https://docs.openshift.com/container-platform/4.9/cli_reference/openshift_cli/extending-cli-plugins.html">Extending the OpenShift CLI with plug-ins</a></p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="native-cli-usage_installing-native-cli-plugin"><a class="anchor" href="#native-cli-usage_installing-native-cli-plugin"></a>2.2. kubectl-infinispan command reference</h3>
<div class="paragraph _abstract">
<p>This topic provides some details about the <code>kubectl-infinispan</code> plugin for clients.</p>
</div>
<div class="admonitionblock tip">
<table>
<tr>
<td class="icon">
<i class="fa icon-tip" title="Tip"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Use the <code>--help</code> argument to view the complete list of available options and descriptions for each command.</p>
</div>
<div class="paragraph">
<p>For example, <code>kubectl infinispan create cluster --help</code> prints all command options for creating Infinispan clusters.</p>
</div>
</td>
</tr>
</table>
</div>
<table class="tableblock frame-all grid-all stripes-even fit-content">
<colgroup>
<col>
<col>
</colgroup>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock">Command</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Description</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>kubectl infinispan install</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Creates Infinispan Operator subscriptions and installs into the global namespace by default.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>kubectl infinispan create cluster</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Creates Infinispan clusters.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>kubectl infinispan get clusters</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Displays running Infinispan clusters.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>kubectl infinispan shell</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Starts an interactive remote shell session on a Infinispan cluster.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>kubectl infinispan delete cluster</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Removes Infinispan clusters.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>kubectl infinispan uninstall</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Removes Infinispan Operator installations and all managed resources.</p></td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
<div class="sect1">
<h2 id="installation"><a class="anchor" href="#installation"></a>3. Installing Infinispan Operator</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Install Infinispan Operator into a Kubernetes namespace to create and manage Infinispan clusters.</p>
</div>
<div class="sect2">
<h3 id="install-olm_install"><a class="anchor" href="#install-olm_install"></a>3.1. Installing Infinispan Operator on Red Hat OpenShift</h3>
<div class="paragraph _abstract">
<p>Create subscriptions to Infinispan Operator on OpenShift so you can install different Infinispan versions and receive automatic updates.</p>
</div>
<div class="paragraph">
<p>Automatic updates apply to Infinispan Operator first and then for each Infinispan node.
Infinispan Operator updates clusters one node at a time, gracefully shutting down each node and then bringing it back online with the updated version before going on to the next node.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Access to <strong>OperatorHub</strong> running on OpenShift. Some OpenShift environments, such as OpenShift Container Platform, can require administrator credentials.</p>
</li>
<li>
<p>Ensure the Operator Lifecycle Manager (OLM) is installed.</p>
</li>
<li>
<p>Have an OpenShift project for Infinispan Operator if you plan to install it into a specific namespace.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Log in to the Kubernetes Dashboard.</p>
</li>
<li>
<p>Navigate to <strong>OperatorHub</strong>.</p>
</li>
<li>
<p>Find and select Infinispan Operator.</p>
</li>
<li>
<p>Select <strong>Install</strong> and continue to <strong>Create Operator Subscription</strong>.</p>
</li>
<li>
<p>Specify options for your subscription.</p>
<div class="dlist">
<dl>
<dt class="hdlist1">Installation Mode</dt>
<dd>
<p>You can install Infinispan Operator into a <strong>Specific</strong> namespace or <strong>All</strong> namespaces.</p>
</dd>
<dt class="hdlist1">Update Channel</dt>
<dd>
<p>Subscribe to updates for Infinispan Operator versions.</p>
</dd>
<dt class="hdlist1">Approval Strategies</dt>
<dd>
<p>When new Infinispan versions become available, you can install updates manually or let Infinispan Operator install them automatically.</p>
</dd>
</dl>
</div>
</li>
<li>
<p>Select <strong>Subscribe</strong> to install Infinispan Operator.</p>
</li>
<li>
<p>Navigate to <strong>Installed Operators</strong> to verify the Infinispan Operator installation.</p>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="install-native-cli_install"><a class="anchor" href="#install-native-cli_install"></a>3.2. Installing Infinispan Operator with the native CLI plugin</h3>
<div class="paragraph _abstract">
<p>Install Infinispan Operator with the native Infinispan CLI plugin, <code>kubectl-infinispan</code>.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Have <code>kubectl-infinispan</code> on your <code>PATH</code>.</p>
</li>
<li>
<p>Ensure the Operator Lifecycle Manager (OLM) is installed.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Run the <code class="command">oc infinispan install</code> command to create Infinispan Operator subscriptions, for example:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl infinispan install --channel=2.3.x
                           --source=redhat-operators
                           --source-namespace=openshift-marketplace</code></pre>
</div>
</div>
</li>
<li>
<p>Verify the installation.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get pods -n openshift-operators | grep infinispan-operator
NAME                                   READY   STATUS
infinispan-operator-&lt;id&gt;               1/1     Running</code></pre>
</div>
</div>
</li>
</ol>
</div>
<div class="admonitionblock tip">
<table>
<tr>
<td class="icon">
<i class="fa icon-tip" title="Tip"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Use <code>oc infinispan install --help</code> for command options and descriptions.</p>
</div>
</td>
</tr>
</table>
</div>
</div>
<div class="sect2">
<h3 id="install-operatorhub_install"><a class="anchor" href="#install-operatorhub_install"></a>3.3. Installing Infinispan Operator from OperatorHub.io</h3>
<div class="paragraph _abstract">
<p>Use the command line to install Infinispan Operator from <a href="https://operatorhub.io/operator/infinispan">OperatorHub.io</a>.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>OKD 3.11 or later.</p>
</li>
<li>
<p>Kubernetes 1.11 or later.</p>
</li>
<li>
<p>Ensure the Operator Lifecycle Manager (OLM) is installed.</p>
</li>
<li>
<p>Have administrator access on the Kubernetes cluster.</p>
</li>
<li>
<p>Have a <code>kubectl</code> or <code>oc</code> client.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Navigate to the Infinispan Operator entry on <a href="https://operatorhub.io/operator/infinispan">OperatorHub.io</a>.</p>
</li>
<li>
<p>Follow the instructions to install Infinispan Operator into your Kubernetes cluster.</p>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="install-manually_install"><a class="anchor" href="#install-manually_install"></a>3.4. Building and installing Infinispan Operator manually</h3>
<div class="paragraph _abstract">
<p>Manually build and install Infinispan Operator from the GitHub repository.</p>
</div>
<div class="ulist">
<div class="title">Procedure</div>
<ul>
<li>
<p>Follow the appropriate instructions in the <a href="https://github.com/infinispan/infinispan-operator/blob/main/README.md">Infinispan Operator README</a>.</p>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="creating-clusters"><a class="anchor" href="#creating-clusters"></a>4. Creating Infinispan clusters</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Create Infinispan clusters running on Kubernetes with the <code>Infinispan</code> CR or with the native Infinispan CLI plugin for <code>kubectl</code> clients.</p>
</div>
<div class="sect2">
<h3 id="infinispan-cr_creating-clusters"><a class="anchor" href="#infinispan-cr_creating-clusters"></a>4.1. Infinispan custom resource (CR)</h3>
<div class="paragraph _abstract">
<p>Infinispan Operator adds a new Custom Resource (CR) of type <code>Infinispan</code> that lets you handle Infinispan clusters as complex units on Kubernetes.</p>
</div>
<div class="paragraph">
<p>Infinispan Operator listens for <code>Infinispan</code> Custom Resources (CR) that you use to instantiate and configure Infinispan clusters and manage Kubernetes resources, such as StatefulSets and Services.</p>
</div>
<div class="listingblock">
<div class="title"><code>Infinispan</code> CR</div>
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
spec:
  replicas: 2
  version: &lt;Infinispan_version&gt;
  service:
    type: DataGrid</code></pre>
</div>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>apiVersion</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Declares the version of the <code>Infinispan</code> API.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>kind</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Declares the <code>Infinispan</code> CR.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>metadata.name</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies a name for your Infinispan cluster.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.replicas</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the number of pods in your Infinispan cluster.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.service.type</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the type of Infinispan service to create.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.version</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the Infinispan Server version of your cluster.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="creating-clusters-native-cli_creating-clusters"><a class="anchor" href="#creating-clusters-native-cli_creating-clusters"></a>4.2. Creating Infinispan clusters</h3>
<div class="paragraph _abstract">
<p>Create Infinispan clusters with the native CLI plugin, <code>kubectl-infinispan</code>.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Install Infinispan Operator.</p>
</li>
<li>
<p>Have <code>kubectl-infinispan</code> on your <code>PATH</code>.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Run the <code class="command">infinispan create cluster</code> command.</p>
<div class="paragraph">
<p>For example, create a Infinispan cluster with two pods as follows:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl infinispan create cluster --replicas=3 -Pservice.type=DataGrid infinispan</code></pre>
</div>
</div>
<div class="admonitionblock tip">
<table>
<tr>
<td class="icon">
<i class="fa icon-tip" title="Tip"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Add the <code>--version</code> argument to control the Infinispan version of your cluster.
For example, <code>--version=14.0.21</code>.
If you don&#8217;t specify the version, Infinispan Operator creates cluster with the latest supported Infinispan version.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Watch Infinispan Operator create the Infinispan pods.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get pods -w</code></pre>
</div>
</div>
</li>
</ol>
</div>
<div class="paragraph">
<div class="title">Next steps</div>
<p>After you create a Infinispan cluster, use the <code>kubectl</code> to apply changes to <code>Infinispan</code> CR and configure your Infinispan service.</p>
</div>
<div class="paragraph">
<p>You can also delete Infinispan clusters with <code>kubectl-infinispan</code> and re-create them as required.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl infinispan delete cluster infinispan</code></pre>
</div>
</div>
<div class="ulist">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://infinispan.org/docs/infinispan-operator/main/operator.html#native-cli-usage_installing-native-cli-plugin">kubectl-infinispan command reference</a></p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="verifying-clusters_creating-clusters"><a class="anchor" href="#verifying-clusters_creating-clusters"></a>4.3. Verifying Infinispan cluster views</h3>
<div class="paragraph _abstract">
<p>Confirm that Infinispan pods have successfully formed clusters.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Create at least one Infinispan cluster.</p>
</li>
</ul>
</div>
<div class="ulist">
<div class="title">Procedure</div>
<ul>
<li>
<p>Retrieve the <code>Infinispan</code> CR for Infinispan Operator.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get infinispan -o yaml</code></pre>
</div>
</div>
<div class="paragraph">
<p>The response indicates that Infinispan pods have received clustered views, as in the following example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>conditions:
  - message: 'View: [infinispan-0, infinispan-1]'
    status: "True"
    type: wellFormed</code></pre>
</div>
</div>
</li>
</ul>
</div>
<div class="admonitionblock tip">
<table>
<tr>
<td class="icon">
<i class="fa icon-tip" title="Tip"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Do the following for automated scripts:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl wait --for condition=wellFormed --timeout=240s infinispan/infinispan</code></pre>
</div>
</div>
</td>
</tr>
</table>
</div>
<h4 id="_retrieving_cluster_view_from_logs" class="discrete">Retrieving cluster view from logs</h4>
<div class="paragraph">
<p>You can also get the cluster view from Infinispan logs as follows:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl logs infinispan-0 | grep ISPN000094</code></pre>
</div>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>INFO  [org.infinispan.CLUSTER] (MSC service thread 1-2) \
ISPN000094: Received new cluster view for channel infinispan: \
[infinispan-0|0] (1) [infinispan-0]

INFO  [org.infinispan.CLUSTER] (jgroups-3,infinispan-0) \
ISPN000094: Received new cluster view for channel infinispan: \
[infinispan-0|1] (2) [infinispan-0, infinispan-1]</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="creating-minimal-clusters_creating-clusters"><a class="anchor" href="#creating-minimal-clusters_creating-clusters"></a>4.4. Modifying Infinispan clusters</h3>
<div class="paragraph _abstract">
<p>Configure Infinispan clusters by providing Infinispan Operator with a custom <code>Infinispan</code> CR.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Install Infinispan Operator.</p>
</li>
<li>
<p>Create at least one Infinispan cluster.</p>
</li>
<li>
<p>Have an <code>oc</code> or a <code>kubectl</code> client.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create a YAML file that defines your <code>Infinispan</code> CR.</p>
<div class="paragraph">
<p>For example, create a <code>my_infinispan.yaml</code> file that changes the number of Infinispan pods to two:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>cat &gt; cr_minimal.yaml&lt;&lt;EOF
apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
spec:
  replicas: 2
  version: &lt;Infinispan_version&gt;
  service:
    type: DataGrid
EOF</code></pre>
</div>
</div>
</li>
<li>
<p>Apply your <code>Infinispan</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl apply -f my_infinispan.yaml</code></pre>
</div>
</div>
</li>
<li>
<p>Watch Infinispan Operator scale the Infinispan pods.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get pods -w</code></pre>
</div>
</div>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="graceful-shutdown_creating-clusters"><a class="anchor" href="#graceful-shutdown_creating-clusters"></a>4.5. Stopping and starting Infinispan clusters</h3>
<div class="paragraph _abstract">
<p>Stop and start Infinispan pods in a graceful, ordered fashion to correctly preserve cluster state.</p>
</div>
<div class="paragraph">
<p>Clusters of Data Grid Service pods must restart with the same number of pods that existed before shutdown.
This allows Infinispan to restore the distribution of data across the cluster.
After Infinispan Operator fully restarts the cluster you can safely add and remove pods.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Change the <code>spec.replicas</code> field to <code>0</code> to stop the Infinispan cluster.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">spec:
  replicas: 0</code></pre>
</div>
</div>
</li>
<li>
<p>Ensure you have the correct number of pods before you restart the cluster.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get infinispan infinispan -o=jsonpath='{.status.replicasWantedAtRestart}'</code></pre>
</div>
</div>
</li>
<li>
<p>Change the <code>spec.replicas</code> field to the same number of pods to restart the Infinispan cluster.</p>
<div class="listingblock">
<div class="content">
<pre>spec:
  replicas: 6</pre>
</div>
</div>
</li>
</ol>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="configuring-clusters"><a class="anchor" href="#configuring-clusters"></a>5. Configuring Infinispan clusters</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Apply custom Infinispan configuration to clusters that Infinispan Operator manages.</p>
</div>
<div class="sect2">
<h3 id="applying-custom-configuration_configuring-clusters"><a class="anchor" href="#applying-custom-configuration_configuring-clusters"></a>5.1. Applying custom configuration to Infinispan clusters</h3>
<div class="paragraph _abstract">
<p>Add Infinispan configuration to a <code>ConfigMap</code> and make it available to Infinispan Operator.
Infinispan Operator can then apply the custom configuration to your Infinispan cluster.</p>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Infinispan Operator applies default configuration on top of your custom configuration to ensure it can continue to manage your Infinispan clusters.</p>
</div>
<div class="paragraph">
<p>Be careful when applying custom configuration outside the <code>cache-container</code> element or field.
You can apply custom configuration to underlying Infinispan Server mechanisms such as endpoints, security realms, and cluster transport.
Changing this configuration can result in error and result in service downtime for your Infinispan deployment.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="admonitionblock tip">
<table>
<tr>
<td class="icon">
<i class="fa icon-tip" title="Tip"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Use the Infinispan Helm chart to deploy clusters of fully configurable Infinispan Server instances on OpenShift.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Have valid Infinispan configuration in XML, YAML, or JSON format.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Add Infinispan configuration to a <code>infinispan-config.[xml|yaml|json]</code> key in the <code>data</code> field of your <code>ConfigMap</code>.</p>
<div class="listingblock">
<div class="title">XML</div>
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: v1
kind: ConfigMap
metadata:
   name: cluster-config
   namespace: ispn-namespace
data:
   infinispan-config.xml: &gt;
     &lt;infinispan&gt;
       &lt;!-- Custom configuration goes here. --&gt;
     &lt;/infinispan&gt;</code></pre>
</div>
</div>
<div class="listingblock">
<div class="title">YAML</div>
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: v1
kind: ConfigMap
metadata:
   name: cluster-config
   namespace: ispn-namespace
data:
   infinispan-config.yaml: &gt;
     infinispan:
       # Custom configuration goes here.</code></pre>
</div>
</div>
<div class="listingblock">
<div class="title">JSON</div>
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: v1
kind: ConfigMap
metadata:
   name: cluster-config
   namespace: ispn-namespace
data:
   infinispan-config.json: &gt;
     {
       "infinispan": {
       }
     }</code></pre>
</div>
</div>
</li>
<li>
<p>Create the <code>ConfigMap</code> from your YAML file.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl apply -f cluster-config.yaml</code></pre>
</div>
</div>
</li>
<li>
<p>Specify the name of the <code>ConfigMap</code> with the <code>spec.configMapName</code> field in your <code>Infinispan</code> CR and then apply the changes.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  configMapName: "cluster-config"</code></pre>
</div>
</div>
</li>
</ol>
</div>
<div class="paragraph">
<div class="title">Next steps</div>
<p>If your cluster is already running Infinispan Operator restarts it to apply the configuration.
Each time you modify the Infinispan configuration in the <code>ConfigMap</code>, Infinispan Operator detects the updates and restarts the cluster to apply the changes.</p>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://infinispan.org/docs/helm-chart/main/helm-chart.html">Infinispan Helm chart</a></p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="infinispan-configuration_configuring-clusters"><a class="anchor" href="#infinispan-configuration_configuring-clusters"></a>5.2. Custom Infinispan configuration</h3>
<div class="paragraph">
<p>You can add Infinispan configuration to a <code>ConfigMap</code> in XML, YAML, or JSON format.</p>
</div>
<div class="sect3">
<h4 id="_cache_template"><a class="anchor" href="#_cache_template"></a>5.2.1. Cache template</h4>
<div class="listingblock">
<div class="title">XML</div>
<div class="content">
<pre class="highlight nowrap"><code class="language-xml" data-lang="xml">&lt;infinispan&gt;
  &lt;cache-container&gt;
    &lt;distributed-cache-configuration name="base-template"&gt;
      &lt;expiration lifespan="5000"/&gt;
    &lt;/distributed-cache-configuration&gt;
    &lt;distributed-cache-configuration name="extended-template"
                                     configuration="base-template"&gt;
      &lt;encoding media-type="application/x-protostream"/&gt;
      &lt;expiration lifespan="10000"
                  max-idle="1000"/&gt;
    &lt;/distributed-cache-configuration&gt;
  &lt;/cache-container&gt;
&lt;/infinispan&gt;</code></pre>
</div>
</div>
<div class="listingblock">
<div class="title">YAML</div>
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">infinispan:
  cacheContainer:
    caches:
      base-template:
        distributedCacheConfiguration:
          expiration:
            lifespan: "5000"
      extended-template:
        distributedCacheConfiguration:
          configuration: "base-template"
          encoding:
            mediaType: "application/x-protostream"
          expiration:
            lifespan: "10000"
            maxIdle: "1000"</code></pre>
</div>
</div>
<div class="listingblock">
<div class="title">JSON</div>
<div class="content">
<pre class="highlight nowrap"><code class="language-json" data-lang="json">{
  "infinispan" : {
    "cache-container" : {
      "caches" : {
        "base-template" : {
          "distributed-cache-configuration" : {
            "expiration" : {
              "lifespan" : "5000"
            }
          }
        },
        "extended-template" : {
          "distributed-cache-configuration" : {
            "configuration" : "base-template",
            "encoding": {
              "media-type": "application/x-protostream"
              },
            "expiration" : {
              "lifespan" : "10000",
              "max-idle" : "1000"
            }
          }
        }
      }
    }
  }
}</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_logging_configuration"><a class="anchor" href="#_logging_configuration"></a>5.2.2. Logging configuration</h4>
<div class="paragraph">
<p>You can also include Apache Log4j configuration in XML format as part of your <code>ConfigMap</code>.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Use the <code>spec.logging.categories</code> field in your <code>Infinispan</code> CR to adjust logging levels for Infinispan clusters.
Add Apache Log4j configuration only if you require advanced file-based logging capabilities.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: v1
kind: ConfigMap
metadata:
   name: logging-config
   namespace: ispn-namespace
data:
   infinispan-config.xml: &gt;
     &lt;infinispan&gt;
       &lt;!-- Add custom Infinispan configuration if required. --&gt;
       &lt;!-- You can provide either Infinispan configuration, logging configuration, or both. --&gt;
     &lt;/infinispan&gt;

   log4j.xml: &gt;
     &lt;?xml version="1.0" encoding="UTF-8"?&gt;
     &lt;Configuration name="ServerConfig" monitorInterval="60" shutdownHook="disable"&gt;
         &lt;Appenders&gt;
             &lt;!-- Colored output on the console --&gt;
             &lt;Console name="STDOUT"&gt;
                 &lt;PatternLayout pattern="%d{HH:mm:ss,SSS} %-5p (%t) [%c] %m%throwable%n"/&gt;
             &lt;/Console&gt;
         &lt;/Appenders&gt;

         &lt;Loggers&gt;
             &lt;Root level="INFO"&gt;
                 &lt;AppenderRef ref="STDOUT" level="TRACE"/&gt;
             &lt;/Root&gt;
             &lt;Logger name="org.infinispan" level="TRACE"/&gt;
         &lt;/Loggers&gt;
     &lt;/Configuration&gt;</code></pre>
</div>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="{config_docs}#cache-configuration_cache-configuration">Custom Infinispan configuration</a></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect2">
<h3 id="secure_credentials_configuring-clusters"><a class="anchor" href="#secure_credentials_configuring-clusters"></a>5.3. Securing custom Infinispan configuration</h3>
<div class="paragraph _abstract">
<p>Securely define and store custom Infinispan Server configuration.
To protect sensitive text strings such as passwords, add the entries in a credential store rather than directly in the Infinispan Server configuration.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Have a valid Infinispan configuration in XML, YAML, or JSON format.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create a <code>CredentialStore Secret</code> file.</p>
</li>
<li>
<p>Use the <code>data</code> field to specify the credentials and its aliases.</p>
<div class="listingblock">
<div class="title">user-secret.yaml</div>
<div class="content">
<pre class="highlight"><code class="language-yaml" data-lang="yaml">apiVersion: v1
kind: Secret
metadata:
  name: user-secret
type: Opaque
data:
  postgres_cred: sensitive-value
  mysql_cred: sensitive-value2</code></pre>
</div>
</div>
</li>
<li>
<p>Apply your Secret file.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl apply -f user-secret.yaml</code></pre>
</div>
</div>
</li>
<li>
<p>Open the <code>Infinispan</code> CR for editing.</p>
</li>
<li>
<p>In the <code>spec.security.credentialStoreSecretName</code> field, specify the name of the credential store secret.</p>
<div class="listingblock">
<div class="title">Infinispan CR</div>
<div class="content">
<pre class="highlight"><code class="language-yaml" data-lang="yaml">spec:
  security:
    credentialStoreSecretName: user-secret</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
<li>
<p>Open your Infinispan Server configuration for editing.</p>
</li>
<li>
<p>Add a <code>credential-reference</code> to your configuration.</p>
<div class="olist loweralpha">
<ol class="loweralpha" type="a">
<li>
<p>Specify the <code>credentials</code> as the name of the <code>store</code>.</p>
</li>
<li>
<p>Specify the <code>alias</code> attribute as one of the keys defined in your credential secret.</p>
<div class="listingblock">
<div class="title">Infinispan.xml</div>
<div class="content">
<pre>&lt;credential-store&gt;
    &lt;credential-reference store="credentials"  alias="postgres_cred"/&gt;
&lt;/credential-store&gt;</pre>
</div>
</div>
</li>
</ol>
</div>
</li>
</ol>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://infinispan.org/docs/stable/titles/server/server.html#credential-keystore-references_credential-keystores">Credential store references</a></p>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="upgrading-clusters"><a class="anchor" href="#upgrading-clusters"></a>6. Upgrading Infinispan clusters</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Infinispan Operator lets you upgrade Infinispan clusters from one version to another without downtime or data loss.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Infinispan Operator requires the Operator Lifecycle Manager to perform cluster upgrades.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="sect2">
<h3 id="cluster-upgrades_upgrading-clusters"><a class="anchor" href="#cluster-upgrades_upgrading-clusters"></a>6.1. Infinispan cluster upgrades</h3>
<div class="paragraph _abstract">
<p>The <code>spec.upgrades.type</code> field controls how Infinispan Operator upgrades your Infinispan cluster when new versions become available.
There are two types of cluster upgrade:</p>
</div>
<div class="dlist">
<dl>
<dt class="hdlist1"><code>Shutdown</code></dt>
<dd>
<p>Upgrades Infinispan clusters with service downtime. This is the default upgrade type.</p>
</dd>
<dt class="hdlist1"><code>HotRodRolling</code></dt>
<dd>
<p>Upgrades Infinispan clusters without service downtime.</p>
</dd>
</dl>
</div>
<h4 id="_shutdown_upgrades" class="discrete">Shutdown upgrades</h4>
<div class="paragraph">
<p>To perform a shutdown upgrade, Infinispan Operator does the following:</p>
</div>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>Gracefully shuts down the existing cluster.</p>
</li>
<li>
<p>Removes the existing cluster.</p>
</li>
<li>
<p>Creates a new cluster with the target version.</p>
</li>
</ol>
</div>
<h4 id="_hot_rod_rolling_upgrades" class="discrete">Hot Rod rolling upgrades</h4>
<div class="paragraph">
<p>To perform a Hot Rod rolling upgrade, Infinispan Operator does the following:</p>
</div>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>Creates a new Infinispan cluster with the target version that runs alongside your existing cluster.</p>
</li>
<li>
<p>Creates a remote cache store to transfer data from the existing cluster to the new cluster.</p>
</li>
<li>
<p>Redirects all clients to the new cluster.</p>
</li>
<li>
<p>Removes the existing cluster when all data and client connections are transferred to the new cluster.</p>
</li>
</ol>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>You should not perform Hot Rod rolling upgrades with caches that enable passivation with persistent cache stores.
In the event that the upgrade does not complete successfully, passivation can result in data loss when Infinispan Operator rolls back the target cluster.</p>
</div>
<div class="paragraph">
<p>If your cache configuration enables passivation you should perform a shutdown upgrade.</p>
</div>
</td>
</tr>
</table>
</div>
</div>
<div class="sect2">
<h3 id="upgrading-clusters-downtime_upgrading-clusters"><a class="anchor" href="#upgrading-clusters-downtime_upgrading-clusters"></a>6.2. Upgrading Infinispan clusters with downtime</h3>
<div class="paragraph _abstract">
<p>Upgrading Infinispan clusters with downtime results in service disruption but does not require any additional capacity.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>The Infinispan Operator version you have installed supports the Infinispan target version.</p>
</li>
<li>
<p>If required, configure a persistent cache store to preserve your data during the upgrade.</p>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>At the start of the upgrade process Infinispan Operator shuts down your existing cluster.
This results in data loss if you do not configure a persistent cache store.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Specify the Infinispan version number in the <code>spec.version</code> field.</p>
</li>
<li>
<p>Ensure that <code>Shutdown</code> is set as the value for the <code>spec.upgrades.type</code> field, which is the default.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  version: 14.0.21
  upgrades:
    type: Shutdown</code></pre>
</div>
</div>
</li>
<li>
<p>Apply your changes, if necessary.</p>
</li>
</ol>
</div>
<div class="paragraph">
<p>When new Infinispan version becomes available, you must manually change the value in the <code>spec.version</code> field to trigger the upgrade.</p>
</div>
</div>
<div class="sect2">
<h3 id="upgrading-clusters-rolling_upgrading-clusters"><a class="anchor" href="#upgrading-clusters-rolling_upgrading-clusters"></a>6.3. Performing Hot Rod rolling upgrades for Infinispan clusters</h3>
<div class="paragraph _abstract">
<p>Performing Hot Rod rolling upgrades lets you move to a new Infinispan version without service disruption.
However, this upgrade type requires additional capacity and temporarily results in two Infinispan clusters with different versions running concurrently.</p>
</div>
<div class="ulist">
<div class="title">Prerequisite</div>
<ul>
<li>
<p>The Infinispan Operator version you have installed supports the Infinispan target version.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Specify the Infinispan version number in the <code>spec.version</code> field.</p>
</li>
<li>
<p>Specify <code>HotRodRolling</code> as the value for the <code>spec.upgrades.type</code> field.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  version: 14.0.21
  upgrades:
    type: HotRodRolling</code></pre>
</div>
</div>
</li>
<li>
<p>Apply your changes.</p>
</li>
</ol>
</div>
<div class="paragraph">
<p>When new Infinispan version becomes available, you must manually change the value in the <code>spec.version</code> field to trigger the upgrade.</p>
</div>
<div class="sect3">
<h4 id="recovering_rolling_upgrades_upgrading-clusters"><a class="anchor" href="#recovering_rolling_upgrades_upgrading-clusters"></a>6.3.1. Recovering from a failed Hot Rod rolling upgrade</h4>
<div class="paragraph _abstract">
<p>You can roll back a failed Hot Rod rolling upgrade to the previous version if the original cluster is still present.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Hot Rod rolling upgrade is in progress and the initial Infinispan cluster is present.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Ensure the Hot Rod rolling upgrade is in progress.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get infinispan &lt;cr_name&gt; -o yaml</code></pre>
</div>
</div>
<div class="paragraph">
<p>The <code>status.hotRodRollingUpgradeStatus</code> field must be present.</p>
</div>
</li>
<li>
<p>Update <code>spec.version</code> field of your <code>Infinispan CR</code> to the original cluster version defined in the <code>status.hotRodRollingUpgradeStatus</code>.</p>
<div class="paragraph">
<p>Infinispan Operator deletes the newly created cluster.</p>
</div>
</li>
</ol>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="creating-services"><a class="anchor" href="#creating-services"></a>7. Setting up Infinispan services</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Use Infinispan Operator to create clusters of either Cache Service or Data Grid Service pods.</p>
</div>
<div class="sect2">
<h3 id="services_services"><a class="anchor" href="#services_services"></a>7.1. Service types</h3>
<div class="paragraph _abstract">
<p>Services are stateful applications, based on the Infinispan Server image, that provide flexible and robust in-memory data storage.
When you create Infinispan clusters you specify either <code>DataGrid</code> or <code>Cache</code> as the service type with the <code>spec.service.type</code> field.</p>
</div>
<div class="dlist">
<dl>
<dt class="hdlist1"><code>DataGrid</code> service type</dt>
<dd>
<p>Deploy Infinispan clusters with full configuration and capabilities.</p>
</dd>
<dt class="hdlist1"><code>Cache</code> service type</dt>
<dd>
<p>Deploy Infinispan clusters with minimal configuration.</p>
</dd>
</dl>
</div>
<div class="paragraph">
<p>The Infinispan team recommends the <code>DataGrid</code> service type for clusters because it lets you:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Back up data across global clusters with cross-site replication.</p>
</li>
<li>
<p>Create caches with any valid configuration.</p>
</li>
<li>
<p>Add file-based cache stores to save data in a persistent volume.</p>
</li>
<li>
<p>Query values across caches using the Infinispan Query API.</p>
</li>
<li>
<p>Use advanced Infinispan features and capabilities.</p>
</li>
</ul>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>The <code>Cache</code> service type was designed to provide a convenient way to create a low-latency data store with minimal configuration.
Additional development on the <code>Infinispan</code> CRD has shown that the <code>DataGrid</code> CR offers a better approach to achieving this goal, ultimately giving users more choice and less deployment overhead.
For this reason, the <code>Cache</code> service type is planned for removal in the next version of the <code>Infinispan</code> CRD and is no longer under active development.</p>
</div>
<div class="paragraph">
<p>The <code>DataGrid</code> service type continues to benefit from new features and improved tooling to automate complex operations such as cluster upgrades and data migration.</p>
</div>
</td>
</tr>
</table>
</div>
</div>
<div class="sect2">
<h3 id="creating-datagrid-service_services"><a class="anchor" href="#creating-datagrid-service_services"></a>7.2. Creating Data Grid Service pods</h3>
<div class="paragraph _abstract">
<p>To use custom cache definitions along with Infinispan capabilities such as cross-site replication, create clusters of Data Grid Service pods.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create an <code>Infinispan</code> CR that sets <code>spec.service.type: DataGrid</code> and configures any other Data Grid Service resources.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
spec:
  replicas: 2
  version: &lt;Infinispan_version&gt;
  service:
    type: DataGrid</code></pre>
</div>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>You cannot change the <code>spec.service.type</code> field after you create pods.
To change the service type, you must delete the existing pods and create new ones.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Apply your <code>Infinispan</code> CR to create the cluster.</p>
</li>
</ol>
</div>
<div class="sect3">
<h4 id="datagrid-cr_services"><a class="anchor" href="#datagrid-cr_services"></a>7.2.1. Data Grid Service CR</h4>
<div class="paragraph _abstract">
<p>This topic describes the <code>Infinispan</code> CR for Data Grid Service pods.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
  annotations:
    infinispan.org/monitoring: 'true'
spec:
  replicas: 6
  version: 14.0.21
  upgrades:
    type: Shutdown
  service:
    type: DataGrid
    container:
      storage: 2Gi
      # The ephemeralStorage and storageClassName fields are mutually exclusive.
      ephemeralStorage: false
      storageClassName: my-storage-class
    sites:
      local:
      name: azure
      expose:
        type: LoadBalancer
      locations:
      - name: azure
        url: openshift://api.azure.host:6443
        secretName: azure-token
      - name: aws
        clusterName: infinispan
        namespace: ispn-namespace
        url: openshift://api.aws.host:6443
        secretName: aws-token
  security:
    endpointSecretName: endpoint-identities
    endpointEncryption:
        type: Secret
        certSecretName: tls-secret
  container:
    extraJvmOpts: "-XX:NativeMemoryTracking=summary"
    cpu: "2000m:1000m"
    memory: "2Gi:1Gi"
  logging:
    categories:
      org.infinispan: debug
      org.jgroups: debug
      org.jgroups.protocols.TCP: error
      org.jgroups.protocols.relay.RELAY2: error
  expose:
    type: LoadBalancer
  configMapName: "my-cluster-config"
  configListener:
    enabled: true
  affinity:
    podAntiAffinity:
      preferredDuringSchedulingIgnoredDuringExecution:
      - weight: 100
        podAffinityTerm:
          labelSelector:
            matchLabels:
              app: infinispan-pod
              clusterName: infinispan
              infinispan_cr: infinispan
          topologyKey: "kubernetes.io/hostname"</code></pre>
</div>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>metadata.name</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Names your Infinispan cluster.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>metadata.annotations.infinispan.org/monitoring</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Automatically creates a <code>ServiceMonitor</code> for your cluster.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.replicas</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the number of pods in your cluster.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.version</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the Infinispan Server version of your cluster.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.upgrades.type</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Controls how Infinispan Operator upgrades your Infinispan cluster when new versions become available.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.service.type</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Configures the type Infinispan service. A value of <code>DataGrid</code> creates a cluster with Data Grid Service pods.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.service.container</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Configures the storage resources for Data Grid Service pods.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.service.sites</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Configures cross-site replication.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.security.endpointSecretName</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies an authentication secret that contains Infinispan user credentials.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.security.endpointEncryption</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies TLS certificates and keystores to encrypt client connections.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.container</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies JVM, CPU, and memory resources for Infinispan pods.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.logging</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Configures Infinispan logging categories.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.expose</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Controls how Infinispan endpoints are exposed on the network.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.configMapName</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies a <code>ConfigMap</code> that contains Infinispan configuration.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.configListener.enabled</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Creates a <code>listener</code> pod in each Infinispan cluster that allows Infinispan Operator to reconcile server-side modifications with Infinispan resources such as the <code>Cache</code> CR.</p>
<p class="tableblock">The <code>listener</code> pod consumes minimal resources and is enabled by default.
Setting a value of <code>false</code> removes the <code>listener</code> pod and disables bi-directional reconciliation.
You should do this only if you do not need declarative Kubernetes representations of Infinispan resources created through the Infinispan Console, CLI, or client applications.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.configListener.logging.level</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Configures the logging level for the <code>ConfigListener</code> deployments. The default level is <code>info</code>. You can change it to <code>debug</code> or  <code>error</code>.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.affinity</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Configures anti-affinity strategies that guarantee Infinispan availability.</p></td>
</tr>
</tbody>
</table>
</div>
</div>
<div class="sect2">
<h3 id="allocating-storage_services"><a class="anchor" href="#allocating-storage_services"></a>7.3. Allocating storage resources</h3>
<div class="paragraph _abstract">
<p>You can allocate storage for Data Grid Service pods but not Cache Service pods.</p>
</div>
<div class="paragraph">
<p>By default, Infinispan Operator allocates <code>1Gi</code> for the persistent volume claim.
However you should adjust the amount of storage available to Data Grid Service pods so that Infinispan can preserve cluster state during shutdown.</p>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>If available container storage is less than the amount of available memory, data loss can occur.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Allocate storage resources with the <code>spec.service.container.storage</code> field.</p>
</li>
<li>
<p>Configure either the <code>ephemeralStorage</code> field or the <code>storageClassName</code> field as required.</p>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>These fields are mutually exclusive.
Add only one of them to your <code>Infinispan</code> CR.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
</ol>
</div>
<div class="listingblock">
<div class="title">Ephemeral storage</div>
<div class="content">
<pre class="highlight nowrap"><code>spec:
  service:
    type: DataGrid
    container:
      storage: 2Gi
      ephemeralStorage: true</code></pre>
</div>
</div>
<div class="listingblock">
<div class="title">Name of a <code>StorageClass</code> object</div>
<div class="content">
<pre class="highlight nowrap"><code>spec:
  service:
    type: DataGrid
    container:
      storage: 2Gi
      storageClassName: my-storage-class</code></pre>
</div>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.service.container.storage</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the amount of storage for Data Grid Service pods.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.service.container.ephemeralStorage</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Defines whether storage is ephemeral or permanent. Set the value to <code>true</code> to use ephemeral storage, which means all data in storage is deleted when clusters shut down or restart. The default value is <code>false</code>, which means storage is permanent.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.service.container.storageClassName</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the name of a <code>StorageClass</code> object to use for the persistent volume claim (PVC). If you include this field, you must specify an existing storage class as the value. If you do not include this field, the persistent volume claim uses the storage class that has the <code>storageclass.kubernetes.io/is-default-class</code> annotation set to <code>true</code>.</p></td>
</tr>
</tbody>
</table>
<div class="sect3">
<h4 id="persistent-volume-claims_services"><a class="anchor" href="#persistent-volume-claims_services"></a>7.3.1. Persistent volume claims</h4>
<div class="paragraph _abstract">
<p>Infinispan Operator creates a persistent volume claim (PVC) and mounts container storage at:<br>
<code>/opt/infinispan/server/data</code></p>
</div>
<div class="paragraph">
<div class="title">Caches</div>
<p>When you create caches, Infinispan permanently stores their configuration so your caches are available after cluster restarts.
This applies to both Cache Service and Data Grid Service pods.</p>
</div>
<div class="paragraph">
<div class="title">Data</div>
<p>Data is always volatile in clusters of Cache Service pods.
When you shutdown the cluster, you permanently lose the data.</p>
</div>
<div class="paragraph">
<p>Use a file-based cache store, by adding the <code>&lt;file-store/&gt;</code> element to your Infinispan cache configuration, if you want Data Grid Service pods to persist data during cluster shutdown.</p>
</div>
</div>
</div>
<div class="sect2">
<h3 id="allocating-cpu-and-memory_services"><a class="anchor" href="#allocating-cpu-and-memory_services"></a>7.4. Allocating CPU and memory</h3>
<div class="paragraph _abstract">
<p>Allocate CPU and memory resources to Infinispan pods with the <code>Infinispan</code> CR.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Infinispan Operator requests <strong>1Gi</strong> of memory from the Kubernetes scheduler when creating Infinispan pods.
CPU requests are unbounded by default.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Allocate the number of CPU units with the <code>spec.container.cpu</code> field.</p>
</li>
<li>
<p>Allocate the amount of memory, in bytes, with the <code>spec.container.memory</code> field.</p>
<div class="paragraph">
<p>The <code>cpu</code> and <code>memory</code> fields have values in the format of <code>&lt;limit&gt;:&lt;requests&gt;</code>.
For example, <code>cpu: "2000m:1000m"</code> limits pods to a maximum of <code>2000m</code> of CPU and requests <code>1000m</code> of CPU for each pod at startup.
Specifying a single value sets both the limit and request.</p>
</div>
</li>
<li>
<p>Apply your <code>Infinispan</code> CR.</p>
<div class="paragraph">
<p>If your cluster is running, Infinispan Operator restarts the Infinispan pods so changes take effect.</p>
</div>
</li>
</ol>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  container:
    cpu: "2000m:1000m"
    memory: "2Gi:1Gi"</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="setting-jvm-options_services"><a class="anchor" href="#setting-jvm-options_services"></a>7.5. Setting JVM options</h3>
<div class="paragraph _abstract">
<p>Pass additional JVM options to Infinispan pods at startup.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Configure JVM options with the <code>spec.container</code> filed in your <code>Infinispan</code> CR.</p>
</li>
<li>
<p>Apply your <code>Infinispan</code> CR.</p>
<div class="paragraph">
<p>If your cluster is running, Infinispan Operator restarts the Infinispan pods so changes take effect.</p>
</div>
</li>
</ol>
</div>
<div class="listingblock">
<div class="title">JVM options</div>
<div class="content">
<pre class="highlight nowrap"><code>spec:
  container:
    extraJvmOpts: "-&lt;option&gt;=&lt;value&gt;"
    routerExtraJvmOpts: "-&lt;option&gt;=&lt;value&gt;"
    cliExtraJvmOpts: "-&lt;option&gt;=&lt;value&gt;"</code></pre>
</div>
</div>
<table class="tableblock frame-all grid-all stripes-even fit-content">
<colgroup>
<col>
<col>
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.container.extraJvmOpts</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies additional JVM options for the Infinispan Server.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.container.routerExtraJvmOpts</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies additional JVM options for the Gossip router.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.container.cliExtraJvmOpts</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies additional JVM options for the Infinispan CLI.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="configuring-pod-priority_services"><a class="anchor" href="#configuring-pod-priority_services"></a>7.6. Configuring pod priority</h3>
<div class="paragraph _abstract">
<p>Create one or more priority classes to indicate the importance of a pod relative to other pods.
Pods with higher priority are scheduled ahead of pods with lower priority, ensuring prioritization of pods running critical workloads, especially when resources become constrained.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Have <code>cluster-admin</code> access to Kubernetes.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Define a <code>PriorityClass</code> object by specifying its name and value.</p>
<div class="listingblock">
<div class="title">high-priority.yaml</div>
<div class="content">
<pre class="highlight"><code class="language-yaml" data-lang="yaml">apiVersion: scheduling.k8s.io/v1
kind: PriorityClass
metadata:
  name: high-priority
value: 1000000
globalDefault: false
description: "Use this priority class for high priority service pods only."</code></pre>
</div>
</div>
</li>
<li>
<p>Create the priority class.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl create -f high-priority.yaml</code></pre>
</div>
</div>
</li>
<li>
<p>Reference the priority class name in the pod configuration.</p>
<div class="listingblock">
<div class="title">Infinispan CR</div>
<div class="content">
<pre class="highlight"><code class="language-yaml" data-lang="yaml">kind: Infinispan
...
spec:
  scheduling:
    affinity:
      ...
    priorityClassName: "high-priority"
    ...</code></pre>
</div>
</div>
<div class="paragraph">
<p>You must reference an existing priority class name, otherwise the pod is rejected.</p>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
</ol>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://kubernetes.io/docs/concepts/scheduling-eviction/pod-priority-preemption/">Kubernetes: Pod Priority and Preemption</a></p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="configuring-logging_services"><a class="anchor" href="#configuring-logging_services"></a>7.7. Adjusting log levels</h3>
<div class="paragraph _abstract">
<p>Change levels for different Infinispan logging categories when you need to debug issues.
You can also adjust log levels to reduce the number of messages for certain categories to minimize the use of container resources.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Configure Infinispan logging with the <code>spec.logging.categories</code> field in your <code>Infinispan</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  logging:
    categories:
      org.infinispan: debug
      org.jgroups: debug</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
<li>
<p>Retrieve logs from Infinispan pods as required.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl logs -f $POD_NAME</code></pre>
</div>
</div>
</li>
</ol>
</div>
<div class="sect3">
<h4 id="logging-levels_services"><a class="anchor" href="#logging-levels_services"></a>7.7.1. Logging reference</h4>
<div class="paragraph _abstract">
<p>Find information about log categories and levels.</p>
</div>
<table class="tableblock frame-all grid-all stretch">
<caption class="title">Table 1. Log categories</caption>
<colgroup>
<col style="width: 33.3333%;">
<col style="width: 33.3333%;">
<col style="width: 33.3334%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Root category</th>
<th class="tableblock halign-left valign-top">Description</th>
<th class="tableblock halign-left valign-top">Default level</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>org.infinispan</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Infinispan messages</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>info</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>org.jgroups</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Cluster transport messages</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>info</code></p></td>
</tr>
</tbody>
</table>
<table class="tableblock frame-all grid-all stretch">
<caption class="title">Table 2. Log levels</caption>
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Log level</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>trace</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Provides detailed information about running state of applications. This is the most verbose log level.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>debug</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Indicates the progress of individual requests or activities.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>info</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Indicates overall progress of applications, including lifecycle events.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>warn</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Indicates circumstances that can lead to error or degrade performance.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>error</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Indicates error conditions that might prevent operations or activities from being successful but do not prevent applications from running.</p></td>
</tr>
</tbody>
</table>
<div class="paragraph">
<div class="title">Garbage collection (GC) messages</div>
<p>Infinispan Operator does not log GC messages by default.
You can direct GC messages to <code>stdout</code> with the following JVM options:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">extraJvmOpts: "-Xlog:gc*:stdout:time,level,tags"</code></pre>
</div>
</div>
</div>
</div>
<div class="sect2">
<h3 id="specifying-server-image_services"><a class="anchor" href="#specifying-server-image_services"></a>7.8. Specifying Infinispan Server images</h3>
<div class="paragraph _abstract">
<p>Specify which Infinispan Server image Infinispan Operator should use to create pods with the <code>spec.image</code> field.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">spec:
  image: quay.io/infinispan/server:latest</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="creating-cache-service_services"><a class="anchor" href="#creating-cache-service_services"></a>7.9. Creating Cache Service pods</h3>
<div class="paragraph _abstract">
<p>Create Infinispan clusters with Cache Service pods for a volatile, low-latency data store with minimal configuration.</p>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Cache Service pods provide volatile storage only, which means you lose all data when you modify your <code>Infinispan</code> CR or update the version of your Infinispan cluster.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create an <code>Infinispan</code> CR that sets <code>spec.service.type: Cache</code> and configures any other Cache Service resources.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
spec:
  replicas: 2
  version: &lt;Infinispan_version&gt;
  service:
    type: Cache</code></pre>
</div>
</div>
</li>
<li>
<p>Apply your <code>Infinispan</code> CR to create the cluster.</p>
</li>
</ol>
</div>
<div class="sect3">
<h4 id="cache-service-resources_services"><a class="anchor" href="#cache-service-resources_services"></a>7.9.1. Cache Service CR</h4>
<div class="paragraph _abstract">
<p>This topic describes the <code>Infinispan</code> CR for Cache Service pods.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
  annotations:
    infinispan.org/monitoring: 'true'
spec:
  replicas: 2
  version: 14.0.21
  upgrades:
    type: Shutdown
  service:
    type: Cache
    replicationFactor: 2
  autoscale:
    maxMemUsagePercent: 70
    maxReplicas: 5
    minMemUsagePercent: 30
    minReplicas: 2
  security:
    endpointSecretName: endpoint-identities
    endpointEncryption:
        type: Secret
        certSecretName: tls-secret
  container:
    extraJvmOpts: "-XX:NativeMemoryTracking=summary"
    cpu: "2000m:1000m"
    memory: "2Gi:1Gi"
  logging:
    categories:
      org.infinispan: trace
      org.jgroups: trace
  expose:
    type: LoadBalancer
  affinity:
    podAntiAffinity:
      preferredDuringSchedulingIgnoredDuringExecution:
      - weight: 100
        podAffinityTerm:
          labelSelector:
            matchLabels:
              app: infinispan-pod
              clusterName: infinispan
              infinispan_cr: infinispan
          topologyKey: "kubernetes.io/hostname"</code></pre>
</div>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>metadata.name</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Names your Infinispan cluster.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>metadata.annotations.infinispan.org/monitoring</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Automatically creates a <code>ServiceMonitor</code> for your cluster.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.replicas</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the number of pods in your cluster. If you enable autoscaling capabilities, this field specifies the initial number of pods.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.version</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the Infinispan Server version of your cluster.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.upgrades.type</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Controls how Infinispan Operator upgrades your Infinispan cluster when new versions become available.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.service.type</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Configures the type Infinispan service. A value of <code>Cache</code> creates a cluster with Cache Service pods.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.service.replicationFactor</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Sets the number of copies for each entry across the cluster. The default for Cache Service pods is two, which replicates each cache entry to avoid data loss.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.autoscale</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Enables and configures automatic scaling.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.security.endpointSecretName</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies an authentication secret that contains Infinispan user credentials.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.security.endpointEncryption</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies TLS certificates and keystores to encrypt client connections.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.container</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies JVM, CPU, and memory resources for Infinispan pods.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.logging</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Configures Infinispan logging categories.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.expose</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Controls how Infinispan endpoints are exposed on the network.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.affinity</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Configures anti-affinity strategies that guarantee Infinispan availability.</p></td>
</tr>
</tbody>
</table>
</div>
</div>
<div class="sect2">
<h3 id="automatic-scaling_services"><a class="anchor" href="#automatic-scaling_services"></a>7.10. Automatic scaling</h3>
<div class="paragraph _abstract">
<p>Infinispan Operator can monitor the default cache on Cache Service pods to automatically scale clusters up or down, by creating or deleting pods based on memory usage.</p>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Automatic scaling is available for clusters of Cache Service pods only.
Infinispan Operator does not perform automatic scaling for clusters of Data Grid Service pods.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>When you enable automatic scaling, you define memory usage thresholds that let Infinispan Operator determine when it needs to create or delete pods.
Infinispan Operator monitors statistics for the default cache and, when memory usage reaches the configured thresholds, scales your clusters up or down.</p>
</div>
<div class="paragraph">
<div class="title">Maximum threshold</div>
<p>This threshold sets an upper boundary for the amount of memory that pods in your cluster can use before scaling up or performing eviction.
When Infinispan Operator detects that any node reaches the maximum amount of memory that you configure, it creates a new node if possible.
If Infinispan Operator cannot create a new node then it performs eviction when memory usage reaches 100 percent.</p>
</div>
<div class="paragraph">
<div class="title">Minimum threshold</div>
<p>This threshold sets a lower boundary for memory usage across your Infinispan cluster.
When Infinispan Operator detects that memory usage falls below the minimum, it shuts down pods.</p>
</div>
<div class="paragraph">
<div class="title">Default cache only</div>
<p>Autoscaling capabilities work with the default cache only.
If you plan to add other caches to your cluster, you should not include the <code>autoscale</code> field in your <code>Infinispan</code> CR.
In this case you should use eviction to control the size of the data container on each node.</p>
</div>
<div class="sect3">
<h4 id="configuring-autoscaling_services"><a class="anchor" href="#configuring-autoscaling_services"></a>7.10.1. Configuring automatic scaling</h4>
<div class="paragraph _abstract">
<p>If you create clusters with Cache Service pods, you can configure Infinispan Operator to automatically scale clusters.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Add the <code>spec.autoscale</code> resource to your <code>Infinispan</code> CR to enable automatic scaling.</p>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Set a value of <code>true</code> for the <code>autoscale.disabled</code> field to disable automatic scaling.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Configure thresholds for automatic scaling with the following fields:</p>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.autoscale.maxMemUsagePercent</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies a maximum threshold, as a percentage, for memory usage on each node.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.autoscale.maxReplicas</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the maximum number of Cache Service pods for the cluster.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.autoscale.minMemUsagePercent</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies a minimum threshold, as a percentage, for cluster memory usage.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.autoscale.minReplicas</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the minimum number of Cache Service pods for the cluster.</p></td>
</tr>
</tbody>
</table>
<div class="paragraph">
<p>For example, add the following to your <code>Infinispan</code> CR:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  service:
    type: Cache
  autoscale:
    disabled: false
    maxMemUsagePercent: 70
    maxReplicas: 5
    minMemUsagePercent: 30
    minReplicas: 2</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
</ol>
</div>
</div>
</div>
<div class="sect2">
<h3 id="adding-custom-labels_services"><a class="anchor" href="#adding-custom-labels_services"></a>7.11. Adding labels and annotations to Infinispan resources</h3>
<div class="paragraph _abstract">
<p>Attach key/value labels and annotations to pods and services that Infinispan Operator creates and manages.
Labels help you identify relationships between objects to better organize and monitor Infinispan resources.
Annotations are arbitrary non-identifying metadata for client applications or deployment and management tooling.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Open your <code>Infinispan</code> CR for editing.</p>
</li>
<li>
<p>Attach labels and annotations to Infinispan resources in the <code>metadata.annotations</code> section.</p>
<div class="ulist">
<ul>
<li>
<p>Define values for annotations directly in the <code>metadata.annotations</code> section.</p>
</li>
<li>
<p>Define values for labels with the <code>metadata.labels</code> field.</p>
</li>
</ul>
</div>
</li>
<li>
<p>Apply your <code>Infinispan</code> CR.</p>
</li>
</ol>
</div>
<div class="listingblock">
<div class="title">Custom annotations</div>
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  annotations:
    infinispan.org/targetAnnotations: service-annotation1, service-annotation2
    infinispan.org/podTargetAnnotations: pod-annotation1, pod-annotation2
    infinispan.org/routerAnnotations: router-annotation1, router-annotation2

    service-annotation1: value
    service-annotation2: value
    pod-annotation1: value
    pod-annotation2: value
    router-annotation1: value
    router-annotation2: value</code></pre>
</div>
</div>
<div class="listingblock">
<div class="title">Custom labels</div>
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  annotations:
    infinispan.org/targetLabels: service-label1, service-label2
    infinispan.org/podTargetLabels: pod-label1, pod-label2
  labels:
    service-label1: value
    service-label2: value
    pod-label1: value
    pod-label2: value
    # The operator does not attach these labels to resources.
    my-label: my-value
    environment: development</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="adding-labels-annotations-env_services"><a class="anchor" href="#adding-labels-annotations-env_services"></a>7.12. Adding labels and annotations with environment variables</h3>
<div class="paragraph _abstract">
<p>Set environment variables for Infinispan Operator to add labels and annotations that automatically propagate to all Infinispan pods and services.</p>
</div>
<div class="paragraph">
<div class="title">Procedure</div>
<p>Add labels and annotations to your Infinispan Operator subscription with the <code>spec.config.env</code> field in one of the following ways:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Use the <code>kubectl edit subscription</code> command.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl edit subscription infinispan -n operators</code></pre>
</div>
</div>
</li>
<li>
<p>Use the Red Hat OpenShift Console.</p>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>Navigate to <strong>Operators</strong> &gt; <strong>Installed Operators</strong> &gt;  <strong>Infinispan Operator</strong>.</p>
</li>
<li>
<p>From the <strong>Actions</strong> menu, select <strong>Edit Subscription</strong>.</p>
</li>
</ol>
</div>
</li>
</ul>
</div>
<div class="listingblock">
<div class="title">Labels and annotations with environment variables</div>
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">spec:
  config:
    env:
      - name: INFINISPAN_OPERATOR_TARGET_LABELS
        value: |
         {"service-label1":"value",
         service-label1":"value"}
      - name: INFINISPAN_OPERATOR_POD_TARGET_LABELS
        value: |
         {"pod-label1":"value",
         "pod-label2":"value"}
      - name: INFINISPAN_OPERATOR_TARGET_ANNOTATIONS
        value: |
         {"service-annotation1":"value",
         "service-annotation2":"value"}
      - name: INFINISPAN_OPERATOR_POD_TARGET_ANNOTATIONS
        value: |
         {"pod-annotation1":"value",
         "pod-annotation2":"value"}</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="defining-environment-variables_services"><a class="anchor" href="#defining-environment-variables_services"></a>7.13. Defining environment variables in the Infinispan Operator subscription</h3>
<div class="paragraph _abstract">
<p>You can define environment variables in your Infinispan Operator subscription either when you create or edit the subscription.</p>
</div>
<div class="dlist">
<dl>
<dt class="hdlist1"><code>spec.config.env</code> field</dt>
<dd>
<p>Includes the <code>name</code> and <code>value</code> fields to define environment variables.</p>
</dd>
<dt class="hdlist1"><code>ADDITIONAL_VARS</code> variable</dt>
<dd>
<p>Includes the names of environment variables in a format of JSON array.
Environment variables within the <code>value</code> of the <code>ADDITIONAL_VARS</code> variable automatically propagate to each Infinispan Server pod managed by the associated Operator.</p>
</dd>
</dl>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Ensure the Operator Lifecycle Manager (OLM) is installed.</p>
</li>
<li>
<p>Have an <code>oc</code> or a <code>kubectl</code> client.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create a subscription definition YAML for your Infinispan Operator:</p>
<div class="olist loweralpha">
<ol class="loweralpha" type="a">
<li>
<p>Use the <code>spec.config.env</code> field to define environment variables.</p>
</li>
<li>
<p>Within the <code>ADDITIONAL_VARS</code> variable, include environment variable names in a JSON array.</p>
<div class="listingblock">
<div class="title">subscription-infinispan.yaml</div>
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: operators.coreos.com/v1alpha1
kind: Subscription
metadata:
  name: infinispan
  namespace: operators
spec:
  channel: 2.3.x
  installPlanApproval: Automatic
  name: infinispan
  source: operatorhubio-catalog
  sourceNamespace: olm
  config:
    env:
    - name: ADDITIONAL_VARS
      value: "[\"VAR_NAME\", \"ANOTHER_VAR\"]"
    - name: VAR_NAME
      value: $(VAR_NAME_VALUE)
    - name: ANOTHER_VAR
      value: $(ANOTHER_VAR_VALUE)</code></pre>
</div>
</div>
<div class="paragraph">
<p>For example, use the environment variables to set the local time zone:</p>
</div>
<div class="listingblock">
<div class="title">subscription-infinispan.yaml</div>
<div class="content">
<pre class="highlight nowrap"><code>kind: Subscription
spec:
  ...
  config:
    env:
    - name: ADDITIONAL_VARS
      value: "[\"TZ\"]"
    - name: TZ
      value: "Asia/Tokyo"</code></pre>
</div>
</div>
</li>
</ol>
</div>
</li>
<li>
<p>Create a subscription for Infinispan Operator:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl apply -f subscription-infinispan.yaml</code></pre>
</div>
</div>
</li>
</ol>
</div>
<div class="ulist">
<div class="title">Verification</div>
<ul>
<li>
<p>Retrieve the environment variables from the <code>subscription-infinispan.yaml</code>:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get subscription infinispan -n operators -o jsonpath='{.spec.config.env[*].name}'</code></pre>
</div>
</div>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Next steps</div>
<ol class="arabic">
<li>
<p>Use the <code>kubectl edit subscription</code> command to modify the environment variable:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl edit subscription infinispan -n operators</code></pre>
</div>
</div>
</li>
<li>
<p>To ensure the changes take effect on your Infinispan clusters, you must recreate the existing clusters.
Terminate the pods by deleting the <code>StatefulSet</code> associated with the existing <code>Infinispan</code> CRs.</p>
</li>
</ol>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="configuring-authentication"><a class="anchor" href="#configuring-authentication"></a>8. Configuring authentication</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Application users need credentials to access Infinispan clusters.
You can use default, generated credentials or add your own.</p>
</div>
<div class="sect2">
<h3 id="default-credentials_authn"><a class="anchor" href="#default-credentials_authn"></a>8.1. Default credentials</h3>
<div class="paragraph _abstract">
<p>Infinispan Operator generates base64-encoded credentials for the following users:</p>
</div>
<table class="tableblock frame-all grid-all stripes-even fit-content">
<colgroup>
<col>
<col>
<col>
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">User</th>
<th class="tableblock halign-left valign-top">Secret name</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>developer</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>infinispan-generated-secret</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Credentials for the default application user.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>operator</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>infinispan-generated-operator-secret</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Credentials that Infinispan Operator uses to interact with Infinispan resources.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="retrieving-credentials_authn"><a class="anchor" href="#retrieving-credentials_authn"></a>8.2. Retrieving credentials</h3>
<div class="paragraph _abstract">
<p>Get credentials from authentication secrets to access Infinispan clusters.</p>
</div>
<div class="ulist">
<div class="title">Procedure</div>
<ul>
<li>
<p>Retrieve credentials from authentication secrets.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get secret infinispan-generated-secret</code></pre>
</div>
</div>
<div class="paragraph">
<p>Base64-decode credentials.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get secret infinispan-generated-secret -o jsonpath="{.data.identities\.yaml}" | base64 --decode</code></pre>
</div>
</div>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="adding-credentials_authn"><a class="anchor" href="#adding-credentials_authn"></a>8.3. Adding custom user credentials</h3>
<div class="paragraph _abstract">
<p>Configure access to Infinispan cluster endpoints with custom credentials.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Modifying <code>spec.security.endpointSecretName</code> triggers a cluster restart.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create an <code>identities.yaml</code> file with the credentials that you want to add.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">credentials:
- username: myfirstusername
  password: changeme-one
- username: mysecondusername
  password: changeme-two</code></pre>
</div>
</div>
</li>
<li>
<p>Create an authentication secret from <code>identities.yaml</code>.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl create secret generic --from-file=identities.yaml connect-secret</code></pre>
</div>
</div>
</li>
<li>
<p>Specify the authentication secret with <code>spec.security.endpointSecretName</code> in your <code>Infinispan</code> CR and then apply the changes.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  security:
    endpointSecretName: connect-secret</code></pre>
</div>
</div>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="changing-operator-password_authn"><a class="anchor" href="#changing-operator-password_authn"></a>8.4. Changing the operator password</h3>
<div class="paragraph _abstract">
<p>You can change the password for the <code>operator</code> user if you do not want to use the automatically generated password.</p>
</div>
<div class="ulist">
<div class="title">Procedure</div>
<ul>
<li>
<p>Update the <code>password</code> key in the <code>infinispan-generated-operator-secret</code> secret as follows:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl patch secret infinispan-generated-operator-secret -p='{"stringData":{"password": "supersecretoperatorpassword"}}'</code></pre>
</div>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>You should update only the <code>password</code> key in the <code>generated-operator-secret</code> secret.
When you update the password, Infinispan Operator automatically refreshes other keys in that secret.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="disabling-authentication_authn"><a class="anchor" href="#disabling-authentication_authn"></a>8.5. Disabling user authentication</h3>
<div class="paragraph _abstract">
<p>Allow users to access Infinispan clusters and manipulate data without providing credentials.</p>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Do not disable authentication if endpoints are accessible from outside the Kubernetes cluster via <code>spec.expose.type</code>.
You should disable authentication for development environments only.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Set <code>false</code> as the value for the <code>spec.security.endpointAuthentication</code> field in your <code>Infinispan</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  security:
    endpointAuthentication: false</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
</ol>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="client-certificates"><a class="anchor" href="#client-certificates"></a>9. Configuring client certificate authentication</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Add client trust stores to your project and configure Infinispan to allow connections only from clients that present valid certificates.
This increases security of your deployment by ensuring that clients are trusted by a public certificate authority (CA).</p>
</div>
<div class="sect2">
<h3 id="client-certificate-authentication_client-certificates"><a class="anchor" href="#client-certificate-authentication_client-certificates"></a>9.1. Client certificate authentication</h3>
<div class="paragraph _abstract">
<p>Client certificate authentication restricts in-bound connections based on the certificates that clients present.</p>
</div>
<div class="paragraph">
<p>You can configure Infinispan to use trust stores with either of the following strategies:</p>
</div>
<div class="paragraph">
<div class="title">Validate</div>
<p>To validate client certificates, Infinispan requires a trust store that contains any part of the certificate chain for the signing authority, typically the root CA certificate.
Any client that presents a certificate signed by the CA can connect to Infinispan.</p>
</div>
<div class="paragraph">
<p>If you use the <code>Validate</code> strategy for verifying client certificates, you must also configure clients to provide valid Infinispan credentials if you enable authentication.</p>
</div>
<div class="paragraph">
<div class="title">Authenticate</div>
<p>Requires a trust store that contains all public client certificates in addition to the root CA certificate.
Only clients that present a signed certificate can connect to Infinispan.</p>
</div>
<div class="paragraph">
<p>If you use the <code>Authenticate</code> strategy for verifying client certificates, you must ensure that certificates contain valid Infinispan credentials as part of the distinguished name (DN).</p>
</div>
</div>
<div class="sect2">
<h3 id="enabling-client-certificate-authentication_client-certificates"><a class="anchor" href="#enabling-client-certificate-authentication_client-certificates"></a>9.2. Enabling client certificate authentication</h3>
<div class="paragraph _abstract">
<p>To enable client certificate authentication, you configure Infinispan to use trust stores with either the <code>Validate</code> or <code>Authenticate</code> strategy.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Set either <code>Validate</code> or <code>Authenticate</code> as the value for the <code>spec.security.endpointEncryption.clientCert</code> field in your <code>Infinispan</code> CR.</p>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>The default value is <code>None</code>.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Specify the secret that contains the client trust store with the <code>spec.security.endpointEncryption.clientCertSecretName</code> field.</p>
<div class="paragraph">
<p>By default Infinispan Operator expects a trust store secret named <code>&lt;cluster-name&gt;-client-cert-secret</code>.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>The secret must be unique to each <code>Infinispan</code> CR instance in the Kubernetes cluster.
When you delete the <code>Infinispan</code> CR, Kubernetes also automatically deletes the associated secret.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">spec:
  security:
    endpointEncryption:
        type: Secret
        certSecretName: tls-secret
        clientCert: Validate
        clientCertSecretName: infinispan-client-cert-secret</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
</ol>
</div>
<div class="paragraph">
<div class="title">Next steps</div>
<p>Provide Infinispan Operator with a trust store that contains all client certificates.
Alternatively you can provide certificates in PEM format and let Infinispan generate a client trust store.</p>
</div>
</div>
<div class="sect2">
<h3 id="providing-client-truststores_client-certificates"><a class="anchor" href="#providing-client-truststores_client-certificates"></a>9.3. Providing client truststores</h3>
<div class="paragraph _abstract">
<p>If you have a trust store that contains the required certificates you can make it available to Infinispan Operator.</p>
</div>
<div class="paragraph">
<p>Infinispan supports trust stores in <code>PKCS12</code> format only.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Specify the name of the secret that contains the client trust store as the value of the <code>metadata.name</code> field.</p>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>The name must match the value of the <code>spec.security.endpointEncryption.clientCertSecretName</code> field.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Provide the password for the trust store with the <code>stringData.truststore-password</code> field.</p>
</li>
<li>
<p>Specify the trust store with the <code>data.truststore.p12</code> field.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: v1
kind: Secret
metadata:
  name: infinispan-client-cert-secret
type: Opaque
stringData:
    truststore-password: changme
data:
    truststore.p12:  "&lt;base64_encoded_PKCS12_trust_store&gt;"</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="providing-client-certificates_client-certificates"><a class="anchor" href="#providing-client-certificates_client-certificates"></a>9.4. Providing client certificates</h3>
<div class="paragraph _abstract">
<p>Infinispan Operator can generate a trust store from certificates in PEM format.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Specify the name of the secret that contains the client trust store as the value of the <code>metadata.name</code> field.</p>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>The name must match the value of the <code>spec.security.endpointEncryption.clientCertSecretName</code> field.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Specify the signing certificate, or CA certificate bundle, as the value of the <code>data.trust.ca</code> field.</p>
</li>
<li>
<p>If you use the <code>Authenticate</code> strategy to verify client identities, add the certificate for each client that can connect to Infinispan endpoints with the <code>data.trust.cert.&lt;name&gt;</code> field.</p>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Infinispan Operator uses the <code>&lt;name&gt;</code> value as the alias for the certificate when it generates the trust store.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Optionally provide a password for the trust store with the <code>stringData.truststore-password</code> field.</p>
<div class="paragraph">
<p>If you do not provide one, Infinispan Operator sets "password" as the trust store password.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: v1
kind: Secret
metadata:
  name: infinispan-client-cert-secret
type: Opaque
stringData:
    truststore-password: changme
data:
    trust.ca: "&lt;base64_encoded_CA_certificate&gt;"
    trust.cert.client1: "&lt;base64_encoded_client_certificate&gt;"
    trust.cert.client2: "&lt;base64_encoded_client_certificate&gt;"</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
</ol>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="configuring-encryption"><a class="anchor" href="#configuring-encryption"></a>10. Configuring encryption</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Encrypt connections between clients and Infinispan pods with Red Hat OpenShift
service certificates or custom TLS certificates.</p>
</div>
<div class="sect2">
<h3 id="encryption-service-ca_tls"><a class="anchor" href="#encryption-service-ca_tls"></a>10.1. Encryption with Red Hat OpenShift service certificates</h3>
<div class="paragraph _abstract">
<p>Infinispan Operator automatically generates TLS certificates that are signed by the
Red Hat OpenShift service CA. Infinispan Operator then stores the certificates and keys
in a secret so you can retrieve them and use with remote clients.</p>
</div>
<div class="paragraph">
<p>If the Red Hat OpenShift service CA is available, Infinispan Operator adds the following <code>spec.security.endpointEncryption</code> configuration to the <code>Infinispan</code> CR:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  security:
    endpointEncryption:
      type: Service
      certServiceName: service.beta.openshift.io
      certSecretName: infinispan-cert-secret</code></pre>
</div>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.security.endpointEncryption.certServiceName</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the service that provides TLS certificates.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>spec.security.endpointEncryption.certSecretName</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies a secret with a service certificate and key in PEM format. Defaults to <code>&lt;cluster_name&gt;-cert-secret</code>.</p></td>
</tr>
</tbody>
</table>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Service certificates use the internal DNS name of the Infinispan cluster as the common name (CN), for example:</p>
</div>
<div class="paragraph">
<p><code>Subject: CN = example-infinispan.mynamespace.svc</code></p>
</div>
<div class="paragraph">
<p>For this reason, service certificates can be fully trusted only inside
OpenShift. If you want to encrypt connections with clients running
outside OpenShift, you should use custom TLS certificates.</p>
</div>
<div class="paragraph">
<p>Service certificates are valid for one year and are automatically replaced
before they expire.</p>
</div>
</td>
</tr>
</table>
</div>
</div>
<div class="sect2">
<h3 id="retrieving-tls-certificates_tls"><a class="anchor" href="#retrieving-tls-certificates_tls"></a>10.2. Retrieving TLS certificates</h3>
<div class="paragraph _abstract">
<p>Get TLS certificates from encryption secrets to create client trust stores.</p>
</div>
<div class="ulist">
<div class="title">Procedure</div>
<ul>
<li>
<p>Retrieve <code>tls.crt</code> from encryption secrets as follows:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get secret infinispan-cert-secret -o jsonpath='{.data.tls\.crt}' | base64 --decode &gt; tls.crt</code></pre>
</div>
</div>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="disabling-encryption_tls"><a class="anchor" href="#disabling-encryption_tls"></a>10.3. Disabling encryption</h3>
<div class="paragraph _abstract">
<p>You can disable encryption so clients do not need TLS certificates to establish connections with Infinispan.</p>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Do not disable encryption if endpoints are accessible from outside the Kubernetes cluster via <code>spec.expose.type</code>.
You should disable encryption for development environments only.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Set <code>None</code> as the value for the <code>spec.security.endpointEncryption.type</code> field in your <code>Infinispan</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  security:
    endpointEncryption:
      type: None</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="using-custom-encryption-secrets_tls"><a class="anchor" href="#using-custom-encryption-secrets_tls"></a>10.4. Using custom TLS certificates</h3>
<div class="paragraph _abstract">
<p>Use custom PKCS12 keystore or TLS certificate/key pairs to encrypt connections between clients and Infinispan clusters.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Create either a keystore or certificate secret.</p>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>The secret must be unique to each <code>Infinispan</code> CR instance in the Kubernetes cluster.
When you delete the <code>Infinispan</code> CR, Kubernetes also automatically deletes the associated secret.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Add the encryption secret to your OpenShift namespace, for example:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl apply -f tls_secret.yaml</code></pre>
</div>
</div>
</li>
<li>
<p>Specify the encryption secret with the <code>spec.security.endpointEncryption.certSecretName</code> field in your
<code>Infinispan</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  security:
    endpointEncryption:
      type: Secret
      certSecretName: tls-secret</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
</ol>
</div>
<div class="sect3">
<h4 id="custom-encryption-secrets_tls"><a class="anchor" href="#custom-encryption-secrets_tls"></a>10.4.1. Custom encryption secrets</h4>
<div class="paragraph _abstract">
<p>Custom encryption secrets that add keystores or certificate/key pairs to secure Infinispan connections must contain specific fields.</p>
</div>
<div class="listingblock">
<div class="title">Keystore secrets</div>
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: v1
kind: Secret
metadata:
  name: tls-secret
type: Opaque
stringData:
  alias: server
  password: changeme
data:
  keystore.p12:  "MIIKDgIBAzCCCdQGCSqGSIb3DQEHA..."</code></pre>
</div>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>stringData.alias</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies an alias for the keystore.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>stringData.password</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the keystore password.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>data.keystore.p12</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Adds a base64-encoded keystore.</p></td>
</tr>
</tbody>
</table>
<div class="listingblock">
<div class="title">Certificate secrets</div>
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: v1
kind: Secret
metadata:
  name: tls-secret
type: Opaque
data:
  tls.key:  "LS0tLS1CRUdJTiBQUk ..."
  tls.crt: "LS0tLS1CRUdJTiBDRVl ..."</code></pre>
</div>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>data.tls.key</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Adds a base64-encoded TLS key.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>data.tls.crt</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Adds a base64-encoded TLS certificate.</p></td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="authorization"><a class="anchor" href="#authorization"></a>11. Configuring user roles and permissions</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Secure access to Infinispan services by configuring role-based access control (RBAC) for users.
This requires you to assign roles to users so that they have permission to access caches and Infinispan resources.</p>
</div>
<div class="sect2">
<h3 id="allocating-storage_authorization"><a class="anchor" href="#allocating-storage_authorization"></a>11.1. Enabling security authorization</h3>
<div class="paragraph _abstract">
<p>By default authorization is disabled to ensure backwards compatibility with <code>Infinispan</code> CR instances.
Complete the following procedure to enable authorization and use role-based access control (RBAC) for Infinispan users.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Set <code>true</code> as the value for the <code>spec.security.authorization.enabled</code> field in your <code>Infinispan</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">spec:
  security:
    authorization:
      enabled: true</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="user-roles-permissions_authorization"><a class="anchor" href="#user-roles-permissions_authorization"></a>11.2. User roles and permissions</h3>
<div class="paragraph _abstract">
<p>Infinispan Operator provides a set of default roles that are associated with different permissions.</p>
</div>
<table class="tableblock frame-all grid-all stretch">
<caption class="title">Table 3. Default roles and permissions</caption>
<colgroup>
<col style="width: 33.3333%;">
<col style="width: 33.3333%;">
<col style="width: 33.3334%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Role</th>
<th class="tableblock halign-left valign-top">Permissions</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>admin</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">ALL</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Superuser with all permissions including control of the Cache Manager lifecycle.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>deployer</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">ALL_READ, ALL_WRITE, LISTEN, EXEC, MONITOR, CREATE</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Can create and delete Infinispan resources in addition to <code>application</code> permissions.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>application</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">ALL_READ, ALL_WRITE, LISTEN, EXEC, MONITOR</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Has read and write access to Infinispan resources in addition to <code>observer</code> permissions. Can also listen to events and execute server tasks and scripts.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>observer</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">ALL_READ, MONITOR</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Has read access to Infinispan resources in addition to <code>monitor</code> permissions.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>monitor</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">MONITOR</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Can view statistics for Infinispan clusters.</p></td>
</tr>
</tbody>
</table>
<h4 id="_infinispan_operator_credentials" class="discrete">Infinispan Operator credentials</h4>
<div class="paragraph">
<p>Infinispan Operator generates credentials that it uses to authenticate with Infinispan clusters to perform internal operations.
By default Infinispan Operator credentials are automatically assigned the <code>admin</code> role when you enable security authorization.</p>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://infinispan.org/docs/stable/titles/security/security.html#con_authz-authz">How security authorization works</a> (<em>Infinispan Security Guide</em>).</p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="assigning-user-roles_authorization"><a class="anchor" href="#assigning-user-roles_authorization"></a>11.3. Assigning roles and permissions to users</h3>
<div class="paragraph _abstract">
<p>Assign users with roles that control whether users are authorized to access Infinispan cluster resources.
Roles can have different permission levels, from read-only to unrestricted access.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Users gain authorization implicitly.
For example, "admin" gets <code>admin</code> permissions automatically.
A user named "deployer" has the <code>deployer</code> role automatically, and so on.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create an <code>identities.yaml</code> file that assigns roles to users.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">credentials:
  - username: admin
    password: changeme
  - username: my-user-1
    password: changeme
    roles:
      - admin
  - username: my-user-2
    password: changeme
    roles:
      - monitor</code></pre>
</div>
</div>
</li>
<li>
<p>Create an authentication secret from <code>identities.yaml</code>.</p>
<div class="paragraph">
<p>If necessary, delete the existing secret first.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl delete secret connect-secret --ignore-not-found
kubectl create secret generic --from-file=identities.yaml connect-secret</code></pre>
</div>
</div>
</li>
<li>
<p>Specify the authentication secret with <code>spec.security.endpointSecretName</code> in your <code>Infinispan</code> CR and then apply the changes.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  security:
    endpointSecretName: connect-secret</code></pre>
</div>
</div>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="adding-custom-roles-permissions_authorization"><a class="anchor" href="#adding-custom-roles-permissions_authorization"></a>11.4. Adding custom roles and permissions</h3>
<div class="paragraph _abstract">
<p>You can define custom roles with different combinations of permissions.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Open your <code>Infinispan</code> CR for editing.</p>
</li>
<li>
<p>Specify custom roles and their associated permissions with the <code>spec.security.authorization.roles</code> field.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">spec:
  security:
    authorization:
      enabled: true
      roles:
        - name: my-role-1
          permissions:
            - ALL
        - name: my-role-2
          permissions:
            - READ
            - WRITE</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
</ol>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="creating-network"><a class="anchor" href="#creating-network"></a>12. Configuring network access to Infinispan</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Expose Infinispan clusters so you can access Infinispan Console, the
Infinispan command line interface (CLI), REST API, and Hot Rod endpoint.</p>
</div>
<div class="sect2">
<h3 id="getting-internal-service_network-services"><a class="anchor" href="#getting-internal-service_network-services"></a>12.1. Getting the service for internal connections</h3>
<div class="paragraph _abstract">
<p>By default, Infinispan Operator creates a service that provides access to Infinispan clusters from clients running on Kubernetes.</p>
</div>
<div class="paragraph">
<p>This internal service has the same name as your Infinispan cluster, for example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">metadata:
  name: infinispan</code></pre>
</div>
</div>
<div class="ulist">
<div class="title">Procedure</div>
<ul>
<li>
<p>Check that the internal service is available as follows:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get services</code></pre>
</div>
</div>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="exposing-loadbalancer_network-services"><a class="anchor" href="#exposing-loadbalancer_network-services"></a>12.2. Exposing Infinispan through a LoadBalancer service</h3>
<div class="paragraph _abstract">
<p>Use a <code>LoadBalancer</code> service to make Infinispan clusters available to clients running outside Kubernetes.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>To access Infinispan with unencrypted Hot Rod client connections you must use
a <code>LoadBalancer</code> service.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Include <code>spec.expose</code> in your <code>Infinispan</code> CR.</p>
</li>
<li>
<p>Specify <code>LoadBalancer</code> as the service type with the <code>spec.expose.type</code> field.</p>
</li>
<li>
<p>Optionally specify the network port where the service is exposed with the <code>spec.expose.port</code> field.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  expose:
    type: LoadBalancer
    port: 65535</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
<li>
<p>Verify that the <code>-external</code> service is available.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get services | grep external</code></pre>
</div>
</div>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="exposing-nodeport_network-services"><a class="anchor" href="#exposing-nodeport_network-services"></a>12.3. Exposing Infinispan through a NodePort service</h3>
<div class="paragraph _abstract">
<p>Use a <code>NodePort</code> service to expose Infinispan clusters on the network.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Include <code>spec.expose</code> in your <code>Infinispan</code> CR.</p>
</li>
<li>
<p>Specify <code>NodePort</code> as the service type with the <code>spec.expose.type</code> field.</p>
</li>
<li>
<p>Configure the port where Infinispan is exposed with the <code>spec.expose.nodePort</code> field.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  expose:
    type: NodePort
    nodePort: 30000</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
<li>
<p>Verify that the <code>-external</code> service is available.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get services | grep external</code></pre>
</div>
</div>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="exposing-routes_network-services"><a class="anchor" href="#exposing-routes_network-services"></a>12.4. Exposing Infinispan through a Route</h3>
<div class="paragraph _abstract">
<p>Use a Kubernetes Ingress or an OpenShift <code>Route</code> with passthrough encryption to make Infinispan clusters available on the network.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
To access Infinispan with Hot Rod client, you must configure TLS with SNI.
</td>
</tr>
</table>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Include <code>spec.expose</code> in your <code>Infinispan</code> CR.</p>
</li>
<li>
<p>Specify <code>Route</code> as the service type with the <code>spec.expose.type</code> field.</p>
</li>
<li>
<p>Optionally add a hostname with the <code>spec.expose.host</code> field.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  expose:
    type: Route
    host: www.example.org</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
<li>
<p>Verify that the route is available.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get ingress</code></pre>
</div>
</div>
</li>
</ol>
</div>
<div class="paragraph">
<div class="title"><code>Route</code> ports</div>
<p>When you create a <code>Route</code>, it exposes a port on the network that accepts client connections and redirects traffic to Infinispan services that listen on port <code>11222</code>.</p>
</div>
<div class="paragraph">
<p>The port where the <code>Route</code> is available depends on whether you use encryption or not.</p>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Port</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>80</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Encryption is disabled.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>443</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Encryption is enabled.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="network-services_network-services"><a class="anchor" href="#network-services_network-services"></a>12.5. Network services</h3>
<div class="paragraph _abstract">
<p>Reference information for network services that Infinispan Operator creates and manages.</p>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 25%;">
<col style="width: 25%;">
<col style="width: 25%;">
<col style="width: 25%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Service</th>
<th class="tableblock halign-left valign-top">Port</th>
<th class="tableblock halign-left valign-top">Protocol</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>&lt;cluster_name&gt;</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>11222</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">TCP</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Access to Infinispan endpoints within the Kubernetes cluster or from an OpenShift <code>Route</code>.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>&lt;cluster_name&gt;-ping</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>8888</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">TCP</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Cluster discovery for Infinispan pods.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>&lt;cluster_name&gt;-external</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>11222</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">TCP</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Access to Infinispan endpoints from a <code>LoadBalancer</code> or <code>NodePort</code> service.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>&lt;cluster_name&gt;-site</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>7900</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">TCP</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">JGroups RELAY2 channel for cross-site communication.</p></td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
<div class="sect1">
<h2 id="setting-up-xsite"><a class="anchor" href="#setting-up-xsite"></a>13. Setting up cross-site replication</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Ensure availability with Infinispan Operator by configuring geographically distributed clusters as a unified service.</p>
</div>
<div class="paragraph">
<p>You can configure clusters to perform cross-site replication with:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Connections that Infinispan Operator manages.</p>
</li>
<li>
<p>Connections that you configure and manage.</p>
</li>
</ul>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>You can use both managed and manual connections for Infinispan clusters in the same <code>Infinispan</code> CR.
You must ensure that Infinispan clusters establish connections in the same way at each site.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="sect2">
<h3 id="cross-site-expose-types_cross-site"><a class="anchor" href="#cross-site-expose-types_cross-site"></a>13.1. Cross-site replication expose types</h3>
<div class="paragraph _abstract">
<p>You can use a <code>NodePort</code> service, a <code>LoadBalancer</code> service, or an OpenShift <code>Route</code> to handle network traffic for backup operations between Infinispan clusters.
Before you start setting up cross-site replication you should determine what expose type is available for your Red Hat OpenShift cluster.
In some cases you may require an administrator to provision services before you can configure an expose type.</p>
</div>
<div class="paragraph">
<div class="title"><code>NodePort</code></div>
<p>A <code>NodePort</code> is a service that accepts network traffic at a static port, in the <code>30000</code> to <code>32767</code> range, on an IP address that is available externally to the OpenShift cluster.</p>
</div>
<div class="paragraph">
<p>To use a <code>NodePort</code> as the expose type for cross-site replication, an administrator must provision external IP addresses for each OpenShift node.
In most cases, an administrator must also configure DNS routing for those external IP addresses.</p>
</div>
<div class="paragraph">
<div class="title"><code>LoadBalancer</code></div>
<p>A <code>LoadBalancer</code> is a service that directs network traffic to the correct node in the OpenShift cluster.</p>
</div>
<div class="paragraph">
<p>Whether you can use a <code>LoadBalancer</code> as the expose type for cross-site replication depends on the host platform.
AWS supports network load balancers (NLB) while some other cloud platforms do not.
To use a <code>LoadBalancer</code> service, an administrator must first create an ingress controller backed by an NLB.</p>
</div>
<div class="paragraph">
<div class="title"><code>Route</code></div>
<p>An OpenShift <code>Route</code> allows Infinispan clusters to connect with each other through a public secure URL.</p>
</div>
<div class="paragraph">
<p>Infinispan uses TLS with the SNI header to send backup requests between clusters through an OpenShift <code>Route</code>.
To do this you must add a keystore with TLS certificates so that Infinispan can encrypt network traffic for cross-site replication.</p>
</div>
<div class="paragraph">
<p>When you specify <code>Route</code> as the expose type for cross-site replication, Infinispan Operator creates a route with TLS passthrough encryption for each Infinispan cluster that it manages.
You can specify a hostname for the <code>Route</code> but you cannot specify a <code>Route</code> that you have already created.
Likewise it is not possible to use an ingress instead of a route because Kubernetes does not support TLS+SNI.</p>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types">Publishing Services (ServiceTypes)</a></p>
</li>
<li>
<p><a href="https://docs.openshift.com/container-platform/4.9/networking/configuring_ingress_cluster_traffic/overview-traffic.html">Configuring ingress cluster traffic overview</a></p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="managed-cross-site-connections_cross-site"><a class="anchor" href="#managed-cross-site-connections_cross-site"></a>13.2. Managed cross-site replication</h3>
<div class="paragraph _abstract">
<p>Infinispan Operator can discover Infinispan clusters running in different data centers to form global clusters.</p>
</div>
<div class="paragraph">
<p>When you configure managed cross-site connections, Infinispan Operator creates router pods in each Infinispan cluster.
Infinispan pods use the <code>&lt;cluster_name&gt;-site</code> service to connect to these router pods and send backup requests.</p>
</div>
<div class="paragraph">
<p>Router pods maintain a record of all pod IP addresses and parse RELAY message headers to forward backup requests to the correct Infinispan cluster.
If a router pod crashes then all Infinispan pods start using any other available router pod until Kubernetes restores it.</p>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>To manage cross-site connections, Infinispan Operator uses the Kubernetes API.
Each OpenShift cluster must have network access to the remote Kubernetes API and a service account token for each backup cluster.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Infinispan clusters do not start running until Infinispan Operator discovers all backup locations that you configure.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="sect3">
<h4 id="creating-sa-tokens-openshift_cross-site"><a class="anchor" href="#creating-sa-tokens-openshift_cross-site"></a>13.2.1. Creating service account tokens for managed cross-site connections</h4>
<div class="paragraph _abstract">
<p>Generate service account tokens on OpenShift clusters that allow Infinispan Operator to automatically discover Infinispan clusters and manage cross-site connections.</p>
</div>
<div class="paragraph">
<p>This procedure is specific to OpenShift clusters.
If you are using another Kubernetes distribution, you should create site access secrets instead.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Ensure all OpenShift clusters have access to the Kubernetes API.<br>
Infinispan Operator uses this API to manage cross-site connections.</p>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Infinispan Operator does not modify remote Infinispan clusters.
The service account tokens provide read only access through the Kubernetes API.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Log in to an OpenShift cluster.</p>
</li>
<li>
<p>Create a service account.</p>
<div class="paragraph">
<p>For example, create a service account at <strong>LON</strong>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>oc create sa lon
serviceaccount/lon created</code></pre>
</div>
</div>
</li>
<li>
<p>Add the view role to the service account with the following command:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>oc policy add-role-to-user view system:serviceaccount:&lt;namespace&gt;:lon</code></pre>
</div>
</div>
</li>
<li>
<p>If you use a <code>NodePort</code> service to expose Infinispan clusters on the network, you must also add the <code>cluster-reader</code> role to the service account:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>oc adm policy add-cluster-role-to-user cluster-reader -z &lt;service-account-name&gt; -n &lt;namespace&gt;</code></pre>
</div>
</div>
</li>
<li>
<p>Repeat the preceding steps on your other OpenShift clusters.</p>
</li>
<li>
<p>Exchange service account tokens on each OpenShift cluster.</p>
</li>
</ol>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://docs.openshift.com/container-platform/4.9/authentication/using-service-accounts-in-applications.html">Using service accounts in applications</a></p>
</li>
</ul>
</div>
</div>
<div class="sect3">
<h4 id="exchanging-sa-tokens_cross-site"><a class="anchor" href="#exchanging-sa-tokens_cross-site"></a>13.2.2. Exchanging service account tokens</h4>
<div class="paragraph _abstract">
<p>After you create service account tokens on your OpenShift clusters, you
add them to secrets on each backup location.
For example, at <strong>LON</strong> you add the service account token for <strong>NYC</strong>.
At <strong>NYC</strong> you add the service account token for <strong>LON</strong>.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Get tokens from each service account.</p>
<div class="paragraph">
<p>Use the following command or get the token from the Kubernetes Dashboard:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>oc sa get-token lon

eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9...</code></pre>
</div>
</div>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Log in to an OpenShift cluster.</p>
</li>
<li>
<p>Add the service account token for a backup location with the following command:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>oc create secret generic &lt;token-name&gt; --from-literal=token=&lt;token&gt;</code></pre>
</div>
</div>
<div class="paragraph">
<p>For example, log in to the OpenShift cluster at <strong>NYC</strong> and create a <code>lon-token</code> secret as follows:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>oc create secret generic lon-token --from-literal=token=eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9...</code></pre>
</div>
</div>
</li>
<li>
<p>Repeat the preceding steps on your other OpenShift clusters.</p>
</li>
</ol>
</div>
</div>
<div class="sect3">
<h4 id="applying-cluster-roles-xsite_cross-site"><a class="anchor" href="#applying-cluster-roles-xsite_cross-site"></a>13.2.3. Setting up Kubernetes for managed cross-site connections</h4>
<div class="paragraph _abstract">
<p>Apply cluster roles and create site access secrets on Kubernetes to use cross-site replication capabilities.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Install <code>role.yaml</code> and <code>role_binding.yaml</code> if you install Infinispan Operator manually.</p>
<div class="paragraph">
<p>During OLM installation, Infinispan Operator sets up cluster roles required for cross-site replication.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl apply -f config/rbac/role.yaml
kubectl apply -f config/rbac/role_binding.yaml</code></pre>
</div>
</div>
</li>
<li>
<p>If you run Infinispan Operator in any Kubernetes deployment (Minikube, Kind, and so on), you should create secrets that contain the files that allow Kubernetes clusters to authenticate with each other.</p>
<div class="paragraph">
<p>Do one of the following:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Retrieve service account tokens from each site and then add them to secrets on each backup location, for example:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl create serviceaccount site-a -n ns-site-a
kubectl create clusterrole xsite-cluster-role --verb=get,list,watch --resource=nodes,services
kubectl create clusterrolebinding xsite-cluster-role-binding --clusterrole=xsite-cluster-role --serviceaccount=ns-site-a:site-a
TOKENNAME=kubectl get serviceaccount/site-a -o jsonpath='{.secrets[0].name}' -n ns-site-a
TOKEN=kubectl get secret $TOKENNAME -o jsonpath='{.data.token}' -n ns-site-a | base64 --decode
kubectl create secret generic site-a-secret -n ns-site-a --from-literal=token=$TOKEN</code></pre>
</div>
</div>
</li>
<li>
<p>Create secrets on each site that contain <code>ca.crt</code>, <code>client.crt</code>, and <code>client.key</code> from your Kubernetes installation.</p>
<div class="paragraph">
<p>For example, for Minikube do the following on <strong>LON</strong>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl create secret generic site-a-secret \
    --from-file=certificate-authority=/opt/minikube/.minikube/ca.crt \
    --from-file=client-certificate=/opt/minikube/.minikube/client.crt \
    --from-file=client-key=/opt/minikube/.minikube/client.key</code></pre>
</div>
</div>
</li>
</ul>
</div>
</li>
</ol>
</div>
</div>
<div class="sect3">
<h4 id="configuring-sites-automatically_cross-site"><a class="anchor" href="#configuring-sites-automatically_cross-site"></a>13.2.4. Configuring managed cross-site connections</h4>
<div class="paragraph _abstract">
<p>Configure Infinispan Operator to establish cross-site views with Infinispan clusters.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Determine a suitable expose type for cross-site replication.<br>
If you use an OpenShift <code>Route</code> you must add a keystore with TLS certificates and secure cross-site connections.</p>
</li>
<li>
<p>Create and exchange Red Hat OpenShift service account tokens for each Infinispan cluster.<br>
Or, if you are using Kubernetes, apply cluster roles and create site access secrets.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create an <code>Infinispan</code> CR for each Infinispan cluster.</p>
</li>
<li>
<p>Specify the name of the local site with <code>spec.service.sites.local.name</code>.</p>
</li>
<li>
<p>Configure the expose type for cross-site replication.</p>
<div class="olist loweralpha">
<ol class="loweralpha" type="a">
<li>
<p>Set the value of the <code>spec.service.sites.local.expose.type</code> field to one of the following:</p>
<div class="ulist">
<ul>
<li>
<p><code>NodePort</code></p>
</li>
<li>
<p><code>LoadBalancer</code></p>
</li>
<li>
<p><code>Route</code></p>
</li>
</ul>
</div>
</li>
<li>
<p>Optionally specify a port or custom hostname with the following fields:</p>
<div class="ulist">
<ul>
<li>
<p><code>spec.service.sites.local.expose.nodePort</code> if you use a <code>NodePort</code> service.</p>
</li>
<li>
<p><code>spec.service.sites.local.expose.port</code> if you use a <code>LoadBalancer</code> service.</p>
</li>
<li>
<p><code>spec.service.sites.local.expose.routeHostName</code> if you use an OpenShift <code>Route</code>.</p>
</li>
</ul>
</div>
</li>
</ol>
</div>
</li>
<li>
<p>Specify the number of pods that can send RELAY messages with the <code>service.sites.local.maxRelayNodes</code> field.</p>
<div class="admonitionblock tip">
<table>
<tr>
<td class="icon">
<i class="fa icon-tip" title="Tip"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Configure all pods in your cluster to send <code>RELAY</code> messages for better performance.
If all pods send backup requests directly, then no pods need to forward backup requests.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Provide the name, URL, and secret for each Infinispan cluster that acts as a backup location with <code>spec.service.sites.locations</code>.</p>
</li>
<li>
<p>If Infinispan cluster names or namespaces at the remote site do not match the local site, specify those values with the <code>clusterName</code> and <code>namespace</code> fields.</p>
<div class="paragraph">
<p>The following are example <code>Infinispan</code> CR definitions for <strong>LON</strong> and <strong>NYC</strong>:</p>
</div>
<div class="ulist">
<ul>
<li>
<p><strong>LON</strong></p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
spec:
  replicas: 3
  version: &lt;Infinispan_version&gt;
  service:
    type: DataGrid
    sites:
      local:
        name: LON
        expose:
          type: LoadBalancer
          port: 65535
        maxRelayNodes: 1
      locations:
        - name: NYC
          clusterName: &lt;nyc_cluster_name&gt;
          namespace: &lt;nyc_cluster_namespace&gt;
          url: openshift://api.rhdg-nyc.openshift-aws.myhost.com:6443
          secretName: nyc-token
  logging:
    categories:
      org.jgroups.protocols.TCP: error
      org.jgroups.protocols.relay.RELAY2: error</code></pre>
</div>
</div>
</li>
<li>
<p><strong>NYC</strong></p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: nyc-cluster
spec:
  replicas: 2
  version: &lt;Infinispan_version&gt;
  service:
    type: DataGrid
    sites:
      local:
        name: NYC
        expose:
          type: LoadBalancer
          port: 65535
        maxRelayNodes: 1
      locations:
        - name: LON
          clusterName: infinispan
          namespace: ispn-namespace
          url: openshift://api.rhdg-lon.openshift-aws.myhost.com:6443
          secretName: lon-token
  logging:
    categories:
      org.jgroups.protocols.TCP: error
      org.jgroups.protocols.relay.RELAY2: error</code></pre>
</div>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Be sure to adjust logging categories in your <code>Infinispan</code> CR to decrease log levels for JGroups TCP and RELAY2 protocols.
This prevents a large number of log files from uses container storage.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">spec:
  logging:
    categories:
      org.jgroups.protocols.TCP: error
      org.jgroups.protocols.relay.RELAY2: error</code></pre>
</div>
</div>
</td>
</tr>
</table>
</div>
</li>
</ul>
</div>
</li>
<li>
<p>Configure your <code>Infinispan</code> CRs with any other Data Grid Service resources and then apply the changes.</p>
</li>
<li>
<p>Verify that Infinispan clusters form a cross-site view.</p>
<div class="olist loweralpha">
<ol class="loweralpha" type="a">
<li>
<p>Retrieve the <code>Infinispan</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get infinispan -o yaml</code></pre>
</div>
</div>
</li>
<li>
<p>Check for the <code>type: CrossSiteViewFormed</code> condition.</p>
</li>
</ol>
</div>
</li>
</ol>
</div>
<div class="paragraph">
<div class="title">Next steps</div>
<p>If your clusters have formed a cross-site view, you can start adding backup locations to caches.</p>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://infinispan.org/docs/stable/titles/xsite/xsite.html">Infinispan guide to cross-site replication</a></p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect2">
<h3 id="configuring-sites-manually_cross-site"><a class="anchor" href="#configuring-sites-manually_cross-site"></a>13.3. Manually configuring cross-site connections</h3>
<div class="paragraph _abstract">
<p>You can specify static network connection details to perform cross-site replication with Infinispan clusters running outside Kubernetes.
Manual cross-site connections are necessary in any scenario where access to the Kubernetes API is not available outside the Kubernetes cluster where Infinispan runs.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Determine a suitable expose type for cross-site replication.<br>
If you use an OpenShift <code>Route</code> you must add a keystore with TLS certificates and secure cross-site connections.</p>
</li>
<li>
<p>Ensure you have the correct host names and ports for each Infinispan cluster and each <code>&lt;cluster-name&gt;-site</code> service.</p>
<div class="paragraph">
<p>Manually connecting Infinispan clusters to form cross-site views requires predictable network locations for Infinispan services, which means you need to know the network locations before they are created.</p>
</div>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create an <code>Infinispan</code> CR for each Infinispan cluster.</p>
</li>
<li>
<p>Specify the name of the local site with <code>spec.service.sites.local.name</code>.</p>
</li>
<li>
<p>Configure the expose type for cross-site replication.</p>
<div class="olist loweralpha">
<ol class="loweralpha" type="a">
<li>
<p>Set the value of the <code>spec.service.sites.local.expose.type</code> field to one of the following:</p>
<div class="ulist">
<ul>
<li>
<p><code>NodePort</code></p>
</li>
<li>
<p><code>LoadBalancer</code></p>
</li>
<li>
<p><code>Route</code></p>
</li>
</ul>
</div>
</li>
<li>
<p>Optionally specify a port or custom hostname with the following fields:</p>
<div class="ulist">
<ul>
<li>
<p><code>spec.service.sites.local.expose.nodePort</code> if you use a <code>NodePort</code> service.</p>
</li>
<li>
<p><code>spec.service.sites.local.expose.port</code> if you use a <code>LoadBalancer</code> service.</p>
</li>
<li>
<p><code>spec.service.sites.local.expose.routeHostName</code> if you use an OpenShift <code>Route</code>.</p>
</li>
</ul>
</div>
</li>
</ol>
</div>
</li>
<li>
<p>Provide the name and static URL for each Infinispan cluster that acts as a backup location with <code>spec.service.sites.locations</code>, for example:</p>
<div class="ulist">
<ul>
<li>
<p><strong>LON</strong></p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
spec:
  replicas: 3
  version: &lt;Infinispan_version&gt;
  service:
    type: DataGrid
    sites:
      local:
        name: LON
        expose:
          type: LoadBalancer
          port: 65535
        maxRelayNodes: 1
      locations:
        - name: NYC
          url: infinispan+xsite://infinispan-nyc.myhost.com:7900
  logging:
    categories:
      org.jgroups.protocols.TCP: error
      org.jgroups.protocols.relay.RELAY2: error</code></pre>
</div>
</div>
</li>
<li>
<p><strong>NYC</strong></p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
spec:
  replicas: 2
  version: &lt;Infinispan_version&gt;
  service:
    type: DataGrid
    sites:
      local:
        name: NYC
        expose:
          type: LoadBalancer
          port: 65535
        maxRelayNodes: 1
      locations:
        - name: LON
          url: infinispan+xsite://infinispan-lon.myhost.com
  logging:
    categories:
      org.jgroups.protocols.TCP: error
      org.jgroups.protocols.relay.RELAY2: error</code></pre>
</div>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Be sure to adjust logging categories in your <code>Infinispan</code> CR to decrease log levels for JGroups TCP and RELAY2 protocols.
This prevents a large number of log files from uses container storage.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">spec:
  logging:
    categories:
      org.jgroups.protocols.TCP: error
      org.jgroups.protocols.relay.RELAY2: error</code></pre>
</div>
</div>
</td>
</tr>
</table>
</div>
</li>
</ul>
</div>
</li>
<li>
<p>Configure your <code>Infinispan</code> CRs with any other Data Grid Service resources and then apply the changes.</p>
</li>
<li>
<p>Verify that Infinispan clusters form a cross-site view.</p>
<div class="olist loweralpha">
<ol class="loweralpha" type="a">
<li>
<p>Retrieve the <code>Infinispan</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get infinispan -o yaml</code></pre>
</div>
</div>
</li>
<li>
<p>Check for the <code>type: CrossSiteViewFormed</code> condition.</p>
</li>
</ol>
</div>
</li>
</ol>
</div>
<div class="paragraph">
<div class="title">Next steps</div>
<p>If your clusters have formed a cross-site view, you can start adding backup locations to caches.</p>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://infinispan.org/docs/stable/titles/xsite/xsite.html">Infinispan guide to cross-site replication</a></p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="allocating-cpu-and-memory-cross-site_cross-site"><a class="anchor" href="#allocating-cpu-and-memory-cross-site_cross-site"></a>13.4. Allocating CPU and memory for Gossip router pod</h3>
<div class="paragraph _abstract">
<p>Allocate CPU and memory resources to Infinispan Gossip router.</p>
</div>
<div class="ulist">
<div class="title">Prerequisite</div>
<ul>
<li>
<p>Have Gossip router enabled. The <code>service.sites.local.discovery.launchGossipRouter</code> property must be set to <code>true</code>, which is the default value.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Allocate the number of CPU units using the <code>service.sites.local.discovery.cpu</code> field.</p>
</li>
<li>
<p>Allocate the amount of memory, in bytes, using the <code>service.sites.local.discovery.memory</code> field.</p>
<div class="paragraph">
<p>The <code>cpu</code> and <code>memory</code> fields have values in the format of <code>&lt;limit&gt;:&lt;requests&gt;</code>.
For example, <code>cpu: "2000m:1000m"</code> limits pods to a maximum of <code>2000m</code> of CPU and requests <code>1000m</code> of CPU for each pod at startup.
Specifying a single value sets both the limit and request.</p>
</div>
</li>
<li>
<p>Apply your <code>Infinispan</code> CR.</p>
</li>
</ol>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  service:
    type: DataGrid
    sites:
      local:
        name: LON
        discovery:
          launchGossipRouter: true
          memory: "2Gi:1Gi"
          cpu: "2000m:1000m"</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="disabling-gossip-router-cross-site_cross-site"><a class="anchor" href="#disabling-gossip-router-cross-site_cross-site"></a>13.5. Disabling local Gossip router and service</h3>
<div class="paragraph _abstract">
<p>The Infinispan Operator starts a Gossip router on each site, but you only need a single Gossip router to manage traffic between the Infinispan cluster members.
You can disable the additional Gossip routers to save resources.</p>
</div>
<div class="paragraph">
<p>For example, you have Infinispan clusters in <strong>LON</strong> and <strong>NYC</strong> sites.
The following procedure shows how you can disable Gossip router in <strong>LON</strong> site and connect to <strong>NYC</strong> that has the Gossip router enabled.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create an <code>Infinispan</code> CR for each Infinispan cluster.</p>
</li>
<li>
<p>Specify the name of the local site with the <code>spec.service.sites.local.name</code> field.</p>
</li>
<li>
<p>For the <strong>LON</strong> cluster, set <code>false</code> as the value for the <code>spec.service.sites.local.discovery.launchGossipRouter</code> field.</p>
</li>
<li>
<p>For the <strong>LON</strong> cluster, specify the <code>url</code> with the <code>spec.service.sites.locations.url</code> to connect to the <strong>NYC</strong>.</p>
</li>
<li>
<p>In the <strong>NYC</strong> configuration, do not specify the <code>spec.service.sites.locations.url</code>.</p>
<div class="listingblock">
<div class="title">LON</div>
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
spec:
  replicas: 3
  service:
    type: DataGrid
    sites:
      local:
        name: LON
        discovery:
          launchGossipRouter: false
      locations:
        - name: NYC
          url: infinispan+xsite://infinispan-nyc.myhost.com:7900</code></pre>
</div>
</div>
<div class="listingblock">
<div class="title">NYC</div>
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
spec:
  replicas: 3
  service:
    type: DataGrid
    sites:
      local:
        name: NYC
      locations:
        - name: LON</code></pre>
</div>
</div>
</li>
</ol>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>If you have three or more sites, Infinispan recommends to keep the Gossip router enabled on all the remote sites.
When you have multiple Gossip routers and one of them becomes unavailable, the remaining routers continue exchanging messages.
If a single Gossip router is defined, and it becomes unavailable, the connection between the remote sites breaks.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="paragraph">
<div class="title">Next steps</div>
<p>If your clusters have formed a cross-site view, you can start adding backup locations to caches.</p>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://infinispan.org/docs/stable/titles/xsite/xsite.html">Infinispan cross-site replication</a></p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="cross-site-resources-automatic_cross-site"><a class="anchor" href="#cross-site-resources-automatic_cross-site"></a>13.6. Resources for configuring cross-site replication</h3>
<div class="paragraph _abstract">
<p>The following tables provides fields and descriptions for cross-site resources.</p>
</div>
<table class="tableblock frame-all grid-all stripes-even stretch">
<caption class="title">Table 4. service.type</caption>
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.type: DataGrid</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Infinispan supports cross-site replication with Data Grid Service clusters only.</p></td>
</tr>
</tbody>
</table>
<table class="tableblock frame-all grid-all stripes-even stretch">
<caption class="title">Table 5. service.sites.local</caption>
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.sites.local.name</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Names the local site where a Infinispan cluster runs.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.sites.local.maxRelayNodes</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the maximum number of pods that can send RELAY messages for cross-site replication. The default value is <code>1</code>.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.sites.local.discovery.launchGossipRouter</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">If <code>false</code>, the cross-site services and the Gossip router pod are not created in the local site. The default value is <code>true</code>.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.sites.local.discovery.memory</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Allocates the amount of memory in bytes. It uses the following format <code>&lt;limit&gt;:&lt;requests&gt;</code> (example <code>"2Gi:1Gi"</code>).</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.sites.local.discovery.cpu</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Allocates the number of CPU units. It uses the following format <code>&lt;limit&gt;:&lt;requests&gt;</code> (example <code>"2000m:1000m"</code>).</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.sites.local.expose.type</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the network service for cross-site replication. Infinispan clusters use this service to communicate and perform backup operations. You can set the value to <code>NodePort</code>, <code>LoadBalancer</code>, or <code>Route</code>.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.sites.local.expose.nodePort</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies a static port within the default range of <code>30000</code> to <code>32767</code> if you expose Infinispan through a <code>NodePort</code> service. If you do not specify a port, the platform selects an available one.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.sites.local.expose.port</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the network port for the service if you expose Infinispan through a <code>LoadBalancer</code> service. The default port is <code>7900</code>.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.sites.local.expose.routeHostName</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies a custom hostname if you expose Infinispan through an OpenShift <code>Route</code>. If you do not set a value then OpenShift generates a hostname.</p></td>
</tr>
</tbody>
</table>
<table class="tableblock frame-all grid-all stripes-even stretch">
<caption class="title">Table 6. service.sites.locations</caption>
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.sites.locations</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Provides connection information for all backup locations.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.sites.locations.name</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies a backup location that matches <code>.spec.service.sites.local.name</code>.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.sites.locations.url</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the URL of the Kubernetes API for managed connections or a static URL for manual connections.</p>
<p class="tableblock">Use <code>kubernetes://</code> if the backup location is a Kubernetes instance.</p>
<p class="tableblock">Use <code>openshift://</code> to specify the URL of the Kubernetes API for an OpenShift cluster.</p>
<p class="tableblock">Note that the <code>openshift://</code> URL must present a valid, CA-signed certificate.
You cannot use self-signed certificates.</p>
<p class="tableblock">Use the <code>infinispan+xsite://&lt;hostname&gt;:&lt;port&gt;</code> format for static hostnames and ports. The default port is <code>7900</code>.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.sites.locations.secretName</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the secret that contains the service account token for the backup site.
If you set up cross-site on Kubernetes this field specifies the access secret for a site which can be any appropriate authentication object.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.sites.locations.clusterName</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the cluster name at the backup location if it is different to the cluster name at the local site.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.sites.locations.namespace</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the namespace of the Infinispan cluster at the backup location if it does not match the namespace at the local site.</p></td>
</tr>
</tbody>
</table>
<h4 id="_managed_cross_site_connections" class="discrete">Managed cross-site connections</h4>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  service:
    type: DataGrid
    sites:
      local:
        name: LON
        expose:
          type: LoadBalancer
        maxRelayNodes: 1
      locations:
      - name: NYC
        clusterName: &lt;nyc_cluster_name&gt;
        namespace: &lt;nyc_cluster_namespace&gt;
        url: openshift://api.site-b.devcluster.openshift.com:6443
        secretName: nyc-token</code></pre>
</div>
</div>
<h4 id="_manual_cross_site_connections" class="discrete">Manual cross-site connections</h4>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  service:
    type: DataGrid
    sites:
      local:
        name: LON
        expose:
          type: LoadBalancer
          port: 65535
        maxRelayNodes: 1
      locations:
      - name: NYC
        url: infinispan+xsite://infinispan-nyc.myhost.com:7900</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="securing-cross-site-connections_cross-site"><a class="anchor" href="#securing-cross-site-connections_cross-site"></a>13.7. Securing cross-site connections</h3>
<div class="paragraph _abstract">
<p>Add keystores and trust stores so that Infinispan clusters can secure cross-site replication traffic.</p>
</div>
<div class="paragraph">
<p>You must add a keystore to use an OpenShift <code>Route</code> as the expose type for cross-site replication.
Securing cross-site connections is optional if you use a <code>NodePort</code> or <code>LoadBalancer</code> as the expose type.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Cross-site replication does not support the Kubernetes CA service. You must provide your own certificates.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Have a PKCS12 keystore that Infinispan can use to encrypt and decrypt RELAY messages.</p>
<div class="paragraph">
<p>You must provide a keystore for relay pods and router pods to secure cross-site connections.<br>
The keystore can be the same for relay pods and router pods or you can provide separate keystores for each.<br>
You can also use the same keystore for each Infinispan cluster or a unique keystore for each cluster.</p>
</div>
</li>
<li>
<p>Optionally have a trust store that contains part of the certificate chain or root CA certificate that verifies public certificates for Infinispan relay pods and router pods.</p>
<div class="paragraph">
<p>By default, Infinispan uses the Java trust store to verify public certificates.</p>
</div>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create cross-site encryption secrets.</p>
<div class="olist loweralpha">
<ol class="loweralpha" type="a">
<li>
<p>Create keystore secrets.</p>
</li>
<li>
<p>Create trust store secrets if you do not want to use the default Java trust store.</p>
</li>
</ol>
</div>
</li>
<li>
<p>Modify the <code>Infinispan</code> CR for each Infinispan cluster to specify the secret name for the <code>encryption.transportKeyStore.secretName</code> and <code>encryption.routerKeyStore.secretName</code> fields.</p>
</li>
<li>
<p>Configure any other fields to encrypt RELAY messages as required and then apply the changes.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
spec:
  replicas: 2
  version: &lt;Infinispan_version&gt;
  expose:
    type: LoadBalancer
  service:
    type: DataGrid
    sites:
      local:
        name: SiteA
        # ...
        encryption:
          protocol: TLSv1.3
          transportKeyStore:
            secretName: transport-tls-secret
            alias: transport
            filename: keystore.p12
          routerKeyStore:
            secretName: router-tls-secret
            alias: router
            filename: keystore.p12
          trustStore:
            secretName: truststore-tls-secret
            filename: truststore.p12
      locations:
        # ...</code></pre>
</div>
</div>
</li>
</ol>
</div>
<div class="sect3">
<h4 id="cross-site-encryption-resources_cross-site"><a class="anchor" href="#cross-site-encryption-resources_cross-site"></a>13.7.1. Resources for configuring cross-site encryption</h4>
<div class="paragraph _abstract">
<p>The following tables provides fields and descriptions for encrypting cross-site connections.</p>
</div>
<table class="tableblock frame-all grid-all stripes-even stretch">
<caption class="title">Table 7. service.type.sites.local.encryption</caption>
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.type.sites.local.encryption.protocol</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the TLS protocol to use for cross-site connections. The default value is <code>TLSv1.2</code> but you can set <code>TLSv1.3</code> if required.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.type.sites.local.encryption.transportKeyStore</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Configures a keystore secret for relay pods.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.type.sites.local.encryption.routerKeyStore</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Configures a keystore secret for router pods.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>service.type.sites.local.encryption.trustStore</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Configures an optional trust store secret for relay pods and router pods.</p></td>
</tr>
</tbody>
</table>
<table class="tableblock frame-all grid-all stripes-even stretch">
<caption class="title">Table 8. service.type.sites.local.encryption.transportKeyStore</caption>
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>secretName</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the secret that contains a keystore that relay pods can use to encrypt and decrypt RELAY messages.
This field is required.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>alias</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Optionally specifies the alias of the certificate in the keystore.
The default value is <code>transport</code>.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>filename</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Optionally specifies the filename of the keystore.
The default value is <code>keystore.p12</code>.</p></td>
</tr>
</tbody>
</table>
<table class="tableblock frame-all grid-all stripes-even stretch">
<caption class="title">Table 9. service.type.sites.local.encryption.routerKeyStore</caption>
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>secretName</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the secret that contains a keystore that router pods can use to encrypt and decrypt RELAY messages.
This field is required.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>alias</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Optionally specifies the alias of the certificate in the keystore.
The default value is <code>router</code>.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>filename</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Optionally specifies the filename of the keystore.
The default value is <code>keystore.p12</code>.</p></td>
</tr>
</tbody>
</table>
<table class="tableblock frame-all grid-all stripes-even stretch">
<caption class="title">Table 10. service.type.sites.local.encryption.trustStore</caption>
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>secretName</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Optionally specifies the secret that contains a trust store to verify public certificates for relay pods and router pods.
The default value is <code>&lt;cluster-name&gt;-truststore-site-tls-secret</code>.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>filename</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Optionally specifies the filename of the trust store.
The default value is <code>truststore.p12</code>.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect3">
<h4 id="cross-site-encryption-secrets_cross-site"><a class="anchor" href="#cross-site-encryption-secrets_cross-site"></a>13.7.2. Cross-site encryption secrets</h4>
<div class="paragraph _abstract">
<p>Cross-site replication encryption secrets add keystores and optional trust stores for securing cross-site connections.</p>
</div>
<div class="listingblock">
<div class="title">Cross-site encryption secrets</div>
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: v1
kind: Secret
metadata:
  name: tls-secret
type: Opaque
stringData:
  password: changeme
  type: pkcs12
data:
  &lt;file-name&gt;: "MIIKDgIBAzCCCdQGCSqGSIb3DQEHA..."</code></pre>
</div>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>stringData.password</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Specifies the password for the keystore or trust store.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>stringData.type</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Optionally specifies the keystore or trust store type. The default value is <code>pkcs12</code>.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>data.&lt;file-name&gt;</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Adds a base64-encoded keystore or trust store.</p></td>
</tr>
</tbody>
</table>
</div>
</div>
<div class="sect2">
<h3 id="configuring-sites-in-clusters_cross-site"><a class="anchor" href="#configuring-sites-in-clusters_cross-site"></a>13.8. Configuring sites in the same Kubernetes cluster</h3>
<div class="paragraph _abstract">
<p>For evaluation and demonstration purposes, you can configure Infinispan to back up between pods in the same Kubernetes cluster.</p>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Using <code>ClusterIP</code> as the expose type for cross-site replication is intended for demonstration purposes only.
It would be appropriate to use this expose type only to perform a temporary proof-of-concept deployment on a laptop or something of that nature.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create an <code>Infinispan</code> CR for each Infinispan cluster.</p>
</li>
<li>
<p>Specify the name of the local site with <code>spec.service.sites.local.name</code>.</p>
</li>
<li>
<p>Set <code>ClusterIP</code> as the value of the <code>spec.service.sites.local.expose.type</code> field.</p>
</li>
<li>
<p>Provide the name of the Infinispan cluster that acts as a backup location with <code>spec.service.sites.locations.clusterName</code>.</p>
</li>
<li>
<p>If both Infinispan clusters have the same name, specify the namespace of the backup location with <code>spec.service.sites.locations.namespace</code>.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: example-clustera
spec:
  replicas: 1
  expose:
    type: LoadBalancer
  service:
    type: DataGrid
    sites:
      local:
        name: SiteA
        expose:
          type: ClusterIP
        maxRelayNodes: 1
      locations:
        - name: SiteB
          clusterName: example-clusterb
          namespace: cluster-namespace</code></pre>
</div>
</div>
</li>
<li>
<p>Configure your <code>Infinispan</code> CRs with any other Data Grid Service resources and then apply the changes.</p>
</li>
<li>
<p>Verify that Infinispan clusters form a cross-site view.</p>
<div class="olist loweralpha">
<ol class="loweralpha" type="a">
<li>
<p>Retrieve the <code>Infinispan</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get infinispan -o yaml</code></pre>
</div>
</div>
</li>
<li>
<p>Check for the <code>type: CrossSiteViewFormed</code> condition.</p>
</li>
</ol>
</div>
</li>
</ol>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="monitoring-services"><a class="anchor" href="#monitoring-services"></a>14. Monitoring Infinispan services</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Infinispan exposes metrics that can be used by Prometheus and Grafana for monitoring and visualizing the cluster state.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>This documentation explains how to set up monitoring on OpenShift Container Platform.
If you&#8217;re working with community Prometheus deployments, you might find these instructions useful as a general guide.
However you should refer to the Prometheus documentation for installation and usage instructions.</p>
</div>
<div class="paragraph">
<p>See the <a href="https://github.com/prometheus-operator/prometheus-operator">Prometheus Operator</a> documentation.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="sect2">
<h3 id="creating-service-monitor_monitor"><a class="anchor" href="#creating-service-monitor_monitor"></a>14.1. Creating a Prometheus service monitor</h3>
<div class="paragraph _abstract">
<p>Infinispan Operator automatically creates a Prometheus <code>ServiceMonitor</code> that scrapes metrics from your Infinispan cluster.</p>
</div>
<div class="paragraph">
<div class="title">Procedure</div>
<p>Enable monitoring for user-defined projects on OpenShift Container Platform.</p>
</div>
<div class="paragraph">
<p>When the Operator detects an <code>Infinispan</code> CR with the monitoring annotation set to <code>true</code>, which is the default, Infinispan Operator does the following:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Creates a <code>ServiceMonitor</code> named <code>&lt;cluster_name&gt;-monitor</code>.</p>
</li>
<li>
<p>Adds the <code>infinispan.org/monitoring: 'true'</code> annotation to your <code>Infinispan</code> CR  metadata, if the value is not already explicitly set:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
  annotations:
    infinispan.org/monitoring: 'true'</code></pre>
</div>
</div>
</li>
</ul>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>To authenticate with Infinispan, Prometheus uses the <code>operator</code> credentials.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="paragraph">
<div class="title">Verification</div>
<p>You can check that Prometheus is scraping Infinispan metrics as follows:</p>
</div>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>In the Kubernetes Dashboard, select the <strong>&lt;/&gt; Developer</strong> perspective and then select <strong>Monitoring</strong>.</p>
</li>
<li>
<p>Open the <strong>Dashboard</strong> tab for the namespace where your Infinispan cluster runs.</p>
</li>
<li>
<p>Open the <strong>Metrics</strong> tab and confirm that you can query Infinispan metrics such as:</p>
<div class="listingblock">
<div class="content">
<pre>vendor_cache_manager_default_cluster_size</pre>
</div>
</div>
</li>
</ol>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://access.redhat.com/documentation/en-us/openshift_container_platform/4.9/html-single/monitoring/index#enabling-monitoring-for-user-defined-projects">Enabling monitoring for user-defined projects</a></p>
</li>
</ul>
</div>
<div class="sect3">
<h4 id="disabling-service-monitor_monitor"><a class="anchor" href="#disabling-service-monitor_monitor"></a>14.1.1. Disabling the Prometheus service monitor</h4>
<div class="paragraph _abstract">
<p>You can disable the <code>ServiceMonitor</code> if you do not want Prometheus to scrape metrics for your Infinispan cluster.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Set <code>'false'</code> as the value for the <code>infinispan.org/monitoring</code> annotation in your <code>Infinispan</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
  annotations:
    infinispan.org/monitoring: 'false'</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
</ol>
</div>
</div>
<div class="sect3">
<h4 id="configuring-service-monitor-target-labels_monitor"><a class="anchor" href="#configuring-service-monitor-target-labels_monitor"></a>14.1.2. Configuring Service Monitor Target Labels</h4>
<div class="paragraph _abstract">
<p>You can configure the generated <code>ServiceMonitor</code> to propagate Service labels to the underlying metrics using the ServiceMonitor <code>spec.targetLabels</code> field.
Use the Service labels to filter and aggregate the metrics collected from the monitored endpoints.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Define labels to apply to your service by setting the <code>infinispan.org/targetLabels</code> annotation in your <code>Infinispan</code> CR.</p>
</li>
<li>
<p>Specify a comma-separated list of the labels required in your metrics using the <code>infinispan.org/serviceMonitorTargetLabels</code> annotation on your <code>Infinispan</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
  annotations:
    infinispan.org/targetLabels: "label1,label2,label3"
    infinispan.org/serviceMonitorTargetLabels: "label1,label2"</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
</ol>
</div>
</div>
</div>
<div class="sect2">
<h3 id="creating-grafana-dashboards_monitor"><a class="anchor" href="#creating-grafana-dashboards_monitor"></a>14.2. Creating Grafana data sources</h3>
<div class="paragraph _abstract">
<p>Create a <code>GrafanaDatasource</code> CR so you can visualize Infinispan metrics in Grafana dashboards.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Have an <code>oc</code> client.</p>
</li>
<li>
<p>Have <code>cluster-admin</code> access to OpenShift Container Platform.</p>
</li>
<li>
<p>Enable monitoring for user-defined projects on OpenShift Container Platform.</p>
</li>
<li>
<p>Install the Grafana Operator from the <strong>alpha</strong> channel and create a <code>Grafana</code> CR.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create a <code>ServiceAccount</code> that lets Grafana read Infinispan metrics from Prometheus.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: v1
kind: ServiceAccount
metadata:
  name: infinispan-monitoring</code></pre>
</div>
</div>
<div class="olist loweralpha">
<ol class="loweralpha" type="a">
<li>
<p>Apply the <code>ServiceAccount</code>.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>oc apply -f service-account.yaml</code></pre>
</div>
</div>
</li>
<li>
<p>Grant <code>cluster-monitoring-view</code> permissions to the <code>ServiceAccount</code>.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>oc adm policy add-cluster-role-to-user cluster-monitoring-view -z infinispan-monitoring</code></pre>
</div>
</div>
</li>
</ol>
</div>
</li>
<li>
<p>Create a Grafana data source.</p>
<div class="olist loweralpha">
<ol class="loweralpha" type="a">
<li>
<p>Retrieve the token for the <code>ServiceAccount</code>.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>oc serviceaccounts get-token infinispan-monitoring</code></pre>
</div>
</div>
</li>
<li>
<p>Define a <code>GrafanaDataSource</code> that includes the token in the <code>spec.datasources.secureJsonData.httpHeaderValue1</code> field, as in the following example:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: integreatly.org/v1alpha1
kind: GrafanaDataSource
metadata:
  name: grafanadatasource
spec:
  name: datasource.yaml
  datasources:
    - access: proxy
      editable: true
      isDefault: true
      jsonData:
        httpHeaderName1: Authorization
        timeInterval: 5s
        tlsSkipVerify: true
      name: Prometheus
      secureJsonData:
        httpHeaderValue1: &gt;-
          Bearer
          eyJhbGciOiJSUzI1NiIsImtpZCI6Imc4O...
      type: prometheus
      url: 'https://thanos-querier.openshift-monitoring.svc.cluster.local:9091'</code></pre>
</div>
</div>
</li>
</ol>
</div>
</li>
<li>
<p>Apply the <code>GrafanaDataSource</code>.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>oc apply -f grafana-datasource.yaml</code></pre>
</div>
</div>
</li>
</ol>
</div>
<div class="paragraph">
<div class="title">Next steps</div>
<p>Enable Grafana dashboards with the Infinispan Operator configuration properties.</p>
</div>
</div>
<div class="sect2">
<h3 id="configuring-grafana-dashboards_monitor"><a class="anchor" href="#configuring-grafana-dashboards_monitor"></a>14.3. Configuring Infinispan dashboards</h3>
<div class="paragraph _abstract">
<p>Infinispan Operator provides global configuration properties that let you configure Grafana dashboards for Infinispan clusters.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>You can modify global configuration properties while Infinispan Operator is running.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Infinispan Operator must watch the namespace where the Grafana Operator is running.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create a <code>ConfigMap</code> named <code>infinispan-operator-config</code> in the Infinispan Operator namespace.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: v1
kind: ConfigMap
metadata:
  name: infinispan-operator-config
data:
  grafana.dashboard.namespace: infinispan
  grafana.dashboard.name: infinispan
  grafana.dashboard.monitoring.key: middleware</code></pre>
</div>
</div>
</li>
<li>
<p>Specify the namespace of your Infinispan cluster with the <code>data.grafana.dashboard.namespace</code> property.</p>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Deleting the value for this property removes the dashboard.
Changing the value moves the dashboard to that namespace.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Specify a name for the dashboard with the <code>data.grafana.dashboard.name</code> property.</p>
</li>
<li>
<p>If necessary, specify a monitoring key with the <code>data.grafana.dashboard.monitoring.key</code> property.</p>
</li>
<li>
<p>Create <code>infinispan-operator-config</code> or update the configuration.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>oc apply -f infinispan-operator-config.yaml</code></pre>
</div>
</div>
</li>
<li>
<p>Open the Grafana UI, which is available at:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>oc get routes grafana-route -o jsonpath=https://"{.spec.host}"</code></pre>
</div>
</div>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="enabling-jmx_monitor"><a class="anchor" href="#enabling-jmx_monitor"></a>14.4. Enabling JMX remote ports for Infinispan clusters</h3>
<div class="paragraph">
<p>Enable JMX remote ports to expose Infinispan MBeans and to integrate Infinispan with external monitoring systems such as Cryostat.</p>
</div>
<div class="paragraph">
<p>When you enable JMX for Infinispan cluster, the following occurs:</p>
</div>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>Each Infinispan server pod exposes an authenticated JMX endpoint on port <code>9999</code> utilizing the "admin" security-realm, which includes the Operator user credentials.</p>
</li>
<li>
<p>The <code>&lt;cluster-name&gt;-admin</code> Service exposes port <code>9999</code>.</p>
</li>
</ol>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
You can enable or disable JMX only during the creation of the <code>Infinispan</code> CR. Once the CR instance is created, you cannot modify the JMX settings.
</td>
</tr>
</table>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Enable JMX in your <code>Infinispan</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
spec:
  jmx:
    enabled: true</code></pre>
</div>
</div>
</li>
<li>
<p>Retrieve the Operator user credentials to authenticate client JMX connections.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get secret infinispan-generated-operator-secret -o jsonpath="{.data.identities\.yaml}" | base64 --decode</code></pre>
</div>
</div>
</li>
</ol>
</div>
<div class="ulist">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://infinispan.org/docs/stable/titles/server/server.html#statistics-jmx">Enabling JMX statistics</a></p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="deploying-cryostat_monitor"><a class="anchor" href="#deploying-cryostat_monitor"></a>14.5. Setting up JFR recordings with Cryostat</h3>
<div class="paragraph">
<p>Enable JDK Flight Recorder (JFR) monitoring for your Infinispan clusters that run on Kubernetes.</p>
</div>
<div class="paragraph">
<div class="title">JFR recordings with Cryostat</div>
<p>JFR provides insights into various aspects of JVM performance to ease cluster inspection and debugging.
Depending on your requirements, you can store and analyze your recordings using the integrated tools provided by Cryostat or export the recordings to an external monitoring application.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Install the Cryostat Operator. You can install the Cryostat Operator in your Kubernetes project by using Operator Lifecycle Manager (OLM).</p>
</li>
<li>
<p>Have JMX enabled on your Infinispan cluster. You must enable JMX before deploying the cluster, as JMX settings cannot be modified after deployment.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create a Cryostat CR in the same namespace as your <code>Infinispan</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: operator.cryostat.io/v1beta1
kind: Cryostat
metadata:
  name: cryostat-sample
spec:
  minimal: false
  enableCertManager: true</code></pre>
</div>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>The Cryostat Operator requires cert-manager for traffic encryption.
If the cert-manager is enabled but not installed, the deployment fails.
For details, see the <a href="https://cryostat.io/get-started/#installing-cryostat-operator">Installing Cryostat Operator</a> guide.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Wait for the <code>Cryostat</code> CR to be ready.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl wait -n &lt;namespace&gt; --for=condition=MainDeploymentAvailable cryostat/cryostat-sample</code></pre>
</div>
</div>
</li>
<li>
<p>Open the Cryostat <code>status.applicationUrl</code>.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl -n &lt;namespace&gt; get cryostat cryostat-sample</code></pre>
</div>
</div>
</li>
<li>
<p>Retrieve the Operator user credentials to authenticate client JMX connections in the Cryostat UI.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl get secret infinispan-generated-operator-secret -o jsonpath="{.data.identities\.yaml}" | base64 --decode</code></pre>
</div>
</div>
</li>
<li>
<p>In the Cryostat UI, navigate to the <strong>Security</strong> menu.</p>
</li>
<li>
<p>In the <strong>Store Credentials</strong> window, click the <strong>Add</strong> button.
The <strong>Store Credentials</strong> window opens.</p>
</li>
<li>
<p>In the <strong>Match Expression</strong> filed, enter match expression details in the following format:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight"><code>target.labels['infinispan_cr'] == '&lt;cluster_name&gt;'</code></pre>
</div>
</div>
</li>
</ol>
</div>
<div class="ulist">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://cryostat.io/get-started/#installing-cryostat-operator">Installing Cryostat Operator</a></p>
</li>
<li>
<p><a href="https://cryostat.io/guides/#store-credentials">Configuring Cryostat Credentials</a></p>
</li>
<li>
<p><a href="https://infinispan.org/docs/infinispan-operator/main/operator.html#enabling-jmx_monitor">Enabling JMX remote ports for Infinispan clusters</a></p>
</li>
</ul>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="anti-affinity"><a class="anchor" href="#anti-affinity"></a>15. Guaranteeing availability with anti-affinity</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Kubernetes includes anti-affinity capabilities that protect workloads from single points of failure.</p>
</div>
<div class="sect2">
<h3 id="anti-affinity_availability"><a class="anchor" href="#anti-affinity_availability"></a>15.1. Anti-affinity strategies</h3>
<div class="paragraph _abstract">
<p>Each Infinispan node in a cluster runs in a pod that runs on an Kubernetes node in a cluster.
Each Red Hat OpenShift node runs on a physical host system.
Anti-affinity works by distributing Infinispan nodes across Kubernetes nodes, ensuring that your Infinispan clusters remain available even if hardware failures occur.</p>
</div>
<div class="paragraph">
<p>Infinispan Operator offers two anti-affinity strategies:</p>
</div>
<div class="dlist">
<dl>
<dt class="hdlist1"><code>kubernetes.io/hostname</code></dt>
<dd>
<p>Infinispan replica pods are scheduled on different Kubernetes nodes.</p>
</dd>
<dt class="hdlist1"><code>topology.kubernetes.io/zone</code></dt>
<dd>
<p>Infinispan replica pods are scheduled across multiple zones.</p>
</dd>
</dl>
</div>
<h4 id="_fault_tolerance" class="discrete">Fault tolerance</h4>
<div class="paragraph">
<p>Anti-affinity strategies guarantee cluster availability in different ways.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>The equations in the following section apply only if the number of Kubernetes nodes or zones is greater than the number of Infinispan nodes.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="paragraph">
<div class="title">Scheduling pods on different Kubernetes nodes</div>
<p>Provides tolerance of <code>x</code> node failures for the following types of cache:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Replicated: <code>x = spec.replicas - 1</code></p>
</li>
<li>
<p>Distributed: <code>x = num_owners - 1</code></p>
</li>
</ul>
</div>
<div class="paragraph">
<div class="title">Scheduling pods across multiple zones</div>
<p>Provides tolerance of <code>x</code> zone failures when <code>x</code> zones exist for the following types of cache:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Replicated: <code>x = spec.replicas - 1</code></p>
</li>
<li>
<p>Distributed: <code>x = num_owners - 1</code></p>
</li>
</ul>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="dlist">
<dl>
<dt class="hdlist1"><code>spec.replicas</code></dt>
<dd>
<p>Defines the number of pods in each Infinispan cluster.</p>
</dd>
<dt class="hdlist1"><code>num_owners</code></dt>
<dd>
<p>Is the cache configuration attribute that defines the number of replicas for each entry in the cache.</p>
</dd>
</dl>
</div>
</td>
</tr>
</table>
</div>
</div>
<div class="sect2">
<h3 id="configuring_anti_affinity-availability"><a class="anchor" href="#configuring_anti_affinity-availability"></a>15.2. Configuring anti-affinity</h3>
<div class="paragraph _abstract">
<p>Specify where Kubernetes schedules pods for your Infinispan clusters to ensure availability.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Add the <code>spec.affinity</code> block to your <code>Infinispan</code> CR.</p>
</li>
<li>
<p>Configure anti-affinity strategies as necessary.</p>
</li>
<li>
<p>Apply your <code>Infinispan</code> CR.</p>
</li>
</ol>
</div>
<div class="sect3">
<h4 id="anti-affinity-strategies_availability"><a class="anchor" href="#anti-affinity-strategies_availability"></a>15.2.1. Anti-affinity strategy configurations</h4>
<div class="paragraph _abstract">
<p>Configure anti-affinity strategies in your <code>Infinispan</code> CR to control where Kubernetes schedules Infinispan replica pods.</p>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Topology keys</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>topologyKey: "topology.kubernetes.io/zone"</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Schedules Infinispan replica pods across multiple zones.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>topologyKey: "kubernetes.io/hostname"</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Schedules Infinispan replica pods on different Kubernetes nodes.</p></td>
</tr>
</tbody>
</table>
<h5 id="_schedule_pods_on_different_kubernetes_nodes" class="discrete">Schedule pods on different Kubernetes nodes</h5>
<div class="paragraph">
<p>The following is the anti-affinity strategy that Infinispan Operator uses if you do not configure the <code>spec.affinity</code> field in your <code>Infinispan</code> CR:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">spec:
  affinity:
    podAntiAffinity:
      preferredDuringSchedulingIgnoredDuringExecution:
      - weight: 100
        podAffinityTerm:
          labelSelector:
            matchLabels:
              app: infinispan-pod
              clusterName: &lt;cluster_name&gt;
              infinispan_cr: &lt;cluster_name&gt;
          topologyKey: "kubernetes.io/hostname"</code></pre>
</div>
</div>
<h6 id="_requiring_different_nodes" class="discrete">Requiring different nodes</h6>
<div class="paragraph">
<p>In the following example, Kubernetes does not schedule Infinispan pods if different nodes are not available:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">spec:
  affinity:
    podAntiAffinity:
      requiredDuringSchedulingIgnoredDuringExecution:
      - labelSelector:
          matchLabels:
            app: infinispan-pod
            clusterName: &lt;cluster_name&gt;
            infinispan_cr: &lt;cluster_name&gt;
        topologyKey: "topology.kubernetes.io/hostname"</code></pre>
</div>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>To ensure that you can schedule Infinispan replica pods on different Kubernetes nodes, the number of Kubernetes nodes available must be greater than the value of <code>spec.replicas</code>.</p>
</div>
</td>
</tr>
</table>
</div>
<h5 id="_schedule_pods_across_multiple_kubernetes_zones" class="discrete">Schedule pods across multiple Kubernetes zones</h5>
<div class="paragraph">
<p>The following example prefers multiple zones when scheduling pods but schedules Infinispan replica pods on different Kubernetes nodes if it is not possible to schedule across zones:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">spec:
  affinity:
    podAntiAffinity:
      preferredDuringSchedulingIgnoredDuringExecution:
      - weight: 100
        podAffinityTerm:
          labelSelector:
            matchLabels:
              app: infinispan-pod
              clusterName: &lt;cluster_name&gt;
              infinispan_cr: &lt;cluster_name&gt;
          topologyKey: "topology.kubernetes.io/zone"
      - weight: 90
        podAffinityTerm:
          labelSelector:
            matchLabels:
              app: infinispan-pod
              clusterName: &lt;cluster_name&gt;
              infinispan_cr: &lt;cluster_name&gt;
          topologyKey: "kubernetes.io/hostname"</code></pre>
</div>
</div>
<h6 id="_requiring_multiple_zones" class="discrete">Requiring multiple zones</h6>
<div class="paragraph">
<p>The following example uses the zone strategy only when scheduling Infinispan replica pods:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">spec:
  affinity:
    podAntiAffinity:
      requiredDuringSchedulingIgnoredDuringExecution:
      - labelSelector:
          matchLabels:
            app: infinispan-pod
            clusterName: &lt;cluster_name&gt;
            infinispan_cr: &lt;cluster_name&gt;
        topologyKey: "topology.kubernetes.io/zone"</code></pre>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="creating-caches"><a class="anchor" href="#creating-caches"></a>16. Creating caches with Infinispan Operator</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Use <code>Cache</code> CRs to add cache configuration with Infinispan Operator and control how Infinispan stores your data.</p>
</div>
<div class="sect2">
<h3 id="caches_creating-caches"><a class="anchor" href="#caches_creating-caches"></a>16.1. Infinispan caches</h3>
<div class="paragraph _abstract">
<p>Cache configuration defines the characteristics and features of the data store and must be valid with the Infinispan schema.
Infinispan recommends creating standalone files in XML or JSON format that define your cache configuration.
You should separate Infinispan configuration from application code for easier validation and to avoid the situation where you need to maintain XML snippets in Java or some other client language.</p>
</div>
<div class="paragraph">
<p>To create caches with Infinispan clusters running on Kubernetes, you should:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Use <code>Cache</code> CR as the mechanism for creating caches through the Kubernetes front end.</p>
</li>
<li>
<p>Use <code>Batch</code> CR to create multiple caches at a time from standalone configuration files.</p>
</li>
<li>
<p>Access Infinispan Console and create caches in XML or JSON format.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>You can use Hot Rod or HTTP clients but Infinispan recommends <code>Cache</code> CR or <code>Batch</code> CR unless your specific use case requires programmatic remote cache creation.</p>
</div>
<h4 id="_cache_crs" class="discrete">Cache CRs</h4>
<div class="ulist">
<ul>
<li>
<p><code>Cache</code> CRs apply to Data Grid Service pods only.</p>
</li>
<li>
<p>Each <code>Cache</code> CR corresponds to a single cache on the Infinispan cluster.</p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="creating-caches_creating-caches"><a class="anchor" href="#creating-caches_creating-caches"></a>16.2. Creating caches with the Cache CR</h3>
<div class="paragraph _abstract">
<p>Complete the following steps to create caches on Data Grid Service clusters using valid configuration in XML or YAML format.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create a <code>Cache</code> CR with a unique value in the <code>metadata.name</code> field.</p>
</li>
<li>
<p>Specify the target Infinispan cluster with the <code>spec.clusterName</code> field.</p>
</li>
<li>
<p>Name your cache with the <code>spec.name</code> field.</p>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>The <code>name</code> attribute in the cache configuration does not take effect.
If you do not specify a name with the <code>spec.name</code> field then the cache uses the value of the <code>metadata.name</code> field.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Add a cache configuration with the <code>spec.template</code> field.</p>
</li>
<li>
<p>Apply the <code>Cache</code> CR, for example:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl apply -f mycache.yaml
cache.infinispan.org/mycachedefinition created</code></pre>
</div>
</div>
</li>
</ol>
</div>
<h4 id="_cache_cr_examples" class="discrete">Cache CR examples</h4>
<div class="listingblock">
<div class="title">XML</div>
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: infinispan.org/v2alpha1
kind: Cache
metadata:
  name: mycachedefinition
spec:
  clusterName: infinispan
  name: myXMLcache
  template: &lt;distributed-cache mode="SYNC" statistics="true"&gt;&lt;encoding media-type="application/x-protostream"/&gt;&lt;persistence&gt;&lt;file-store/&gt;&lt;/persistence&gt;&lt;/distributed-cache&gt;</code></pre>
</div>
</div>
<div class="listingblock">
<div class="title">YAML</div>
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: infinispan.org/v2alpha1
kind: Cache
metadata:
  name: mycachedefinition
spec:
  clusterName: infinispan
  name: myYAMLcache
  template: |-
    distributedCache:
      mode: "SYNC"
      owners: "2"
      statistics: "true"
      encoding:
        mediaType: "application/x-protostream"
      persistence:
        fileStore: ~</code></pre>
</div>
</div>
</div>
<div class="sect2">
<h3 id="updating_cache_creating-caches"><a class="anchor" href="#updating_cache_creating-caches"></a>16.3. Updating caches with the Cache CR</h3>
<div class="paragraph">
<p>You can control how Infinispan Operator handles modifications to the cache configuration in the <code>Cache</code> CR.</p>
</div>
<div class="paragraph">
<p>Infinispan Operator attempts to update the cache configuration on the Infinispan Server at runtime.
If the update fails, Infinispan Operator uses one of the following strategies:</p>
</div>
<div class="dlist">
<dl>
<dt class="hdlist1">retain strategy</dt>
<dd>
<p>The Operator updates the status of the <code>Cache</code> CR to <code>Ready=False</code>.
You can manually delete the <code>Cache</code> CR and create a new cache configuration. This is the default strategy.</p>
</dd>
<dt class="hdlist1">recreate strategy</dt>
<dd>
<p>The Operator deletes the cache from the Infinispan cluster and creates a new cache with the latest <code>spec.template</code> value from the <code>Cache</code> CR.</p>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
Configure the <code>recreate</code> strategy only if your deployment can tolerate data loss.
</td>
</tr>
</table>
</div>
</dd>
</dl>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Have a valid <code>Cache</code> CR.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Use the <code>spec.updates.strategy</code> field to set the <code>Cache</code> CR strategy.</p>
<div class="listingblock">
<div class="title">mycache.yaml</div>
<div class="content">
<pre class="highlight"><code class="language-yaml" data-lang="yaml">spec:
  updates:
    strategy: recreate</code></pre>
</div>
</div>
</li>
<li>
<p>Apply changes to the <code>Cache</code> CR, for example:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>oc apply -f mycache.yaml</code></pre>
</div>
</div>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="adding-cache-stores_creating-caches"><a class="anchor" href="#adding-cache-stores_creating-caches"></a>16.4. Adding persistent cache stores</h3>
<div class="paragraph _abstract">
<p>You can add persistent cache stores to Data Grid Service pods to save data to the persistent volume.</p>
</div>
<div class="paragraph">
<p>Infinispan creates a Single File cache store, <code>.dat</code> file, in the <code>/opt/infinispan/server/data</code> directory.</p>
</div>
<div class="ulist">
<div class="title">Procedure</div>
<ul>
<li>
<p>Add the <code>&lt;file-store/&gt;</code> element to the <code>persistence</code> configuration in your Infinispan cache, as in the following example:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-xml" data-lang="xml">&lt;distributed-cache name="persistent-cache" mode="SYNC"&gt;
  &lt;encoding media-type="application/x-protostream"/&gt;
  &lt;persistence&gt;
    &lt;file-store/&gt;
  &lt;/persistence&gt;
&lt;/distributed-cache&gt;</code></pre>
</div>
</div>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="creating-caches-cacheservice_creating-caches"><a class="anchor" href="#creating-caches-cacheservice_creating-caches"></a>16.5. Adding caches to Cache Service pods</h3>
<div class="paragraph _abstract">
<p>Cache Service pods include a default cache configuration with recommended
settings. This default cache lets you start using Infinispan without the need
to create caches.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Because the default cache provides recommended settings, you should create caches only as copies of the default.
If you want multiple custom caches you should create Data Grid Service pods instead of Cache Service pods.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="ulist">
<div class="title">Procedure</div>
<ul>
<li>
<p>Access the Infinispan Console and provide a copy of the default configuration in XML or JSON format.</p>
</li>
<li>
<p>Use the Infinispan CLI to create a copy from the default cache as follows:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>[//containers/default]&gt; create cache --template=default mycache</code></pre>
</div>
</div>
</li>
</ul>
</div>
<div class="sect3">
<h4 id="default-cache-service-config_creating-caches"><a class="anchor" href="#default-cache-service-config_creating-caches"></a>16.5.1. Default cache configuration</h4>
<div class="paragraph _abstract">
<p>This topic describes default cache configuration for Cache Service pods.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-xml" data-lang="xml">&lt;distributed-cache name="default"
                   mode="SYNC"
                   owners="2"&gt;
  &lt;memory storage="OFF_HEAP"
          max-size="&lt;maximum_size_in_bytes&gt;"
          when-full="REMOVE" /&gt;
  &lt;partition-handling when-split="ALLOW_READ_WRITES"
                      merge-policy="REMOVE_ALL"/&gt;
&lt;/distributed-cache&gt;</code></pre>
</div>
</div>
<div class="paragraph">
<p>Default caches:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Use synchronous distribution to store data across the cluster.</p>
</li>
<li>
<p>Create two replicas of each entry on the cluster.</p>
</li>
<li>
<p>Store cache entries as bytes in native memory (off-heap).</p>
</li>
<li>
<p>Define the maximum size for the data container in bytes. Infinispan Operator calculates the maximum size when it creates pods.</p>
</li>
<li>
<p>Evict cache entries to control the size of the data container. You can enable automatic scaling so that Infinispan Operator adds pods when memory usage increases instead of removing entries.</p>
</li>
<li>
<p>Use a conflict resolution strategy that allows read and write operations for cache entries, even if segment owners are in different partitions.</p>
</li>
<li>
<p>Specify a merge policy that removes entries from the cache when Infinispan detects conflicts.</p>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="batch-cr"><a class="anchor" href="#batch-cr"></a>17. Running batch operations</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Infinispan Operator provides a <code>Batch</code> CR that lets you create Infinispan resources in bulk.
<code>Batch</code> CR uses the Infinispan command line interface (CLI) in batch mode to carry out sequences of operations.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Modifying a <code>Batch</code> CR instance has no effect.
Batch operations are "one-time" events that modify Infinispan resources.
To update <code>.spec</code> fields for the CR, or when a batch operation fails, you must create a new instance of the <code>Batch</code> CR.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="sect2">
<h3 id="batching-inline_batch"><a class="anchor" href="#batching-inline_batch"></a>17.1. Running inline batch operations</h3>
<div class="paragraph _abstract">
<p>Include your batch operations directly in a <code>Batch</code> CR if they do not require separate configuration artifacts.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create a <code>Batch</code> CR.</p>
<div class="olist loweralpha">
<ol class="loweralpha" type="a">
<li>
<p>Specify the name of the Infinispan cluster where you want the batch operations to run as the value of the <code>spec.cluster</code> field.</p>
</li>
<li>
<p>Add each CLI command to run on a line in the <code>spec.config</code> field.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v2alpha1
kind: Batch
metadata:
  name: mybatch
spec:
  cluster: infinispan
  config: |
    create cache --template=org.infinispan.DIST_SYNC mycache
    put --cache=mycache hello world
    put --cache=mycache hola mundo</code></pre>
</div>
</div>
</li>
</ol>
</div>
</li>
<li>
<p>Apply your <code>Batch</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl apply -f mybatch.yaml</code></pre>
</div>
</div>
</li>
<li>
<p>Wait for the <code>Batch</code> CR to succeed.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl wait --for=jsonpath='{.status.phase}'=Succeeded Batch/mybatch</code></pre>
</div>
</div>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="batching-create-configmap_batch"><a class="anchor" href="#batching-create-configmap_batch"></a>17.2. Creating ConfigMaps for batch operations</h3>
<div class="paragraph _abstract">
<p>Create a <code>ConfigMap</code> so that additional files, such as Infinispan cache configuration, are available for batch operations.</p>
</div>
<div class="paragraph">
<div class="title">Prerequisites</div>
<p>For demonstration purposes, you should add some configuration artifacts to your host filesystem before you start the procedure:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Create a <code>/tmp/mybatch</code> directory where you can add some files.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>mkdir -p /tmp/mybatch</code></pre>
</div>
</div>
</li>
<li>
<p>Create a Infinispan cache configuration.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>cat &gt; /tmp/mybatch/mycache.xml&lt;&lt;EOF
&lt;distributed-cache name="mycache" mode="SYNC"&gt;
  &lt;encoding media-type="application/x-protostream"/&gt;
  &lt;memory max-count="1000000" when-full="REMOVE"/&gt;
&lt;/distributed-cache&gt;
EOF</code></pre>
</div>
</div>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create a <code>batch</code> file that contains all commands you want to run.</p>
<div class="paragraph">
<p>For example, the following <code>batch</code> file creates a cache named "mycache" and adds two entries to it:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">create cache mycache --file=/etc/batch/mycache.xml
put --cache=mycache hello world
put --cache=mycache hola mundo</code></pre>
</div>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>The <code>ConfigMap</code> is mounted in Infinispan pods at <code>/etc/batch</code>.
You must prepend all <code>--file=</code> directives in your batch operations with that path.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Ensure all configuration artifacts that your batch operations require are in the same directory as the <code>batch</code> file.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>ls /tmp/mybatch

batch
mycache.xml</code></pre>
</div>
</div>
</li>
<li>
<p>Create a <code>ConfigMap</code> from the directory.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl create configmap mybatch-config-map --from-file=/tmp/mybatch</code></pre>
</div>
</div>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="batching-configmap_batch"><a class="anchor" href="#batching-configmap_batch"></a>17.3. Running batch operations with ConfigMaps</h3>
<div class="paragraph _abstract">
<p>Run batch operations that include configuration artifacts.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Create a <code>ConfigMap</code> that contains any files your batch operations require.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Create a <code>Batch</code> CR that specifies the name of a Infinispan cluster as the value of the <code>spec.cluster</code> field.</p>
</li>
<li>
<p>Set the name of the <code>ConfigMap</code> that contains your <code>batch</code> file and configuration artifacts with the <code>spec.configMap</code> field.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">cat &gt; mybatch.yaml&lt;&lt;EOF
apiVersion: infinispan.org/v2alpha1
kind: Batch
metadata:
  name: mybatch
spec:
  cluster: infinispan
  configMap: mybatch-config-map
EOF</code></pre>
</div>
</div>
</li>
<li>
<p>Apply your <code>Batch</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl apply -f mybatch.yaml</code></pre>
</div>
</div>
</li>
<li>
<p>Wait for the <code>Batch</code> CR to succeed.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl wait --for=jsonpath='{.status.phase}'=Succeeded Batch/mybatch</code></pre>
</div>
</div>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="batch-status_batch"><a class="anchor" href="#batch-status_batch"></a>17.4. Batch status messages</h3>
<div class="paragraph _abstract">
<p>Verify and troubleshoot batch operations with the <code>status.Phase</code> field in the <code>Batch</code> CR.</p>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Phase</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>Succeeded</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">All batch operations have completed successfully.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>Initializing</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Batch operations are queued and resources are initializing.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>Initialized</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Batch operations are ready to start.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>Running</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Batch operations are in progress.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>Failed</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">One or more batch operations were not successful.</p></td>
</tr>
</tbody>
</table>
<div class="paragraph">
<div class="title">Failed operations</div>
<p>Batch operations are not atomic.
If a command in a batch script fails, it does not affect the other operations or cause them to rollback.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>If your batch operations have any server or syntax errors, you can view log messages in the <code>Batch</code> CR in the <code>status.Reason</code> field.</p>
</div>
</td>
</tr>
</table>
</div>
</div>
<div class="sect2">
<h3 id="batch-operations_batch"><a class="anchor" href="#batch-operations_batch"></a>17.5. Example batch operations</h3>
<div class="paragraph _abstract">
<p>Use these example batch operations as starting points for creating and modifying Infinispan resources with the <code>Batch</code> CR.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>You can pass configuration files to Infinispan Operator only via a <code>ConfigMap</code>.</p>
</div>
<div class="paragraph">
<p>The <code>ConfigMap</code> is mounted in Infinispan pods at <code>/etc/batch</code> so you must prepend all <code>--file=</code> directives with that path.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="sect3">
<h4 id="_caches"><a class="anchor" href="#_caches"></a>17.5.1. Caches</h4>
<div class="ulist">
<ul>
<li>
<p>Create multiple caches from configuration files.</p>
</li>
</ul>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-sh" data-lang="sh">echo "creating caches..."
create cache sessions --file=/etc/batch/infinispan-prod-sessions.xml
create cache tokens --file=/etc/batch/infinispan-prod-tokens.xml
create cache people --file=/etc/batch/infinispan-prod-people.xml
create cache books --file=/etc/batch/infinispan-prod-books.xml
create cache authors --file=/etc/batch/infinispan-prod-authors.xml
echo "list caches in the cluster"
ls caches</code></pre>
</div>
</div>
<div class="ulist">
<ul>
<li>
<p>Create a template from a file and then create caches from the template.</p>
</li>
</ul>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-sh" data-lang="sh">echo "creating caches..."
create cache mytemplate --file=/etc/batch/mycache.xml
create cache sessions --template=mytemplate
create cache tokens --template=mytemplate
echo "list caches in the cluster"
ls caches</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_counters"><a class="anchor" href="#_counters"></a>17.5.2. Counters</h4>
<div class="paragraph">
<p>Use the <code>Batch</code> CR to create multiple counters that can increment and decrement to record the count of objects.</p>
</div>
<div class="paragraph">
<p>You can use counters to generate identifiers, act as rate limiters, or track the number of times a resource is accessed.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-sh" data-lang="sh">echo "creating counters..."
create counter --concurrency-level=1 --initial-value=5 --storage=PERSISTENT --type=weak mycounter1
create counter --initial-value=3 --storage=PERSISTENT --type=strong mycounter2
create counter --initial-value=13 --storage=PERSISTENT --type=strong --upper-bound=10 mycounter3
echo "list counters in the cluster"
ls counters</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_protobuf_schema"><a class="anchor" href="#_protobuf_schema"></a>17.5.3. Protobuf schema</h4>
<div class="paragraph">
<p>Register Protobuf schema to query values in caches.
Protobuf schema (<code>.proto</code> files) provide metadata about custom entities and controls field indexing.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-sh" data-lang="sh">echo "creating schema..."
schema --upload=person.proto person.proto
schema --upload=book.proto book.proto
schema --upload=author.proto book.proto
echo "list Protobuf schema"
ls schemas</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="_tasks"><a class="anchor" href="#_tasks"></a>17.5.4. Tasks</h4>
<div class="paragraph">
<p>Upload tasks that implement <code>org.infinispan.tasks.ServerTask</code> or scripts that are compatible with the <code>javax.script</code> scripting API.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-sh" data-lang="sh">echo "creating tasks..."
task upload --file=/etc/batch/myfirstscript.js myfirstscript
task upload --file=/etc/batch/mysecondscript.js mysecondscript
task upload --file=/etc/batch/mythirdscript.js mythirdscript
echo "list tasks"
ls tasks</code></pre>
</div>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://infinispan.org/docs/stable/titles/cli/cli.html">Infinispan CLI Guide</a></p>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="backing-up-restoring"><a class="anchor" href="#backing-up-restoring"></a>18. Backing up and restoring Infinispan clusters</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Infinispan Operator lets you back up and restore Infinispan cluster state for disaster recovery and to migrate Infinispan resources between clusters.</p>
</div>
<div class="sect2">
<h3 id="backup-restore_backup-restore"><a class="anchor" href="#backup-restore_backup-restore"></a>18.1. Backup and Restore CRs</h3>
<div class="paragraph _abstract">
<p><code>Backup</code> and <code>Restore</code> CRs save in-memory data at runtime so you can easily recreate Infinispan clusters.</p>
</div>
<div class="paragraph">
<p>Applying a <code>Backup</code> or <code>Restore</code> CR creates a new pod that joins the Infinispan cluster as a zero-capacity member, which means it does not require cluster rebalancing or state transfer to join.</p>
</div>
<div class="paragraph">
<p>For backup operations, the pod iterates over cache entries and other resources and creates an archive, a <code>.zip</code> file, in the <code>/opt/infinispan/backups</code> directory on the persistent volume (PV).</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Performing backups does not significantly impact performance because the other pods in the Infinispan cluster only need to respond to the backup pod as it iterates over cache entries.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>For restore operations, the pod retrieves Infinispan resources from the archive on the PV and applies them to the Infinispan cluster.</p>
</div>
<div class="paragraph">
<p>When either the backup or restore operation completes, the pod leaves the cluster and is terminated.</p>
</div>
<div class="paragraph">
<div class="title">Reconciliation</div>
<p>Infinispan Operator does not reconcile <code>Backup</code> and <code>Restore</code> CRs which mean that backup and restore operations are "one-time" events.</p>
</div>
<div class="paragraph">
<p>Modifying an existing <code>Backup</code> or <code>Restore</code> CR instance does not perform an operation or have any effect.
If you want to update <code>.spec</code> fields, you must create a new instance of the <code>Backup</code> or <code>Restore</code> CR.</p>
</div>
</div>
<div class="sect2">
<h3 id="backing-up-clusters_backup-restore"><a class="anchor" href="#backing-up-clusters_backup-restore"></a>18.2. Backing up Infinispan clusters</h3>
<div class="paragraph _abstract">
<p>Create a backup file that stores Infinispan cluster state to a persistent volume.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Create an <code>Infinispan</code> CR with <code>spec.service.type: DataGrid</code>.</p>
</li>
<li>
<p>Ensure there are no active client connections to the Infinispan cluster.</p>
<div class="paragraph">
<p>Infinispan backups do not provide snapshot isolation and data modifications are not written to the archive after the cache is backed up.<br>
To archive the exact state of the cluster, you should always disconnect any clients before you back it up.</p>
</div>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Name the <code>Backup</code> CR with the <code>metadata.name</code> field.</p>
</li>
<li>
<p>Specify the Infinispan cluster to backup with the <code>spec.cluster</code> field.</p>
</li>
<li>
<p>Configure the persistent volume claim (PVC) that adds the backup archive to the persistent volume (PV) with the <code>spec.volume.storage</code> and <code>spec.volume.storage.storageClassName</code> fields.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: infinispan.org/v2alpha1
kind: Backup
metadata:
  name: my-backup
spec:
  cluster: source-cluster
  volume:
    storage: 1Gi
    storageClassName: my-storage-class</code></pre>
</div>
</div>
</li>
<li>
<p>Optionally include <code>spec.resources</code> fields to specify which Infinispan resources you want to back up.</p>
<div class="paragraph">
<p>If you do not include any <code>spec.resources</code> fields, the <code>Backup</code> CR creates an archive that contains all Infinispan resources.
If you do specify <code>spec.resources</code> fields, the <code>Backup</code> CR creates an archive that contains those resources only.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  ...
  resources:
    templates:
      - distributed-sync-prod
      - distributed-sync-dev
    caches:
      - cache-one
      - cache-two
    counters:
      - counter-name
    protoSchemas:
      - authors.proto
      - books.proto
    tasks:
      - wordStream.js</code></pre>
</div>
</div>
<div class="paragraph">
<p>You can also use the <code>*</code> wildcard character as in the following example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  ...
  resources:
    caches:
      - "*"
    protoSchemas:
      - "*"</code></pre>
</div>
</div>
</li>
<li>
<p>Apply your <code>Backup</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl apply -f my-backup.yaml</code></pre>
</div>
</div>
</li>
</ol>
</div>
<div class="olist arabic">
<div class="title">Verification</div>
<ol class="arabic">
<li>
<p>Check that the <code>status.phase</code> field has a status of <code>Succeeded</code> in the <code>Backup</code> CR and that Infinispan logs have the following message:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>ISPN005044: Backup file created 'my-backup.zip'</code></pre>
</div>
</div>
</li>
<li>
<p>Run the following command to check that the backup is successfully created:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl describe Backup my-backup -n namespace</code></pre>
</div>
</div>
</li>
</ol>
</div>
</div>
<div class="sect2">
<h3 id="restoring-clusters_backup-restore"><a class="anchor" href="#restoring-clusters_backup-restore"></a>18.3. Restoring Infinispan clusters</h3>
<div class="paragraph _abstract">
<p>Restore Infinispan cluster state from a backup archive.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Create a <code>Backup</code> CR on a source cluster.</p>
</li>
<li>
<p>Create a target Infinispan cluster of Data Grid Service pods.</p>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>If you restore an existing cache, the operation overwrites the data in the cache but not the cache configuration.</p>
</div>
<div class="paragraph">
<p>For example, you back up a distributed cache named <code>mycache</code> on the source cluster.
You then restore <code>mycache</code> on a target cluster where it already exists as a replicated cache.
In this case, the data from the source cluster is restored and <code>mycache</code> continues to have a replicated configuration on the target cluster.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Ensure there are no active client connections to the target Infinispan cluster you want to restore.</p>
<div class="paragraph">
<p>Cache entries that you restore from a backup can overwrite more recent cache entries.<br>
For example, a client performs a <code>cache.put(k=2)</code> operation and you then restore a backup that contains <code>k=1</code>.</p>
</div>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Name the <code>Restore</code> CR with the <code>metadata.name</code> field.</p>
</li>
<li>
<p>Specify a <code>Backup</code> CR to use with the <code>spec.backup</code> field.</p>
</li>
<li>
<p>Specify the Infinispan cluster to restore with the <code>spec.cluster</code> field.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>apiVersion: infinispan.org/v2alpha1
kind: Restore
metadata:
  name: my-restore
spec:
  backup: my-backup
  cluster: target-cluster</code></pre>
</div>
</div>
</li>
<li>
<p>Optionally add the <code>spec.resources</code> field to restore specific resources only.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>spec:
  ...
  resources:
    templates:
      - distributed-sync-prod
      - distributed-sync-dev
    caches:
      - cache-one
      - cache-two
    counters:
      - counter-name
    protoSchemas:
      - authors.proto
      - books.proto
    tasks:
      - wordStream.js</code></pre>
</div>
</div>
</li>
<li>
<p>Apply your <code>Restore</code> CR.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl apply -f my-restore.yaml</code></pre>
</div>
</div>
</li>
</ol>
</div>
<div class="ulist">
<div class="title">Verification</div>
<ul>
<li>
<p>Check that the <code>status.phase</code> field has a status of <code>Succeeded</code> in the <code>Restore</code> CR and that Infinispan logs have the following message:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>ISPN005045: Restore 'my-backup' complete</code></pre>
</div>
</div>
</li>
</ul>
</div>
<div class="paragraph">
<p>You should then open the Infinispan Console or establish a CLI connection to verify data and Infinispan resources are restored as expected.</p>
</div>
</div>
<div class="sect2">
<h3 id="backup-restore-status_backup-restore"><a class="anchor" href="#backup-restore-status_backup-restore"></a>18.4. Backup and restore status</h3>
<div class="paragraph _abstract">
<p><code>Backup</code> and <code>Restore</code> CRs include a <code>status.phase</code> field that provides the status for each phase of the operation.</p>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Status</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>Initializing</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">The system has accepted the request and the controller is preparing the underlying resources to create the pod.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>Initialized</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">The controller has prepared all underlying resources successfully.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>Running</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">The pod is created and the operation is in progress on the Infinispan cluster.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>Succeeded</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">The operation has completed successfully on the Infinispan cluster and the pod is terminated.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>Failed</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">The operation did not successfully complete and the pod is terminated.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>Unknown</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">The controller cannot obtain the status of the pod or determine the state of the operation. This condition typically indicates a temporary communication error with the pod.</p></td>
</tr>
</tbody>
</table>
<div class="sect3">
<h4 id="handling-failed-backups_backup-restore"><a class="anchor" href="#handling-failed-backups_backup-restore"></a>18.4.1. Handling failed backup and restore operations</h4>
<div class="paragraph _abstract">
<p>If the <code>status.phase</code> field of the <code>Backup</code> or <code>Restore</code> CR is <code>Failed</code>, you should examine pod logs to determine the root cause before you attempt the operation again.</p>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Examine the logs for the pod that performed the failed operation.</p>
<div class="paragraph">
<p>Pods are terminated but remain available until you delete the <code>Backup</code> or <code>Restore</code> CR.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl logs &lt;backup|restore_pod_name&gt;</code></pre>
</div>
</div>
</li>
<li>
<p>Resolve any error conditions or other causes of failure as indicated by the pod logs.</p>
</li>
<li>
<p>Create a new instance of the <code>Backup</code> or <code>Restore</code> CR and attempt the operation again.</p>
</li>
</ol>
</div>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="deploying-code"><a class="anchor" href="#deploying-code"></a>19. Deploying custom code to Infinispan</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Add custom code, such as scripts and event listeners, to your Infinispan clusters.</p>
</div>
<div class="paragraph">
<p>Before you can deploy custom code to Infinispan clusters, you need to make it available.
To do this you can copy artifacts from a persistent volume (PV), download artifacts from an HTTP or FTP server, or use both methods.</p>
</div>
<div class="sect2">
<h3 id="copying-code_custom-code"><a class="anchor" href="#copying-code_custom-code"></a>19.1. Copying code artifacts to Infinispan clusters</h3>
<div class="paragraph _abstract">
<p>Adding your artifacts to a persistent volume (PV) and then copy them to Infinispan pods.</p>
</div>
<div class="paragraph">
<p>This procedure explains how to use a temporary pod that mounts a persistent volume claim (PVC) that:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Lets you add code artifacts to the PV (perform a write operation).</p>
</li>
<li>
<p>Allows Infinispan pods to load code artifacts from the PV (perform a read operation).</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>To perform these read and write operations, you need certain PV access modes.
However, support for different PVC access modes is platform dependent.</p>
</div>
<div class="paragraph">
<p>It is beyond the scope of this document to provide instructions for creating PVCs with different platforms.
For simplicity, the following procedure shows a PVC with the <code>ReadWriteMany</code> access mode.</p>
</div>
<div class="paragraph">
<p>In some cases only the <code>ReadOnlyMany</code> or <code>ReadWriteOnce</code> access modes are available.
You can use a combination of those access modes by reclaiming and reusing PVCs with the same <code>spec.volumeName</code>.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Using <code>ReadWriteOnce</code> access mode results in all Infinispan pods in a cluster being scheduled on the same Kubernetes node.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Change to the namespace for your Infinispan cluster.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl config set-context --current --namespace=ispn-namespace</code></pre>
</div>
</div>
</li>
<li>
<p>Create a PVC for your custom code artifacts, for example:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: datagrid-libs
spec:
  accessModes:
    - ReadWriteMany
  resources:
    requests:
      storage: 100Mi</code></pre>
</div>
</div>
</li>
<li>
<p>Apply your PVC.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl apply -f datagrid-libs.yaml</code></pre>
</div>
</div>
</li>
<li>
<p>Create a pod that mounts the PVC, for example:</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: v1
kind: Pod
metadata:
  name: datagrid-libs-pod
spec:
  securityContext:
    fsGroup: 2000
  volumes:
    - name: lib-pv-storage
      persistentVolumeClaim:
        claimName: datagrid-libs
  containers:
    - name: lib-pv-container
      image: quay.io/infinispan/server:14.0.21
      volumeMounts:
        - mountPath: /tmp/libs
          name: lib-pv-storage</code></pre>
</div>
</div>
</li>
<li>
<p>Add the pod to the Infinispan namespace and wait for it to be ready.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl apply -f datagrid-libs-pod.yaml
kubectl wait --for=condition=ready --timeout=2m pod/datagrid-libs-pod</code></pre>
</div>
</div>
</li>
<li>
<p>Copy your code artifacts to the pod so that they are loaded into the PVC.</p>
<div class="paragraph">
<p>For example to copy code artifacts from a local <code>libs</code> directory, do the following:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl cp --no-preserve=true libs datagrid-libs-pod:/tmp/</code></pre>
</div>
</div>
</li>
<li>
<p>Delete the pod.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl delete pod datagrid-libs-pod</code></pre>
</div>
</div>
<div class="paragraph">
<p>Specify the persistent volume with <code>spec.dependencies.volumeClaimName</code> in your <code>Infinispan</code> CR and then apply the changes.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
spec:
  replicas: 2
  dependencies:
    volumeClaimName: datagrid-libs
  service:
    type: DataGrid</code></pre>
</div>
</div>
</li>
</ol>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>If you update your custom code on the persistent volume, you must restart the Infinispan cluster so it can load the changes.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://access.redhat.com/documentation/en-us/openshift_container_platform/4.9/html-single/storage/index#configuring-persistent-storage">Configuring persistent storage</a></p>
</li>
<li>
<p><a href="https://kubernetes.io/docs/concepts/storage/persistent-volumes/">Persistent Volumes</a></p>
</li>
<li>
<p><a href="https://kubernetes.io/docs/concepts/storage/persistent-volumes/#access-modes">Access Modes</a></p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="downloading-code_custom-code"><a class="anchor" href="#downloading-code_custom-code"></a>19.2. Downloading code artifacts</h3>
<div class="paragraph _abstract">
<p>Add your artifacts to an HTTP or FTP server so that Infinispan Operator downloads them to the <code>/opt/infinispan/server/lib</code> directory on each Infinispan node.</p>
</div>
<div class="paragraph">
<p>When downloading files, Infinispan Operator can automatically detect the file type.
Infinispan Operator also extracts archived files, such as <code>zip</code> or <code>tgz</code>, to the filesystem after the download completes.</p>
</div>
<div class="paragraph">
<p>You can also download Maven artifacts using the <code>groupId:artifactId:version</code> format, for example <code>org.postgresql:postgresql:42.3.1</code>.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Each time Infinispan Operator creates a Infinispan node it downloads the artifacts to the node.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Host your code artifacts on an HTTP or FTP server or publish them to a maven repository.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Add the <code>spec.dependencies.artifacts</code> field to your <code>Infinispan</code> CR.</p>
</li>
<li>
<p>Do one of the following:</p>
<div class="ulist">
<ul>
<li>
<p>Specify the location of the file to download via <code>HTTP</code> or <code>FTP</code> as the value of the <code>spec.dependencies.artifacts.url</code> field.</p>
</li>
<li>
<p>Provide the Maven artifact to download with the <code>groupId:artifactId:version</code> format as the value of the <code>spec.dependencies.artifacts.maven</code> field.</p>
</li>
</ul>
</div>
</li>
<li>
<p>Optionally specify a checksum to verify the integrity of the download with the <code>spec.dependencies.artifacts.hash</code> field.</p>
<div class="paragraph">
<p>The <code>hash</code> field requires a value is in the format of <code>&lt;algorithm&gt;:&lt;checksum&gt;</code> where <code>&lt;algorithm&gt;</code> is <code>sha1|sha224|sha256|sha384|sha512|md5</code>.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">apiVersion: infinispan.org/v1
kind: Infinispan
metadata:
  name: infinispan
spec:
  replicas: 2
  dependencies:
    artifacts:
      - url: http://example.com:8080/path
        hash: sha256:596408848b56b5a23096baa110cd8b633c9a9aef2edd6b38943ade5b4edcd686
  service:
    type: DataGrid</code></pre>
</div>
</div>
</li>
<li>
<p>Apply the changes.</p>
</li>
</ol>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="eventing"><a class="anchor" href="#eventing"></a>20. Sending cloud events from Infinispan clusters</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Configure Infinispan as a Knative source by sending <code>CloudEvents</code> to Apache Kafka topics.</p>
</div>
<div class="sect2">
<h3 id="cloud-events_cloud-events"><a class="anchor" href="#cloud-events_cloud-events"></a>20.1. Cloud events</h3>
<div class="paragraph _abstract">
<p>You can send <code>CloudEvents</code> from Infinispan clusters when entries in caches are created, updated, removed, or expired.</p>
</div>
<div class="paragraph">
<p>Infinispan sends structured events to Kafka in JSON format, as in the following example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-json" data-lang="json">{
    "specversion": "1.0",
    "source": "/infinispan/&lt;cluster_name&gt;/&lt;cache_name&gt;",
    "type": "org.infinispan.entry.created",
    "time": "&lt;timestamp&gt;",
    "subject": "&lt;key-name&gt;",
    "id": "key-name:CommandInvocation:node-name:0",
    "data": {
       "property": "value"
    }
}</code></pre>
</div>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 50%;">
<col style="width: 50%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Field</th>
<th class="tableblock halign-left valign-top">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>type</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Prefixes events for Infinispan cache entries with <code>org.infinispan.entry</code>.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>data</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Entry value.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>subject</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Entry key, converted to string.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>id</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Generated identifier for the event.</p></td>
</tr>
</tbody>
</table>
</div>
<div class="sect2">
<h3 id="enabling-cloud-events_cloud-events"><a class="anchor" href="#enabling-cloud-events_cloud-events"></a>20.2. Enabling cloud events</h3>
<div class="paragraph _abstract">
<p>Configure Infinispan to send <code>CloudEvents</code>.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Set up an Kafka cluster that listens for Infinispan topics.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Add <code>spec.cloudEvents</code> to your <code>Infinispan</code> CR.</p>
<div class="olist loweralpha">
<ol class="loweralpha" type="a">
<li>
<p>Configure the number of acknowledgements with the <code>spec.cloudEvents.acks</code> field. Values are "0", "1", or "all".</p>
</li>
<li>
<p>List Kafka servers to which Infinispan sends events with the <code>spec.cloudEvents.bootstrapServers</code> field.</p>
</li>
<li>
<p>Specify the Kafka topic for Infinispan events with the <code>spec.cloudEvents.cacheEntriesTopic</code> field.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">spec:
  cloudEvents:
    acks: "1"
    bootstrapServers: my-cluster-kafka-bootstrap_1.&lt;namespace_1&gt;.svc:9092,my-cluster-kafka-bootstrap_2.&lt;namespace_2&gt;.svc:9092
    cacheEntriesTopic: target-topic</code></pre>
</div>
</div>
</li>
</ol>
</div>
</li>
<li>
<p>Apply your changes.</p>
</li>
</ol>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="connecting-clients"><a class="anchor" href="#connecting-clients"></a>21. Establishing remote client connections</h2>
<div class="sectionbody">
<div class="paragraph _abstract">
<p>Connect to Infinispan clusters from the Infinispan Console, Command Line Interface (CLI), and remote clients.</p>
</div>
<div class="sect2">
<h3 id="client-connection-details_clients"><a class="anchor" href="#client-connection-details_clients"></a>21.1. Client connection details</h3>
<div class="paragraph _abstract">
<p>Client connections to Infinispan require the following information:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Hostname</p>
</li>
<li>
<p>Port</p>
</li>
<li>
<p>Authentication credentials, if required</p>
</li>
<li>
<p>TLS certificate, if you use encryption</p>
</li>
</ul>
</div>
<div class="paragraph">
<div class="title">Hostnames</div>
<p>The hostname you use depends on whether clients are running on the same Kubernetes cluster as Infinispan.</p>
</div>
<div class="paragraph">
<p>Client applications running on the same Kubernetes cluster use the internal service name for the Infinispan cluster.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">metadata:
  name: infinispan</code></pre>
</div>
</div>
<div class="paragraph">
<p>Client applications running on a different Kubernetes, or outside Kubernetes, use a hostname that depends on how Infinispan is exposed on the network.</p>
</div>
<div class="paragraph">
<p>A <code>LoadBalancer</code> service uses the URL for the load balancer.
A <code>NodePort</code> service uses the node hostname.
An Red Hat OpenShift <code>Route</code> uses either a custom hostname that you define or a hostname that the system generates.</p>
</div>
<div class="paragraph">
<div class="title">Ports</div>
<p>Client connections on Kubernetes and a through <code>LoadBalancer</code> service use port <code>11222</code>.</p>
</div>
<div class="paragraph">
<p><code>NodePort</code> services use a port in the range of <code>30000</code> to <code>60000</code>.
Routes use either port <code>80</code> (unencrypted) or <code>443</code> (encrypted).</p>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="#creating-network">Configuring Network Access to Infinispan</a></p>
</li>
<li>
<p><a href="#retrieving-credentials_authn">Retrieving Credentials</a></p>
</li>
<li>
<p><a href="#retrieving-tls-certificates_tls">Retrieving TLS Certificates</a></p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="connecting-cli_clients"><a class="anchor" href="#connecting-cli_clients"></a>21.2. Connecting to Infinispan clusters with remote shells</h3>
<div class="paragraph _abstract">
<p>Start a remote shell session to Infinispan clusters and use the command line interface (CLI) to work with Infinispan resources and perform administrative operations.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Have <code>kubectl-infinispan</code> on your <code>PATH</code>.</p>
</li>
<li>
<p>Have valid Infinispan credentials.</p>
</li>
</ul>
</div>
<div class="olist arabic">
<div class="title">Procedure</div>
<ol class="arabic">
<li>
<p>Run the <code class="command">infinispan shell</code> command to connect to your Infinispan cluster.</p>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code>kubectl infinispan shell &lt;cluster_name&gt;</code></pre>
</div>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>If you have access to authentication secrets and there is only one Infinispan user the <code>kubectl-infinispan</code> plugin automatically detects your credentials and authenticates to Infinispan.
If your deployment has multiple Infinispan credentials, specify a user with the <code>--username</code> argument and enter the corresponding password when prompted.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Perform CLI operations as required.</p>
<div class="admonitionblock tip">
<table>
<tr>
<td class="icon">
<i class="fa icon-tip" title="Tip"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Press the tab key or use the <code class="command">--help</code> argument to view available options and help text.</p>
</div>
</td>
</tr>
</table>
</div>
</li>
<li>
<p>Use the <code class="command">quit</code> command to end the remote shell session.</p>
</li>
</ol>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://infinispan.org/docs/stable/titles/cli/cli.html">Using the Infinispan Command Line Interface</a></p>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="connecting-console_clients"><a class="anchor" href="#connecting-console_clients"></a>21.3. Accessing Infinispan Console</h3>
<div class="paragraph _abstract">
<p>Access the console to create caches, perform adminstrative operations, and monitor your Infinispan clusters.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Expose Infinispan on the network so you can access the console through a browser.<br>
For example, configure a <code>LoadBalancer</code> service or create a <code>Route</code>.</p>
</li>
</ul>
</div>
<div class="ulist">
<div class="title">Procedure</div>
<ul>
<li>
<p>Access the console from any browser at <code>$HOSTNAME:$PORT</code>.</p>
<div class="paragraph">
<p>Replace <code>$HOSTNAME:$PORT</code> with the network location where Infinispan is available.</p>
</div>
</li>
</ul>
</div>
</div>
<div class="sect2">
<h3 id="hotrod-clients_clients"><a class="anchor" href="#hotrod-clients_clients"></a>21.4. Hot Rod clients</h3>
<div class="paragraph _abstract">
<p>Hot Rod is a binary TCP protocol that Infinispan provides for high-performance data transfer capabilities with remote clients.</p>
</div>
<h4 id="_client_intelligence" class="discrete">Client intelligence</h4>
<div class="paragraph">
<p>The Hot Rod protocol includes a mechanism that provides clients with an up-to-date view of the cache topology.
Client intelligence improves performance by reducing the number of network hops for read and write operations.</p>
</div>
<div class="paragraph">
<p>Clients running in the same Kubernetes cluster can access internal IP addresses for Infinispan pods so you can use any client intelligence.</p>
</div>
<div class="paragraph">
<p><code>HASH_DISTRIBUTION_AWARE</code> is the default intelligence mechanism and enables clients to route requests to primary owners, which provides the best performance for Hot Rod clients.</p>
</div>
<div class="paragraph">
<p>Clients running on a different Kubernetes, or outside Kubernetes, can access Infinispan by using a <code>LoadBalancer</code>, <code>NodePort</code>, or OpenShift <code>Route</code>.</p>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<i class="fa icon-important" title="Important"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Hot Rod client connections via Kubernetes <code>Route</code> require encryption.
You must configure TLS with SNI otherwise the Hot Rod connection fails.</p>
</div>
<div class="paragraph">
<p>For unencrypted Hot Rod client connections, you must use a <code>LoadBalancer</code> service or a <code>NodePort</code> service.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>Hot Rod clients must use <code>BASIC</code> intelligence in the following situations:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Connecting to Infinispan through a <code>LoadBalancer</code> service, a <code>NodePort</code> service, or an OpenShift <code>Route</code>.</p>
</li>
<li>
<p>Failing over to a different Kubernetes cluster when using cross-site replication.</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Kubernetes cluster administrators can define network policies that restrict traffic to Infinispan.
In some cases network isolation policies can require you to use <code>BASIC</code> intelligence even when clients are running in the same Kubernetes cluster but a different namespace.</p>
</div>
<div class="sect3">
<h4 id="hotrod-configuration-builder_clients"><a class="anchor" href="#hotrod-configuration-builder_clients"></a>21.4.1. Hot Rod client configuration API</h4>
<div class="paragraph _abstract">
<p>You can programmatically configure Hot Rod client connections with the <code>ConfigurationBuilder</code> interface.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>Replace <code>$SERVICE_HOSTNAME</code> in the following examples with the internal service name of your Infinispan cluster.</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-yaml" data-lang="yaml">metadata:
  name: infinispan</code></pre>
</div>
</div>
</td>
</tr>
</table>
</div>
<h5 id="_on_kubernetes" class="discrete">On Kubernetes</h5>
<div class="listingblock">
<div class="title">ConfigurationBuilder</div>
<div class="content">
<pre class="highlight nowrap"><code class="language-java" data-lang="java">import org.infinispan.client.hotrod.configuration.ConfigurationBuilder;
import org.infinispan.client.hotrod.configuration.SaslQop;
import org.infinispan.client.hotrod.impl.ConfigurationProperties;
...

ConfigurationBuilder builder = new ConfigurationBuilder();
      builder.addServer()
               .host("$HOSTNAME")
               .port(ConfigurationProperties.DEFAULT_HOTROD_PORT)
             .security().authentication()
               .username("username")
               .password("changeme")
               .realm("default")
               .saslQop(SaslQop.AUTH)
               .saslMechanism("SCRAM-SHA-512")
             .ssl()
               .sniHostName("$SERVICE_HOSTNAME")
               .trustStoreFileName("/var/run/secrets/kubernetes.io/serviceaccount/service-ca.crt")
               .trustStoreType("pem");</code></pre>
</div>
</div>
<div class="listingblock">
<div class="title">hotrod-client.properties</div>
<div class="content">
<pre class="highlight nowrap"><code class="language-java" data-lang="java"># Connection
infinispan.client.hotrod.server_list=$HOSTNAME:$PORT

# Authentication
infinispan.client.hotrod.use_auth=true
infinispan.client.hotrod.auth_username=developer
infinispan.client.hotrod.auth_password=$PASSWORD
infinispan.client.hotrod.auth_server_name=$CLUSTER_NAME
infinispan.client.hotrod.sasl_properties.javax.security.sasl.qop=auth
infinispan.client.hotrod.sasl_mechanism=SCRAM-SHA-512

# Encryption
infinispan.client.hotrod.sni_host_name=$SERVICE_HOSTNAME
infinispan.client.hotrod.trust_store_file_name=/var/run/secrets/kubernetes.io/serviceaccount/service-ca.crt
infinispan.client.hotrod.trust_store_type=pem</code></pre>
</div>
</div>
<h5 id="_outside_kubernetes" class="discrete">Outside Kubernetes</h5>
<div class="listingblock">
<div class="title">ConfigurationBuilder</div>
<div class="content">
<pre class="highlight nowrap"><code class="language-java" data-lang="java">import org.infinispan.client.hotrod.configuration.ClientIntelligence;
import org.infinispan.client.hotrod.configuration.ConfigurationBuilder;
import org.infinispan.client.hotrod.configuration.SaslQop;
...

ConfigurationBuilder builder = new ConfigurationBuilder();
      builder.addServer()
               .host("$HOSTNAME")
               .port("$PORT")
             .security().authentication()
               .username("username")
               .password("changeme")
               .realm("default")
               .saslQop(SaslQop.AUTH)
               .saslMechanism("SCRAM-SHA-512")
             .ssl()
               .sniHostName("$SERVICE_HOSTNAME")
               //Create a client trust store with tls.crt from your project.
               .trustStoreFileName("/path/to/truststore.pkcs12")
               .trustStorePassword("trust_store_password")
               .trustStoreType("PCKS12");
      builder.clientIntelligence(ClientIntelligence.BASIC);</code></pre>
</div>
</div>
<div class="listingblock">
<div class="title">hotrod-client.properties</div>
<div class="content">
<pre class="highlight nowrap"><code class="language-java" data-lang="java"># Connection
infinispan.client.hotrod.server_list=$HOSTNAME:$PORT

# Client intelligence
infinispan.client.hotrod.client_intelligence=BASIC

# Authentication
infinispan.client.hotrod.use_auth=true
infinispan.client.hotrod.auth_username=developer
infinispan.client.hotrod.auth_password=$PASSWORD
infinispan.client.hotrod.auth_server_name=$CLUSTER_NAME
infinispan.client.hotrod.sasl_properties.javax.security.sasl.qop=auth
infinispan.client.hotrod.sasl_mechanism=SCRAM-SHA-512

# Encryption
infinispan.client.hotrod.sni_host_name=$SERVICE_HOSTNAME
# Create a client trust store with tls.crt from your project.
infinispan.client.hotrod.trust_store_file_name=/path/to/truststore.pkcs12
infinispan.client.hotrod.trust_store_password=trust_store_password
infinispan.client.hotrod.trust_store_type=PCKS12</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="configuring-clients-present-certificates_clients"><a class="anchor" href="#configuring-clients-present-certificates_clients"></a>21.4.2. Configuring Hot Rod clients for certificate authentication</h4>
<div class="paragraph _abstract">
<p>If you enable client certificate authentication, clients must present valid certificates when negotiating connections with Infinispan.</p>
</div>
<div class="paragraph">
<div class="title">Validate strategy</div>
<p>If you use the <code>Validate</code> strategy, you must configure clients with a keystore so they can present signed certificates.
You must also configure clients with Infinispan credentials and any suitable authentication mechanism.</p>
</div>
<div class="paragraph">
<div class="title">Authenticate strategy</div>
<p>If you use the <code>Authenticate</code> strategy, you must configure clients with a keystore that contains signed certificates and valid Infinispan credentials as part of the distinguished name (DN).
Hot Rod clients must also use the <code>EXTERNAL</code> authentication mechanism.</p>
</div>
<div class="admonitionblock note">
<table>
<tr>
<td class="icon">
<i class="fa icon-note" title="Note"></i>
</td>
<td class="content">
<div class="paragraph">
<p>If you enable security authorization, you should assign the Common Name (CN) from the client certificate a role with the appropriate permissions.</p>
</div>
</td>
</tr>
</table>
</div>
<div class="paragraph">
<p>The following example shows a Hot Rod client configuration for client certificate authentication with the <code>Authenticate</code> strategy:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-java" data-lang="java">import org.infinispan.client.hotrod.configuration.ConfigurationBuilder;
...

ConfigurationBuilder builder = new ConfigurationBuilder();
      builder.security()
             .authentication()
               .saslMechanism("EXTERNAL")
             .ssl()
               .keyStoreFileName("/path/to/keystore")
               .keyStorePassword("keystorepassword".toCharArray())
               .keyStoreType("PCKS12");</code></pre>
</div>
</div>
</div>
<div class="sect3">
<h4 id="creating-caches-hotrod_clients"><a class="anchor" href="#creating-caches-hotrod_clients"></a>21.4.3. Creating caches from Hot Rod clients</h4>
<div class="paragraph _abstract">
<p>You can remotely create caches on Infinispan clusters running on Kubernetes with Hot Rod clients.
However, Infinispan recommends that you create caches using Infinispan Console, the CLI, or with <code>Cache</code> CRs instead of with Hot Rod clients.</p>
</div>
<h5 id="_programmatically_creating_caches" class="discrete">Programmatically creating caches</h5>
<div class="paragraph">
<p>The following example shows how to add cache configurations to the <code>ConfigurationBuilder</code> and then create them with the <code>RemoteCacheManager</code>:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-java" data-lang="java">import org.infinispan.client.hotrod.DefaultTemplate;
import org.infinispan.client.hotrod.RemoteCache;
import org.infinispan.client.hotrod.RemoteCacheManager;
...

      builder.remoteCache("my-cache")
             .templateName(DefaultTemplate.DIST_SYNC);
      builder.remoteCache("another-cache")
             .configuration("&lt;infinispan&gt;&lt;cache-container&gt;&lt;distributed-cache name=\"another-cache\"&gt;&lt;encoding media-type=\"application/x-protostream\"/&gt;&lt;/distributed-cache&gt;&lt;/cache-container&gt;&lt;/infinispan&gt;");
      try (RemoteCacheManager cacheManager = new RemoteCacheManager(builder.build())) {
      // Get a remote cache that does not exist.
      // Rather than return null, create the cache from a template.
      RemoteCache&lt;String, String&gt; cache = cacheManager.getCache("my-cache");
      // Store a value.
      cache.put("hello", "world");
      // Retrieve the value and print it.
      System.out.printf("key = %s\n", cache.get("hello"));</code></pre>
</div>
</div>
<div class="paragraph">
<p>This example shows how to create a cache named CacheWithXMLConfiguration using the <code>XMLStringConfiguration()</code> method to pass the cache configuration as XML:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code class="language-java" data-lang="java">import org.infinispan.client.hotrod.RemoteCacheManager;
import org.infinispan.commons.configuration.XMLStringConfiguration;
...

private void createCacheWithXMLConfiguration() {
    String cacheName = "CacheWithXMLConfiguration";
    String xml = String.format("&lt;distributed-cache name=\"%s\"&gt;" +
                                  "&lt;encoding media-type=\"application/x-protostream\"/&gt;" +
                                  "&lt;locking isolation=\"READ_COMMITTED\"/&gt;" +
                                  "&lt;transaction mode=\"NON_XA\"/&gt;" +
                                  "&lt;expiration lifespan=\"60000\" interval=\"20000\"/&gt;" +
                                "&lt;/distributed-cache&gt;"
                                , cacheName);
    manager.administration().getOrCreateCache(cacheName, new XMLStringConfiguration(xml));
    System.out.println("Cache with configuration exists or is created.");
}</code></pre>
</div>
</div>
<h5 id="_using_hot_rod_client_properties" class="discrete">Using Hot Rod client properties</h5>
<div class="paragraph">
<p>When you invoke <code>cacheManager.getCache()</code> calls for named caches that do not exist, Infinispan creates them from the Hot Rod client properties instead of returning null.</p>
</div>
<div class="paragraph">
<p>Add cache configuration to <code>hotrod-client.properties</code> as in the following example:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight nowrap"><code># Add cache configuration
infinispan.client.hotrod.cache.my-cache.template_name=org.infinispan.DIST_SYNC
infinispan.client.hotrod.cache.another-cache.configuration=&lt;infinispan&gt;&lt;cache-container&gt;&lt;distributed-cache name=\"another-cache\"/&gt;&lt;/cache-container&gt;&lt;/infinispan&gt;
infinispan.client.hotrod.cache.my-other-cache.configuration_uri=file:/path/to/configuration.xml</code></pre>
</div>
</div>
</div>
</div>
<div class="sect2">
<h3 id="connecting-rest_clients"><a class="anchor" href="#connecting-rest_clients"></a>21.5. Accessing the REST API</h3>
<div class="paragraph _abstract">
<p>Infinispan provides a RESTful interface that you can interact with using HTTP clients.</p>
</div>
<div class="ulist">
<div class="title">Prerequisites</div>
<ul>
<li>
<p>Expose Infinispan on the network so you can access the REST API.<br>
For example, configure a <code>LoadBalancer</code> service or create a <code>Route</code>.</p>
</li>
</ul>
</div>
<div class="ulist">
<div class="title">Procedure</div>
<ul>
<li>
<p>Access the REST API with any HTTP client at <code>$HOSTNAME:$PORT/rest/v2</code>.</p>
<div class="paragraph">
<p>Replace <code>$HOSTNAME:$PORT</code> with the network location where Infinispan listens for client connections.</p>
</div>
</li>
</ul>
</div>
<div class="ulist _additional-resources">
<div class="title">Additional resources</div>
<ul>
<li>
<p><a href="https://infinispan.org/docs/stable/titles/rest/rest.html">Infinispan REST API</a></p>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div id="footer">
<div id="footer-text">
Last updated 2024-01-03 16:21:59 UTC
</div>
</div>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-8601422-1', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>