\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{resume_cover_letter}

\LoadClass[12pt,a4paper,sans]{moderncv}

% Packages

\moderncvtheme[blue]{classic}
%\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{geometry}
\RequirePackage{moderntimeline}
\RequirePackage{multicol}
\RequirePackage{fontawesome}
\moderncvicons{awesome}
\RequirePackage{tikz}



% Configure page margins with geometry
\geometry{left=1.5cm, top=0.75cm, right=1.5cm, bottom=1cm, footskip=.5cm}

% Configure column width for timelines
\setlength{\hintscolumnwidth}{2cm}

% Time interval for resume entries
\tlmaxdates{2014}{2022}

% Width of the timeline
\tlwidth{0.8ex}

% Custom fonts for header
\renewcommand{\namefont}{\fontsize{40}{35}\mdseries\upshape}
\renewcommand{\titlefont}{\fontsize{18}{20}\mdseries\upshape}
\renewcommand{\addressfont}{\fontsize{10}{12}\mdseries\itshape}

%%%%%%%%%%% Thick section line %%%%%%%%%%%

% define column thickness
\newlength{\hintscolumnthickness}
\setlength{\hintscolumnthickness}{3pt}
% define column width
\newlength{\sidecolumnwidth}
\RenewDocumentCommand{\section}{sm}{%
% set column width (need to do this because title lenght is different each time)
\setlength{\sidecolumnwidth}{(\linewidth-\widthof{\sectionstyle{#2}}-\separatorcolumnwidth-\separatorcolumnwidth)/2}
  \par\addvspace{3mm}%
  \phantomsection{}% reset the anchor for hyperrefs
  \addcontentsline{toc}{section}{#2}%
  % left
  \parbox[t]{\sidecolumnwidth}{\strut\raggedleft\raisebox{\baseletterheight}{\color{color1}\rule{\sidecolumnwidth}{\hintscolumnthickness}}}%
  % title
  \hspace{\separatorcolumnwidth}%
  \sectionstyle{#2}%
  \hspace{\separatorcolumnwidth}%
  % right
  \parbox[t]{\sidecolumnwidth}{\strut\raggedleft\raisebox{\baseletterheight}{\color{color1}\rule{\sidecolumnwidth}{\hintscolumnthickness}}}%
  \par\nobreak\addvspace{2mm}
  %\@afterheading % to avoid a pagebreak after the heading
 }
