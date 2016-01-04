%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% This is file 'memo.cls'.
%%
%% Provides a LaTeX document class for workbook about programmation.
%%
%% Author: SylCha
%% Inspired from: Laura M. Castro (lcastro@udc.es)
%% License: CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{memo}
%%
%% Base document style and options.
%%
\LoadClass[10pt,a4paper,titlepage,twoside,openright,fleqn,leqno]{book}
%%
%% Languages
%%
\RequirePackage[french]{babel}
%%
%% Page margins
%%
\RequirePackage[top=3cm,bottom=3cm,left=3.2cm,right=3.2cm,headsep=11pt,a4paper]{geometry}
%%
%% Color definitions
%%
\RequirePackage{xcolor}
\definecolor{mainColor}{RGB}{41,128,185} % You may redefine mainColor to suit your needs
\definecolor{subColor}{RGB}{52,152,219}
\definecolor{backColor}{RGB}{236,240,241}
\definecolor{focusColor}{RGB}{217,81,24}
\definecolor{gray75}{gray}{0.75}
\definecolor{rose}{cmyk}{0,0.2,0,0}
%%
%% Font settings
%%
\RequirePackage[utf8]{inputenc}
\RequirePackage{fix-cm}
%%\RequirePackage{txfonts}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath,amsfonts,amssymb,amsthm}
%%\RequirePackage[scaled]{helvet}
%\RequirePackage[math,condensed]{iwona}
\renewcommand*\familydefault{\rmdefault}
\RequirePackage[babel=true,kerning=true]{microtype}
%%
%% Bibliography settings
%%
%%\RequirePackage[style=alphabetic,sorting=nyt,sortcites=true,autopunct=true,babel=hyphen,hyperref=true,abbreviate=false,backref=true,backend=biber]{biblatex}
%%\defbibheading{bibempty}{}
\RequirePackage{hyperref}
%%
%% Index settings
%%
\RequirePackage{calc}
\RequirePackage{imakeidx}
\makeindex[title=Index G\'{e}n\'{e}ral, options= -s index_gen_style.ist]
%%\indexsetup{othercode=\ttfamily}
\makeindex[name=cmd, title=Index des Commandes, options= -s index_cmd_style.ist]
%%
%% Title page
%%
\RequirePackage[pdftex]{graphicx}
\RequirePackage{tikz,tkz-tab}
\RequirePackage{fourier-orns}
\newcommand{\printtitlepage}[2]{%
\begingroup
\thispagestyle{empty}
%%\AddToShipoutPicture*{\put(6,5){\includegraphics[scale=1.2]{#1}}} % Image background
\centering
\vspace*{9cm}
\par\normalfont\fontsize{35}{35}\sffamily\selectfont
{\bfseries#1}\par % Document title
\vspace*{1cm}
{\large {#2}}\par % subtitle
\vspace*{3cm}
\centerline{\decothreeleft\decothreeright}%
\vspace*{-0.5cm}
\centerline{\decotwo}%
\endgroup}
%%
%% Main table of contents
%%
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\contentsmargin{0cm} % Removes the default margin
% Chapter text styling
\newcommand{\hsp}{\hspace{20pt}}
%\titleformat{\chapter}[display]
%  { \normalsize \huge  \color{black}}
%  {\flushright \normalsize \color{mainColor} \MakeUppercase { \chaptertitlename \hspace{1 ex} }  { \fontsize{60}{60}\selectfont %\color{mainColor} \sffamily  \thechapter }} {10 pt}{\bfseries\sffamily\huge}
\titleformat{\chapter}[hang]{\color{mainColor}\Huge\bfseries\sffamily}{\thechapter\hsp\textcolor{gray75}{|}\hsp}{0pt}{\color{black}\Huge\bfseries\sffamily}
\titlecontents{chapter}[1.25cm] % Indentation
{\addvspace{15pt}\large\sffamily\bfseries} % Spacing and font options for chapters
{\color{mainColor!60}\contentslabel[\Large\thecontentslabel]{1.25cm}\color{mainColor}} % Chapter number
{}
{\color{mainColor!60}\normalsize\sffamily\bfseries\;\titlerule*[.5pc]{.}\;\thecontentspage} % Page number
% Section text styling
\titlecontents{section}[1.25cm] % Indentation
{\addvspace{5pt}\sffamily\bfseries} % Spacing and font options for sections
{\contentslabel[\thecontentslabel]{1.25cm}} % Section number
{}
{\sffamily\hfill\color{black}\thecontentspage} % Page number
[]
% Subsection text styling
\titlecontents{subsection}[1.25cm] % Indentation
{\addvspace{1pt}\sffamily\small} % Spacing and font options for subsections
{\contentslabel[\thecontentslabel]{1.25cm}} % Subsection number
{}
{\sffamily\;\titlerule*[.5pc]{.}\;\thecontentspage} % Page number
[]
%%
%% Chapter table of contents
%%
% Section text styling
\titlecontents{lsection}[0em] % Indendating
{\footnotesize\sffamily} % Font settings
{}
{}
{}
% Subsection text styling
\titlecontents{lsubsection}[.5em] % Indentation
{\normalfont\footnotesize\sffamily} % Font settings
{}
{}
{}
%%
%% Page headers
%%
\RequirePackage{fancyhdr} % Required for header and footer configuration
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\sffamily\normalsize\bfseries #1}{}} % Chapter text font settings
\renewcommand{\sectionmark}[1]{\markright{\sffamily\normalsize\thesection\hspace{5pt}#1}{}} % Section text font settings
\fancyhf{} \fancyhead[LE,RO]{\sffamily\normalsize\thepage} % Font setting for the page number in the header
\fancyhead[LO]{\rightmark} % Print the nearest section name on the left side of odd pages
\fancyhead[RE]{\leftmark} % Print the current chapter name on the right side of even pages
\renewcommand{\headrulewidth}{0.5pt} % Width of the rule under the header
\addtolength{\headheight}{2.5pt} % Increase the spacing around the header slightly
\renewcommand{\footrulewidth}{0pt} % Removes the rule in the footer
\fancypagestyle{plain}{\fancyhead{}\renewcommand{\headrulewidth}{0pt}} % Style for when a plain pagestyle is specified
% Removes the header from odd empty pages at the end of chapters
\makeatletter
\renewcommand{\cleardoublepage}{
\clearpage\ifodd\c@page\else
\hbox{}
\vspace*{\fill}
\thispagestyle{empty}
\newpage
\fi}
\makeatother
%%
%% Chapter headers
%%

%%
%% Section numbering format
%%
\makeatletter
\renewcommand{\@seccntformat}[1]{\llap{\textcolor{subColor}{\csname the#1\endcsname}\hspace{1em}}}
\renewcommand{\section}{\@startsection{section}{1}{\z@}
{-4ex \@plus -1ex \@minus -.4ex}
{1ex \@plus.2ex }
{\normalfont\large\sffamily\bfseries}}
\renewcommand{\subsection}{\@startsection {subsection}{2}{\z@}
{-3ex \@plus -0.1ex \@minus -.4ex}
{0.5ex \@plus.2ex }
{\normalfont\sffamily\bfseries}}
\renewcommand{\subsubsection}{\@startsection {subsubsection}{3}{\z@}
{-2ex \@plus -0.1ex \@minus -.2ex}
{0.2ex \@plus.2ex }
{\normalfont\small\sffamily\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}
{-2ex \@plus-.2ex \@minus .2ex}
{0.1ex}
{\normalfont\small\sffamily\bfseries}}
\makeatother
%%
%% Special environments (definition, exercise, example, furtherinfo)
%%
\RequirePackage[framemethod=default]{mdframed}
\makeatletter
\newtheoremstyle{vide} % Theorem style name
{7pt} % Space above
{7pt} % Space below
{\normalfont} % Body font
{} % Indent amount
{\small\bf\sffamily\color{mainColor}} % Theorem head font
{\;\;} % Punctuation after theorem head
{0.25em} % Space after theorem head
{\small\sffamily\color{black}\thmname{#1}\thmnumber{\@ifnotempty{#1}{ }\@upn{#2}} % Theorem text (e.g. Theorem 2.1)
\thmnote{\ {\the\thm@notefont\sffamily\bfseries\color{black} #3 ---}}} % Optional theorem note
\newtheoremstyle{fondAvecBandeau} % Theorem style name
{7pt} % Space above
{7pt} % Space below
{\normalfont} % Body font
{} % Indent amount
{\small\bf\sffamily\color{mainColor}} % Theorem head font
{\;\;} % Punctuation after theorem head
{0.25em} % Space after theorem head
{%\small\sffamily\color{mainColor}\thmname{#1}\thmnumber{\@ifnotempty{#1}{ }\@upn{#2}} % Theorem text (e.g. Theorem 2.1)
\thmnote{\ {\the\thm@notefont\sffamily\bfseries\color{black} #3 ---}}} % Optional theorem note
%
\newtheoremstyle{fondSansBandeau} % Theorem style name
{7pt} % Space above
{7pt} % Space below
{\normalfont} % Body font
{} % Indent amount
{\small\bf\sffamily\color{mainColor}} % Theorem head font
{\;\;} % Punctuation after theorem head
{0.25em} % Space after theorem head
{\small\sffamily\color{mainColor}\thmname{#1}\thmnumber{\@ifnotempty{#1}{ }\@upn{#2}} % Theorem text (e.g. Theorem 2.1)
\thmnote{\ {\the\thm@notefont\sffamily\bfseries\color{black} #3 ---}}} % Optional theorem note
\newtheoremstyle{ligneGauche} % Theorem style name
{7pt} % Space above
{7pt} % Space below
{\normalfont} % Body font
{} % Indent amount
{\small\bf\sffamily} % Theorem head font
{\;\;} % Punctuation after theorem head
{0.25em} % Space after theorem head
{\small\sffamily\thmname{#1}\thmnumber{\@ifnotempty{#1}{ }\@upn{#2}} % Theorem text (e.g. Theorem 2.1)
\thmnote{\ {\the\thm@notefont\sffamily\bfseries--- #3.}}} % Optional theorem note
\renewcommand{\qedsymbol}{$\blacksquare$} % Optional qed square
\makeatother
% Defines the special environments text styles to one of the two styles above
\theoremstyle{fondAvecBandeau}
\newtheorem{proprieteT}{}[chapter]
\theoremstyle{fondSansBandeau}
\newtheorem{definitionT}{Définition}[chapter]
\theoremstyle{ligneGauche}
\newtheorem{exerciceT}{Exercice}[chapter]
\theoremstyle{vide}
\newtheorem{exampleT}{Exemple}[chapter]
\newtheorem{furtherinfoT}{Further Information}[chapter]
% Definition box
\newmdenv[skipabove=7pt,
skipbelow=7pt,
backgroundcolor=backColor,
linecolor=mainColor,
innerleftmargin=5pt,
innerrightmargin=5pt,
innertopmargin=1pt,
leftmargin=0cm,
rightmargin=0cm,
innerbottommargin=5pt,
linewidth=0pt]{dBox}
% Propriete box
\newcounter{pbox}[chapter]
\renewcommand{\thepbox}{\thechapter.\arabic{pbox}}
\newmdenv[skipabove=7pt,
skipbelow=7pt,
rightline=false,
leftline=true,
topline=false,
bottomline=false,
backgroundcolor=mainColor!10,
linecolor=subColor,
innerleftmargin=5pt,
innerrightmargin=5pt,
innertopmargin=1pt,
innerbottommargin=5pt,
leftmargin=0cm,
rightmargin=0cm,
linewidth=4pt,
frametitle={\textcolor{white}{Propriété \thepbox}},
frametitlerule=false,
frametitlebackgroundcolor=subColor]{pBox}
% Exercise box
\newmdenv[skipabove=7pt,
skipbelow=7pt,
rightline=false,
leftline=true,
topline=false,
bottomline=false,
linecolor=mainColor,
innerleftmargin=5pt,
innerrightmargin=5pt,
innertopmargin=0pt,
leftmargin=0cm,
rightmargin=0cm,
linewidth=2pt,
innerbottommargin=0pt]{eBox}
% Example box
\newmdenv[skipabove=7pt,
skipbelow=7pt,
rightline=false,
leftline=true,
topline=false,
bottomline=false,
linecolor=mainColor,
innerleftmargin=5pt,
innerrightmargin=5pt,
innertopmargin=0pt,
leftmargin=0cm,
rightmargin=0cm,
linewidth=0pt,
innerbottommargin=0pt]{sBox}
% Further Info box
\newmdenv[skipabove=7pt,
skipbelow=7pt,
rightline=false,
leftline=true,
topline=false,
bottomline=false,
linecolor=gray,
backgroundcolor=backColor,
innerleftmargin=5pt,
innerrightmargin=5pt,
innertopmargin=5pt,
leftmargin=0cm,
rightmargin=0cm,
linewidth=4pt,
innerbottommargin=5pt]{iBox}
% Creates the special environments assigning a text style and a colored box style
\newenvironment{definition}{\begin{dBox}\begin{definitionT}}{\end{definitionT}\end{dBox}}
\newenvironment{propriete}{\refstepcounter{pbox}\begin{pBox}\begin{proprieteT}}{\hfill{\color{mainColor}\tiny\ensuremath{\blacksquare}}\end{proprieteT}\end{pBox}}
\newenvironment{exemple}{\begin{sBox}\begin{exampleT}}{\end{exampleT}\end{sBox}}
\newenvironment{exercice}{\begin{eBox}\begin{exerciceT}}{\hfill{\color{mainColor}\tiny\ensuremath{\blacksquare}}\end{exerciceT}\end{eBox}}
\newenvironment{furtherinfo}{\begin{iBox}\begin{furtherinfoT}}{\hfill{\tiny\ensuremath{\blacksquare}}\end{furtherinfoT}\end{iBox}}
\newenvironment{remarque}{\par\vskip10pt\small % Vertical white space above the remark and smaller font size
\begin{list}{}{
\leftmargin=35pt % Indentation on the left
\rightmargin=25pt}\item\ignorespaces % Indentation on the right
\makebox[-2.5pt]{\begin{tikzpicture}[overlay]
\node[draw=focusColor!60,line width=1pt,circle,fill=focusColor!25,font=\sffamily\bfseries,inner sep=2pt,outer sep=0pt] at (-15pt,0pt){\textcolor{focusColor}{R}};\end{tikzpicture}} % Orange R in a circle
\advance\baselineskip -1pt}{\end{list}\vskip5pt} % Tighter line spacing and white space after remark
%%
%% Misc
%%
\usepackage{enumitem} % Customize lists
\setlist{nolistsep} % Reduce spacing between bullet points and numbered lists
\usepackage{booktabs} % Required for nicer horizontal rules in tables
\usepackage{multido} % loop in LaTeX
\usepackage{ulem} % underline nicely
\usepackage{lettrine}
%%\usepackage{paralist} % customize lists
\usepackage{wrapfig}
\usepackage{multicol} % enable multiple columns
\usepackage{tabu} % tables easy peasy
\usepackage{colortbl} % colored cells in tables
\usepackage{pgfplots} % trace functions, charts,...
\pgfplotsset{compat=1.12} % remove warning message
%%\usepackage{parskip} % remove indentation before paragraphs
\usepackage[width=0.8\textwidth,labelfont={sf,bf,small},textfont={small}]{caption}
\usepackage[justification=centerlast]{subcaption}
%%\usepackage{float}
%%\floatstyle{ruled}
%%\restylefloat{figure}
\usepackage{ifpdf}
\ifpdf
\DeclareGraphicsRule{*}{mps}{*}{}
\fi
%% tikz libraries
\usetikzlibrary{trees,%
positioning,%
shadows,%
backgrounds,%
decorations.fractals,%
decorations.shapes,%
decorations.text,%
decorations.pathmorphing,%
decorations.pathreplacing,%
decorations.footprints,%
decorations.markings,%
arrows,%
shapes.geometric,%
shapes.arrows,
shapes.misc,
shapes.symbols,
intersections,
through,
patterns,
calc,
fit,
matrix}
% commande pour saisie clavier
\newcommand{\saisie}[1]{%
\colorbox{focusColor!20}{\texttt{#1}}
}
% listing configuration
\usepackage{listings}
\lstset{language=Python,basicstyle={\ttfamily \small},frame=leftline,captionpos=b,
linewidth=\linewidth,breaklines=true,
numbers=left, numberstyle=\tiny, stepnumber=1, numbersep=5pt,
%commentstyle=,
commentstyle={\ttfamily \color{DarkGreen}},
stringstyle=\color{Crimson},
identifierstyle=\ttfamily,
keywordstyle={\ttfamily \color{blue}},
backgroundcolor=\color{LightGreen!20},
literate={é}{{\'e}}1 {è} {{\`e}}1 {î} {{\^i}}1
}
%%
\usepackage{mfirstuc}
\makeatletter
\newcommand{\nouveau}[1]{%
\textit{#1}
\index{#1@\protect\capitalisewords{#1}}%
}

%%
%% Copyright
%%
\newcommand{\printcopyright}[3]{%
~\vfill
\thispagestyle{empty}
\noindent Copyright \copyright\ {#1}, {#2}\\
\noindent \textsc{This is a \LaTeX{} document --- UDC-book Template}\\
\noindent {#3} \\
\noindent \textit{First edition, {#1}}}
%%
\endinput
%%