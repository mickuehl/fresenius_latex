\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fresenius}

\LoadClass[titlepage,numbers=noenddot,dottedtoc,paper=a4,german]{scrartcl}

\usepackage[german]{babel}
\usepackage[utf8]{inputenc}
\usepackage{epstopdf}
\usepackage{csquotes}
\usepackage[hidelinks]{hyperref}
\usepackage{tocloft}
\usepackage{xspace}
\usepackage[font=small]{caption}

\usepackage[backend=biber,style=apa,citestyle=authoryear-ibid,sortcites=true,sorting=nyt,hyperref=false,backref=true,url=false,doi=false,eprint=false,]{biblatex}
\DeclareLanguageMapping{german}{german-apa}

% maps apacite commands to biblatex commands
\let \citeNP \cite
\let \citeA \textcite
\let \cite \parencite

% required for text formatting
\usepackage{ragged2e}

% required for inserting images
\usepackage{graphicx}

% specifies where to look for included images (trailing slash required)
\graphicspath{{figures/}{./}}

% font and size
\usepackage{fontspec}
\setmainfont{Arial}
\usepackage[11pt]{extsizes}

% paper size and borders
\usepackage{geometry}
\geometry{paper=a4paper,top=2cm,bottom=2cm,left=2cm,right=4cm}

% 1.5 lines
\linespread{1.3}

% text formatting
\RequirePackage{titlesec}

% sections

% \newcommand\LARGE{\@setfontsize\LARGE\@xivpt{14}}
% \newcommand\Large{\@setfontsize\Large\@xivpt{12}}
% \newcommand\small{\@setfontsize\small\@xivpt{11}}

\titleformat*{\section}{\LARGE\bfseries}
\titleformat*{\subsection}{\Large\bfseries}
\titleformat*{\subsubsection}{\normalsize\bfseries}

\titlespacing*{\section}{0pt}{1.0\baselineskip}{0.2\baselineskip} 
\titlespacing*{\subsection}{0pt}{1.0\baselineskip}{0.2\baselineskip}
\titlespacing*{\subsubsection}{0pt}{1.0\baselineskip}{0.2\baselineskip}
\titlespacing*{\paragraph}{0pt}{1.0\baselineskip}{0\baselineskip}

% TOC
\cftsetindents{section}{0em}{2em}
\cftsetindents{subsection}{0.5em}{3em}
\cftsetindents{subsubsection}{1em}{3em}

% \renewcommand\cfttoctitlefont{\hfill\Large\bfseries}
% \renewcommand\cftaftertoctitle{\hfill\mbox{}}

\newcommand{\nocontentsline}[3]{}
\newcommand{\tocless}[2]{\bgroup\let\addcontentsline=\nocontentsline#1{#2}\egroup}