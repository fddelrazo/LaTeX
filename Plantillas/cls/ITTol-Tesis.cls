%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Federico del RAZO LÓPEZ
% TecNM / Instituto Tecnológico de TOLUCA / DEPI
% 22-Oct-2022
% Adaptado de : 	Ildeberto de los Santos Ruiz
% 				Instituto Tecnológico de Tuxtla Gutiérrez, 2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Identification
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Tesis}[2018/03/12]


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Preliminary declarations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\PassOptionsToPackage{T1}{fontenc}
\PassOptionsToPackage{utf8}{inputenc}
\PassOptionsToPackage{english,spanish,mexico,es-noindentfirst}{babel}
\PassOptionsToPackage{letterpaper,margin=2.5cm,left=3cm}{geometry}
\PassOptionsToPackage{small,bf}{caption}
\PassOptionsToPackage{colorlinks=true}{hyperref}
\PassOptionsToPackage{table,xcdraw}{xcolor}


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[oneside,openany]{book}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fontenc}
\RequirePackage{inputenc}
\RequirePackage{microtype}
\RequirePackage{fourier}
\RequirePackage{babel}
\RequirePackage{geometry}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathrsfs}
\RequirePackage{pifont}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{siunitx}
\RequirePackage{fancyvrb}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{apacite}
\RequirePackage{multirow}
\RequirePackage{titling}
\RequirePackage{booktabs}
\RequirePackage{epigraph}
\RequirePackage{emptypage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Opcionales si incluye 
\RequirePackage{algorithm2e}			% Algoritmos
\RequirePackage{amsthm}			% Teoremas
\RequirePackage{listings}			        % Listado de Código Fuente (C/C++, Python, PHP)

\DisableLigatures[f]{encoding=*,family=*}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% More declarations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareGraphicsExtensions{.pdf,.png,.jpg}
\graphicspath{{./figuras/}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% More declarations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\parskip}{\medskipamount}
\newcommand{\titulo}[1]{\newcommand{\thetitle}{#1}}
\newcommand{\autor}[1]{\newcommand{\theauthor}{#1}}
\newcommand{\director}[1]{\newcommand{\thedirector}{#1}}
\newcommand{\codirector}[1]{\newcommand{\thecodirector}{#1}\newcommand*{\CODIRECTOR}{}}
\newcommand{\tutor}[1]{\newcommand{\thetutor}{#1}\newcommand*{\TUTOR}{}}
\newcommand{\grado}[1]{\newcommand{\thegrado}{#1}}
\newcommand{\autorizacion}[1]{\newcommand{\theautorizacion}{#1}}
\newcommand{\noskip}{\setlength{\parskip}{0em}}
\renewcommand{\maketitle}{


\begin{titlepage}              								% Portada
\pagenumbering{alph}\thispagestyle{empty}\noindent		
\includegraphics[width=\textwidth]{header-ITTol}			% Encabezado
\begin{center}
\textcolor{orange}{\rule{\textwidth}{1pt}\\[-0.6\baselineskip]}	% Líneas horizontales				
\textcolor{blue}{\rule{\textwidth}{2pt}}
\end{center}
\begin{minipage}{0.07\textwidth}						 % Líneas verticales
\textcolor{orange}{\rule{1pt}{0.8\textheight}}
\textcolor{blue}{\rule{2pt}{0.8\textheight}\quad}
\textcolor{orange}{\rule{1pt}{0.8\textheight}}
\textcolor{blue}{\rule{2pt}{0.8\textheight}}
\end{minipage} %}
\begin{minipage}{0.93\textwidth}
\begin{center}
\null\bigskip\bigskip\bigskip
\huge\textbf{\thetitle}											% Título
\end{center}
\bigskip\bigskip
\begin{center}
\large Tesis que presenta \\[0.5\baselineskip] \Large\textbf{\theauthor}	% Autor
\end{center}
\bigskip
\begin{center}
\large como requisito para obtener el grado de \\[0.5\baselineskip]
\Large\textbf{\thegrado}										% Grado
\end{center}
\bigskip\bigskip\bigskip
\begin{center} \large
Director de tesis: \textbf{\thedirector}								% Director
\ifdefined\CODIRECTOR
	\\ Codirector de tesis: \textbf{\thecodirector} \\					% Codirector
\else
	\\
\fi
\ifdefined\TUTOR											% Tutor
	\smallskip
	Tutor: \textbf{\thetutor}
\else
	\null
\fi
\end{center}
\bigskip\bigskip
\begin{center}
Metepec, Estado de México, México \\[0.5\baselineskip] \thedate
\end{center}
\end{minipage}
\end{titlepage}
}

\newcommand{\insertarautorizacion}								
{\thispagestyle{empty}
\begin{center}
\includegraphics[height=\textheight]{\theautorizacion}				% Oficio de autorización (pdf, png, jpg)
\end{center}}
\newcommand{\epigrafe}[2]
{\vspace{-2\baselineskip}\epigraph{#1}{#2}\vspace{-\baselineskip}}

\newenvironment{abstract}									%Resumen
{\cleardoublepage\null\vfill\thispagestyle{empty}\begin{center}
\large\bfseries\abstractname\end{center}}
{\vfill\null}

\newenvironment{dedicatoria}									% Dedicatoria
{\cleardoublepage\null\vfill\thispagestyle{empty}}
{\vfill\vfill\null}

\newenvironment{agradecimientos}								% Agradecimientos
{\cleardoublepage\null\vfill\thispagestyle{empty}}
{\vfill\null}
\normalsize
\endinput