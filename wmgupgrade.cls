%%
%% wmgupgrade.cls',
%%
%% For WMG student and stuff
%% 
%% Author: Changrui Chen <changrui.chen@warwick.ac.uk>

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{wmgupgrade}[2021/06/09 v1.0.0 WMG Upgrade Report Template]
\LoadClassWithOptions{article}
% ===============================================
% PKG

\RequirePackage{times}
\RequirePackage[verbose=true,a4paper,left=3cm,right=3cm,top=3cm,bottom=3cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{sectsty}
\RequirePackage{hyperref}
\RequirePackage{booktabs}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage{tabularx}
% ===============================================
% Font Style
\linespread{1.5}
\renewcommand{\normalsize}{\fontsize{11pt}{12pt}\selectfont}
\renewcommand{\Huge}{\fontsize{26pt}{30pt}\selectfont}
\renewcommand{\Large}{\fontsize{16pt}{24pt}\selectfont}
\renewcommand{\large}{\fontsize{14pt}{24pt}\selectfont}
\renewcommand{\small}{\fontsize{8pt}{10pt}\selectfont}
\normalsize

% ===============================================
% Define Information

\newcommand*{\id}[1]{
  \def\@id{#1}
}
\newcommand*{\advisor}[1]{
  \def\@advisor{#1}
}


% ===============================================
% Page Structure
\pagestyle{fancyplain}% <- use fancyplain instead fancy
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyhead[L]{\color{gray}\@author}% <- added
\fancyhead[R]{\color{gray} MPhil/PhD Upgrade Report}
\fancyfoot[R]{\color{gray}\thepage}
\setlength{\parindent}{0pt}
\setlength{\parskip}{1em}

\sectionfont{\Large}
\subsectionfont{\large}
\subsubsectionfont{\normalsize}


\newcommand\blankpage{
  \null
  \thispagestyle{empty}
  \addtocounter{page}{-1}
  \newpage
}
\newenvironment{singlepage}{
  \clearpage
  \thispagestyle{empty}
}{\clearpage}


\newcommand\makepreface{
    \begin{singlepage}
        \centering
	    \includegraphics[width=0.5\textwidth]{wmg_logo}

        
        \vspace{30pt}
        
        {\Large MPhil/PhD Upgrade Report}
    
        \vspace{50pt}
    
        {\Huge\textbf\@title}
        
        \vspace{80pt}
        
        {\Large\@author}
        
        \vspace{10pt}
        
        {\Large(\@id)}
        
        \vspace{150pt}
        
        {\Large Supervisors}
        
        \vspace{10pt}
        
        {\Large\@advisor}
    \end{singlepage}
}

\renewenvironment{abstract}{
  \clearpage
  \section*{Abstract}
  \addcontentsline{toc}{section}{Abstract}
  \pagenumbering{roman}

}{
  \newpage
}

\newcommand\maketoc{
    \addcontentsline{toc}{section}{Table of Contents}
    \tableofcontents
    \newpage
}
\newcommand\makelistoftables{
    \addcontentsline{toc}{section}{List of Tables}
    \listoftables
    \newpage
}
\newcommand\makelistoffigures{
    \addcontentsline{toc}{section}{List of Figures}
    \listoffigures
    \newpage
}