\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{qgabe-worksheet}[2020/01/24 Worksheet class]

% Pass options to article class:
% See Page 13 of https://cs.brown.edu/about/system/managed/latex/doc/clsguide.pdf
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article} 

\usepackage[margin=1in]{geometry}

% Color Definitions
\usepackage[dvipsnames]{xcolor}
\definecolor{greyed}{HTML}{666666}
\definecolor{headings}{HTML}{2b2b2b}
\definecolor{subheadings}{HTML}{6A6A6A}
\definecolor{authordetails}{HTML}{333333}

% Font settings
\usepackage{fontspec}
\setmainfont[Path =fonts/sourcesanspro/,
	UprightFont = *-Regular,
	ItalicFont = *-Italic,
	BoldFont = *-Bold,
	BoldItalicFont = *-BoldItalic,
]{SourceSansPro}
\setsansfont[Mapping=tex-text, Path =fonts/sourcesanspro/,
	UprightFont = *-Light,
	ItalicFont = *-LightItalic,
	BoldFont = *-SemiBold,
	BoldItalicFont = *-SemiBoldItalic,
]{SourceSansPro}
\setmonofont[Path =fonts/dejavusansmono/,
	Scale=MatchLowercase, FakeStretch=0.9,
	UprightFont = *,
	ItalicFont = *-Oblique,
	BoldFont = *-Bold,
	BoldItalicFont = *-BoldOblique,
]{DejaVuSansMono}

%Worksheetdetails Command
\newcommand{\worksheetdetails}[6]{
	% Title and subtitle
	\raggedright{
		\fontsize{18pt}{18pt}
		\color{headings}
		\fontspec[Path = fonts/lato/]{Lato-Bold}\selectfont #1
		\\[5pt]
		\fontsize{18pt}{18pt}
		\fontspec[Path = fonts/lato/]{Lato-SemiBold}\selectfont #2
		\\[5pt]
		\fontsize{14pt}{14pt}
		\color{subheadings}
		\fontspec[Path = fonts/lato/]{Lato-Light}\selectfont #3
		\\[5pt]
		\fontsize{12pt}{14pt}
		\color{authordetails}
		\fontspec[Path = fonts/lato/]{Lato-Light}\selectfont \textsc{#4 #5}
	}
	\hfill
	\raggedright{
		\fontsize{10pt}{10pt}
		\color{greyed}
		\fontspec[Path = fonts/lato/]{Lato-Light}\selectfont #6
	}
	\\[5pt]
}

\renewcommand{\normalsize}{\fontsize{12}{15}\selectfont}