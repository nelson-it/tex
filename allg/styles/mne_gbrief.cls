\def\filedate{1997/10/23}
\def\fileversion{2.4}
\def\filedate{1997/10/23}
\def\fileversion{2.4}
\def\filename{g-brief.cls}
\NeedsTeXFormat{LaTeX2e}[1997/06/01]

\ProvidesClass{mne_gbrief}[\filedate\space v\fileversion\space mne_gbrief class]

\newdimen\VorschubH
\newdimen\VorschubV
\VorschubH = 0.0mm
\VorschubV = 0.0mm
\usepackage[utf8x]{inputenc} 

\DeclareOption{10pt}{\def\@schrift{0}}
\DeclareOption{11pt}{\def\@schrift{1}}
\DeclareOption{12pt}{\def\@schrift{2}}
\DeclareOption{german}{
  \def\sprache{german}
  \def\telefontex{{\footnotesize Telefon\/:}}
  \def\telefaxtext{{\footnotesize Telefax\/:}}
  \def\telextext{{\footnotesize Telex\/:}}
  \def\emailtext{{\footnotesize E--Mail\/:}}
  \def\httptext{{\footnotesize HTTP\/:}}
  \def\banktext{{\footnotesize Bankverbindung\/:}}
  \def\blztext{{\footnotesize Blz\/:}}
  \def\kontotext{{\footnotesize Kto.}}
  \def\betrefftext{{\normalsize Betr.:}}
  \def\ihrzeichentext{\footnotesize\textsc{Ihr Zeichen}}
  \def\ihrschreibentext{\footnotesize\textsc{Ihr Schreiben vom}}
  \def\meinzeichentext{\footnotesize\textsc{Mein Zeichen}}
  \def\meinschreibentext{\footnotesize\textsc{Mein Schreiben vom}}
  \def\unserzeichentext{\footnotesize\textsc{Unser Zeichen}}
  \def\unserschreibentext{\footnotesize\textsc{Unser Schreiben vom}}
  \def\datumtext{\footnotesize\textsc{Datum}}
  \def\datum{\number\day.~\ifcase\month\or Januar\or Februar\or
    M\"arz\or April\or Mai\or Juni\or Juli\or August\or September\or
    Oktober\or November\or Dezember\fi \space\number\year}}
\DeclareOption{english}{
  \def\sprache{english}
  \def\telefontex{{\footnotesize Phone\/:}}
  \def\telefaxtext{{\footnotesize Fax\/:}}
  \def\telextext{{\footnotesize Telex\/:}}
  \def\emailtext{{\footnotesize E--Mail\/:}}
  \def\httptext{{\footnotesize HTTP\/:}}
  \def\banktext{{\footnotesize Bank\/:}}
  \def\blztext{{\footnotesize IBAN}}
  \def\kontotext{{\footnotesize acct}}
  \def\betrefftext{{\normalsize Subj.:}}
  \def\ihrzeichentext{\footnotesize\textsc{Your Ref.}}
  \def\ihrschreibentext{\footnotesize\textsc{Your Mail}}
  \def\meinzeichentext{\footnotesize\textsc{My Ref.}}
  \def\meinschreibentext{\footnotesize\textsc{My Mail}}
  \def\unserzeichentext{\footnotesize\textsc{Our Ref.}}
  \def\unserschreibentext{\footnotesize\textsc{Our Mail}}
  \def\datumtext{\footnotesize\textsc{Date}}
  \def\datum{\today}}
\DeclareOption{american}{
  \def\sprache{american}
  \def\telefontex{{\footnotesize Phone\/:}}
  \def\telefaxtext{{\footnotesize Fax\/:}}
  \def\telextext{{\footnotesize Telex\/:}}
  \def\emailtext{{\footnotesize E--Mail\/:}}
  \def\httptext{{\footnotesize HTTP\/:}}
  \def\banktext{{\footnotesize Bank\/:}}
  \def\blztext{{\footnotesize IBAN}}
  \def\kontotext{{\footnotesize acct}}
  \def\betrefftext{{\normalsize Subj.:}}
  \def\ihrzeichentext{\footnotesize\textsc{Your Ref.}}
  \def\ihrschreibentext{\footnotesize\textsc{Your Mail}}
  \def\meinzeichentext{\footnotesize\textsc{My Ref.}}
  \def\meinschreibentext{\footnotesize\textsc{My Mail}}
  \def\unserzeichentext{\footnotesize\textsc{Our Ref.}}
  \def\unserschreibentext{\footnotesize\textsc{Our Mail}}
  \def\datumtext{\footnotesize\textsc{Date}}
  \def\datum{\today}}

\def\addrindent{0}
\DeclareOption{addrrechts}{\def\addrindent{95}}
  
\ExecuteOptions{11pt,@sprache} \ProcessOptions

\LoadClass[1\@schrift pt, a4paper, oneside, final]{letter}[1997/04/16]

\normalsize

\setlength\oddsidemargin{0\p@}
\setlength\evensidemargin{\oddsidemargin}
\setlength\marginparwidth{90\p@}
\setlength\marginparsep{11\p@}
\setlength\marginparpush{5\p@}
\setlength\topmargin{-7.69mm}
\setlength\headheight{4.23mm}
\setlength\headsep{6.35mm}
\setlength\topskip{3.38mm}
\addtolength\footskip{4.23mm}

\setlength\textheight{188mm}
\setlength\textwidth{165mm}

\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}

\renewcommand\baselinestretch{1}

\advance\topmargin by \VorschubV
\advance\oddsidemargin by \VorschubH
\setlength\evensidemargin{\oddsidemargin}

\def\Logo#1{\def\logo{#1}} \def\logo{}
\def\Name#1{\def\name{#1}} \def\name{}
\def\Strasse#1{\def\strasse{#1}} \def\strasse{}
\def\Zusatz#1{\def\zusatz{#1}} \def\zusatz{}
\def\Ort#1{\def\ort{#1}} \def\ort{}
\def\Land#1{\def\land{#1}} \def\land{}
\def\RetourAdresse#1{\def\retouradresse{#1}} \def\retouradresse{}

\def\Telefon#1{\def\telefon{#1}} \def\telefon{}
\def\Telefax#1{\def\telefax{#1}} \def\telefax{}
\def\Telex#1{\def\telex{#1}} \def\telex{}
\def\EMail#1{\def\email{#1}} \def\email{}
\def\HTTP#1{\def\http{#1}} \def\http{}

\def\Bank#1{\def\bank{#1}} \def\bank{}
\def\BLZ#1{\def\blz{#1}} \def\blz{}
\def\Konto#1{\def\konto{#1}} \def\konto{}
\def\Kontoleer#1{\def\kontoleer{#1}} \def\kontoleer{}
\def\Withbank{\def\withbank{bank}}\def\withbank{}

\def\Postvermerk#1{\def\postvermerk{#1}} \def\postvermerk{}
\def\Adresse#1{\def\adresse{#1}} \def\adresse{}

\def\IhrZeichen#1{\def\ihrzeichen{#1}} \def\ihrzeichen{}
\def\IhrSchreiben#1{\def\ihrschreiben{#1}} \def\ihrschreiben{}
\def\MeinZeichen#1{\def\meinzeichen{#1}} \def\meinzeichen{}
\def\MeinSchreiben#1{\def\meinschreiben{#1}} \def\meinschreiben{}
\def\Datum#1{\def\datum{#1}} 
\def\Betreff#1{\def\betreff{#1}} \def\betreff{}

\def\Anrede#1{\def\anrede{#1}} \def\anrede{}
\def\Gruss#1#2{\def\gruss{#1} \def\grussskip{#2}}
    \def\gruss{} \def\grussskip{}

\def\Unterschrift#1{\def\unterschrift{#1}} \def\unterschrift{}

\def\Anlagen#1{\def\anlagen{#1}} \def\anlagen{}
\def\Verteiler#1{\def\verteiler{#1}} \def\verteiler{}

\long\def\Einrueckung#1{\par\begin{tabular}{@{\hspace{1in}}p{5in}@{}}
    #1\end{tabular}\par}

\newif\ifklassisch\klassischfalse
\def\klassisch{\klassischtrue}

\newif\iftrennlinien\trennlinienfalse
\def\trennlinien{\trennlinientrue}

\newif\iflochermarke\lochermarkefalse
\def\lochermarke{\lochermarketrue}

\newif\iffaltmarken\faltmarkenfalse
\def\faltmarken{\faltmarkentrue}

\newif\iffenstermarken\fenstermarkenfalse
\def\fenstermarken{\fenstermarkentrue}

\newif\ifunserzeichen\unserzeichenfalse
\def\unserzeichen{\unserzeichentrue}

\newenvironment{g-brief}{
  \thispagestyle{firstpage}
  \setlength\unitlength{1mm}

  \c@page\@ne
  \interlinepenalty=200
  \clearpage

  \makebox[25mm][l]{\ihrzeichentext}
  \makebox[45mm][l]{\ihrschreibentext}
  \makebox[25.0mm][l]{\meinzeichentext}
  \makebox[35.0mm][l]{\meinschreibentext}
  \makebox[37.0mm][r]{\datumtext} \\
  \makebox[25mm][l]{\ihrzeichen}
  \makebox[45mm][l]{\ihrschreiben}
  \makebox[25mm][l]{\meinzeichen}
  \makebox[35mm][l]{\meinschreiben}
  \makebox[37.0mm][r]{\datum} \par

  \vspace{8mm}

  \ifcase\@ptsize\vspace{0.045pt}\or \vspace{-1.555pt}\or
  \vspace{-2.955pt} \fi

  \ifx \betreff\empty \else \ifklassisch \betrefftext \space \space
  \betreff \else \textbf{\betreff} \fi \mbox{}
  \par \vspace{-1\parskip} \vspace{8mm} \fi

  \ifcase\@ptsize\vspace{0.045pt}\or \vspace{-1.555pt}\or
  \vspace{-2.955pt} \fi

  \ifx \anrede\empty \else \anrede \medskip\par \fi\nobreak
  \addtolength\textheight{50mm}
  }
{
  \renewcommand{\baselinestretch}{1.0}
  \ifcase \@ptsize\relax \normalsize \or \small \or \footnotesize \fi

  \vspace{\grussskip} \par \nobreak \stopbreaks \noindent
  \parbox[t]{3.5in}{\raggedright \ignorespaces {\normalsize \ifx
      \gruss\empty \else \gruss \mbox{} \\[16.92mm] \fi \ifx
      \empty\unterschrift \relax \else \ifklassisch
      \textsl{(\unterschrift)} \else \unterschrift \fi}
    \fi\strut} \ifx \anlagen\empty \else \vspace{4mm} \par \anlagen
  \par \fi \ifx \verteiler\empty \else \ifx \anlagen\empty
  \vspace{4mm}\par \fi \verteiler \fi \addtolength\textheight{-50mm}\vfill\pagebreak}

\def\ps@firstpage{
  \renewcommand{\baselinestretch}{1.0}
  \ifcase \@ptsize\relax \normalsize \or \small \or \footnotesize \fi
  \headheight16pt\headsep63mm
  \def\@oddhead{
    \unitlength1mm
    \begin{picture}(0,0)
      \put(0, 3){\parbox{180mm}{\Large \ifklassisch \textsl{\quad\name}
          \else \textsf{\quad\name} \fi\hfill}}
	  \put(-9, 9){\logo}
      \iftrennlinien \put(-9,-7){\rule{180mm}{0.5pt}} \fi
      \iflochermarke \put(-20,- 130.50){\line(1,0){4}} \fi
      \iffaltmarken \put(-15,- 75.16){\line(1,0){3}}
      \put(-15,-182.16){\line(1,0){3}} \fi
      \put(\addrindent,0){\begin{picture}(0,0)
	  \put( -9, -22.00){\makebox(85,4)[l]
        {\scriptsize \ifx \retouradresse\empty
          \textrm{ \name\ $\cdot$\ \strasse\ $\cdot$\ \ort \ifx
              \land\empty \else \ $\cdot$\ \land \fi } \else
            \textrm{ \retouradresse} \fi}}
      \put( -9, -22.10){\line(1,0){85}}
      \put(-1,-28.15){\parbox[t]{3in}{\ifx \postvermerk\empty \hfill \par
          \else \textbf{\postvermerk} \par \vspace{2mm} \fi \adresse}}
      \iffenstermarken
      \put(-9,-18.15){\line( 1, 0){1}} \put(-9,-18.15){\line( 0,-1){1}}
      \put(76,-18.15){\line(-1, 0){1}} \put(76,-18.15){\line( 0,-1){1}}
      \put(-9,-61.00){\line( 1, 0){1}} \put(-9,-61.00){\line( 0, 1){1}}
      \put(76,-61.00){\line(-1, 0){1}} \put(76,-61.00){\line( 0, 1){1}}
      \fi
	 \end{picture}}
    \end{picture}
    \hfill}
  \def\@oddfoot{\unitlength1mm
     \renewcommand{\baselinestretch}{1.0}\small\normalsize
	\def\istsprache{german}
    \begin{picture}(0,0)
      \put(-9,0){\parbox{180mm}{\scriptsize \iftrennlinien
          \rule{180mm}{0.5pt} \fi
            \ifklassisch \textsl{
			\begin{tabular}{l} \strasse \quad \\ \ifx \zusatz\empty \else
              \zusatz \quad \\ \fi \ort \quad \ifx \land\empty \else \\
              \land \quad \fi \end{tabular}} \else \textrm{
            \begin{tabular}{l} \strasse \quad \\ \ifx \zusatz\empty \else
              \zusatz \quad \\ \fi \ort \quad \ifx \land\empty \else \\
              \land \quad \fi \end{tabular}} \fi\hfill
          \begin{tabular}{ll}
            \ifx \telefon\empty \else \telefontex & \telefon \\ \fi \ifx
            \telefax\empty \else \telefaxtext & \telefax \\ \fi \ifx
            \telex\empty \else \telextext & \telex \\ \fi \ifx
            \email\empty \else \emailtext & \email \\ \fi \ifx
            \http\empty \else \httptext & \http \\ \fi \
          \end{tabular}\hfill
          \begin{tabular}{lrl}
            \ifx \bank\empty \else \ifx \blz\empty \else \ifx \konto\empty \else \banktext & \multicolumn{2}{l}{\bank} \\ &\blztext :&\blz \\ &\kontotext :&\konto \\ \ \fi \fi \fi
          \end{tabular}}}
    \end{picture} \hfill}
  \def\@evenhead{\@oddhead} \def\@evenfoot{\@oddfoot}}

\def\ps@regularpage{\headheight36pt
  \def\@oddhead{\unitlength1mm
     \begin{picture}(0,0)
      \put(-9,3){\makebox(180,15){\normalsize \ifklassisch \textsl{
        {\Large\quad}\name\hfill\pagename\ \thepage\quad}
        \else \textsf{{\Large\quad}\name\hfill\pagename\
        \thepage\quad} \fi}}
      \iftrennlinien \put(-9,0){\rule{180mm}{0.5pt}} \fi
    \end{picture}\hfill}
  \def\@oddfoot{\empty} \def\@evenhead{\@oddhead}
  \def\@evenfoot{\@oddfoot}}

%\def\istsprache{german}
%\ifx \sprache\istsprache
%\IfFileExists{babel.sty}
%{\RequirePackage[\sprache]{babel}[1997/01/23] }
%{\IfFileExists{german.sty}
%  {\RequirePackage{german}[1997/05/01]}
%  {\ClassError{g-brief}
%    {Neither babel nor german.sty installed !!!}
%    {Get babel or german.sty !!!}}}
%\else
%\IfFileExists{babel.sty}
%  {\RequirePackage[\sprache]{babel}[1997/01/23]}
%  {\ClassError{g-brief}
%    {Babel not installed !!!}
%    {Get babel package !!!}}
%\fi

\endinput
