%%
%% This is file `bidipresentation.cls',

%% 
%%   __________________________________
%%   Copyright © 2009-2010 Vafa Khalighi
%% 
%%   License information appended.
%% 
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bidipresentation}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage[foot=10.2pt,head=0pt,paperwidth=128mm,paperheight=96mm,left=5mm,top=5mm,right=7mm,bottom=8mm]{geometry}

\RequirePackage{fancyhdr}
\renewcommand{\headrulewidth}{0mm}

\renewcommand{\maketitle}%
  {\ClassError{bidipresentation}{Caution: ``maketitle'' command not supported}%
  {Please use ``titlepage'' environment instead}%
}

\fancypagestyle{pres}{%
\fancyhf{}%
\fancyfoot[RO,LE]{\footnotesize \thepage}%
}

\pagestyle{pres}

\newcommand{\distance}[1]{\vspace*{\stretch{#1}}}
\newcommand{\abstand}[1]{\vspace*{\stretch{#1}}}

\setlength{\parskip}{0.6ex}
\setlength{\parindent}{0mm}

\newenvironment{plainslide}[1][]%
   {{\raggedleft \large\bfseries #1\par}\par\vspace*{\stretch{1}}}%
   {\par\vspace*{\stretch{1}}\newpage}

\newenvironment{rawslide}{}{\newpage}%

\def\itemize{%
  \ifnum \@itemdepth >\thr@@\@toodeep\else
    \advance\@itemdepth\@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \expandafter
    \list
      \csname\@itemitem\endcsname
      {\def\makelabel##1{\hss\llap{##1}}}%
  \fi
    \setlength{\itemsep}{0ex}%
    \setlength{\parskip}{0.1ex}%
    \setlength{\parsep}{0ex}%
    }%
\let\enditemize =\endlist

\def\enumerate{%
  \ifnum \@enumdepth >\thr@@\@toodeep\else
    \advance\@enumdepth\@ne
    \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
      \expandafter
      \list
        \csname label\@enumctr\endcsname
        {\usecounter\@enumctr\def\makelabel##1{\hss\llap{##1}}}%
  \fi
    \setlength{\itemsep}{0ex}%
    \setlength{\parskip}{0.1ex}%
    \setlength{\parsep}{0ex}%
    }%
\let\endenumerate =\endlist

\renewenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}
 \setlength{\itemsep}{0ex}%
    \setlength{\parskip}{0.1ex}%
    \setlength{\parsep}{0ex}}
               {\endlist}

%% 
%% Copyright © 2009-2010      by Vafa Khalighi     <vafa@users.berlios.de>
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status)
%% by Vafa Khalighi.
%% 
%% 
%% 
%% 
%%
%% End of file `bidipresentation.cls'.
