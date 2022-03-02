%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LaTeX Template for LMAP Ph.D Seminary Announcements
% Version 0.9 (09/06/2020)
%
% Creado por:
% Juan Viu Sos
% https://jviusos.github.io/
%
% License:
% CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cvunizar}[07/06/2020 Modelo LaTeX de CV de la Universidad de Zaragoza]

% ==================================================================
% Loading the article documentclass and processing the options
% ==================================================================

\LoadClass[a4paper,10pt,reqno]{article}

% ==================================================================
% Loading packages
% ==================================================================
% Formatting
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[a4paper, left=2.25cm, right=2.25cm, top=0.75cm, bottom=4.5cm]{geometry}
\RequirePackage{helvet}
\RequirePackage{graphicx}
\RequirePackage{ragged2e}
\RequirePackage{longtable}
\RequirePackage{array}
\RequirePackage{multicol}
\RequirePackage{makecell}
\RequirePackage[table]{xcolor}
\RequirePackage{calc}
%\RequirePackage{suffix}
\RequirePackage{xparse}
%\RequirePackage{xstring}
\RequirePackage{etoolbox}
\RequirePackage{fancyhdr}
\RequirePackage[colorlinks=true]{hyperref}

% Mathematics
\RequirePackage{amsmath, amsthm, amssymb, amsfonts}

% ==================================================================
% Option declarations
% ==================================================================

% Tamanos de letra
\makeatletter
%\newcommand\large{\@setfontsize\large\@xiipt{14}}
%\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
%\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
%\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
%\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
%\renewcommand\normalsize{\@setfontsize\normalsize{9.5pt}{10}}
\renewcommand\large{\@setfontsize\large{10.5pt}{12}}
\renewcommand\Large{\@setfontsize\Large{11pt}{13}}
\renewcommand\LARGE{\@setfontsize\LARGE{12pt}{14}}
\renewcommand\huge{\@setfontsize\huge{15pt}{15}}
\renewcommand\Huge{\@setfontsize\Huge{18pt}{18}}
\makeatother


% Input (el comando actual falla a veces al estar metido dentro de bloque)
\renewcommand{\input}[1]{%
	\csname @@input\endcsname #1%
}%

% Colors
\definecolor{Mycolor1}{HTML}{99CCFF}
\definecolor{Mycolor2}{HTML}{CCECFF}
\definecolor{Mycolortitle}{HTML}{0070C0}

% Fontype and size
\renewcommand*\familydefault{\sfdefault}
\renewcommand\normalsize{\fontsize{10pt}{12pt}\selectfont}

% Format
\setlength{\parindent}{0em}
\setlength{\parskip}{1em}
\setlength{\tabcolsep}{5pt}
\renewcommand{\arraystretch}{1.6}
%\setlength{\arraycolsep}{5pt}

% Link style
\hypersetup{linkcolor=blue,citecolor=blue,filecolor=magenta,urlcolor=blue}

% Bar declaration
\newcommand{\HRule}{\noindent\rule{\linewidth}{0.2mm}}

% If empty
\newcommand{\ifempty}[3]{%
	\setbox0=\hbox{#1\unskip}\ifdim\wd0=0pt
	   #2%
	 \else
	   #3%
	 \fi%
}%


% Auxiliar for Firma
\def\Firma#1{\gdef\Firma{#1}}

% Unizar page style (Bottom)
\fancypagestyle{styleUnizar}{%
	\fancyhf{}
	\renewcommand{\headrulewidth}{0pt}
%	\fancyhead[C]{}
	\fancyfoot[C]{
	\footnotesize Los méritos presentados y numerados son los únicos alegados por el concursante para su valoración y declara que son ciertos los datos que figuran en este curriculum, asumiendo en caso contrario las responsabilidades que pudieran derivarse de las inexactitudes que consten en el mismo.\\
	Firma:\\% ARCHIVO DE FIRMA
    \ifempty{\Firma}{%
      \vspace{1.25cm}%
    }{%
      \includegraphics[height=1.25cm]{\Firma}\\%
    }%
    MC/AS/01-2011 \hfill Página~~{\normalsize\bf \thepage}
	}
}%




% ==================================================================
% Style and Cover and 1st Page
% ==================================================================

%%%%%%%%%%%
%
% Variables para rellenar el documento:
%
\def\TipoPlazas#1{\gdef\TipoPlazas{#1}}
\def\Departamento#1{\gdef\Departamento{#1}}
\def\Areas#1{\gdef\Areas{#1}%
    \construtirPortada{\TipoPlazas}{\Departamento}{\Areas}
}%


%%%%%%%%%%%
%
% Auxiliar to construct the cover and 1st page:
%
% Construction of the first part of announcement (without summary and dates)
\def\construtirPortada#1#2#3{%
    \vspace*{0.5cm}
    \begin{center}
	    \setlength{\fboxrule}{0.75pt}
	    \fbox{
	    \begin{minipage}[c]{0.9\linewidth}
		    \centering\bf\LARGE
		    \bigskip
		    {\color{Mycolortitle}{}
		    MODELO DE CV. PARA PLAZAS DE \MakeUppercase{#1}
		    }\\[2em]
		
		    {\LARGE
		    Departamento de \MakeUppercase{#2}
		    }\\[2em]
		

		    \begin{minipage}{0.75\linewidth}
			    \raggedright
			    Áreas:\\[1em]
			    \hspace*{1cm}\begin{minipage}{0.75\linewidth}
			        \large\MakeUppercase{#3}
			    \end{minipage}
		    \end{minipage}
		    \bigskip
	    \end{minipage}
	    }
    \end{center}
\newpage

\vspace*{0.5cm}
{\hspace*{-0.75cm}
	\includegraphics[height=1.53cm]{unizar_logo}
}

\hfill\begin{minipage}{10cm}
\centering\bf
	{\Large ANEXO III}\\[1ex]
	\large MODELO OFICIAL DE CURRÍCULUM PARA LOS\\[1ex]
	\bfseries CONCURSOS DE PROFESORES AYUDANTES\\[1ex]
	DOCTORES
\end{minipage}
\hspace*{0.5cm}

}


% ==================================================================
% Main Page
% ==================================================================

%%%%%%%%%%%
%
% Medidas de la caja
%
\def\cajaNDocWidht{0.9cm}%

\newlength{\bloqueWidht}%
\setlength{\bloqueWidht}{\dimexpr \textwidth + \cajaNDocWidht}%
%\def\bloqueWidht{1.1\textwidth}%

\newlength{\cajaNSecWidht}%
\setlength{\cajaNSecWidht}{0.05\bloqueWidht}%
%\def\cajaNSecWidht{20pt}%

\newlength{\tituloWidht}%
\setlength{\tituloWidht}{\dimexpr \bloqueWidht - \cajaNSecWidht - 2\tabcolsep+0.1em}%

\newlength{\entryWidht}%
\setlength{\entryWidht}{\dimexpr \bloqueWidht - \cajaNDocWidht - 6\tabcolsep}%

\newlength{\cuerpoWidth}%
\setlength{\cuerpoWidth}{\dimexpr \entryWidht - 2\tabcolsep}%


%%%%%%%%%%%
%
% Main bloques secciones
%
\newenvironment{bloque}[1]
    {%
    \begin{center}%
  		\begin{longtable}{|>{\centering\arraybackslash} p{\cajaNSecWidht}|@{}>{\justify\arraybackslash} m{\cuerpoWidth}| m{0cm} >{\centering\arraybackslash} m{\cajaNDocWidht} m{0cm}|}%
  		\hline%
  		\rowblock{%
  			#1%
  		}%
    }%
    {%
    \hline%
    \end{longtable}% 
    \end{center}%
    \vspace*{-1.5cm}%
    }%
    
    
\newenvironment{bloquesimple}[1]
    {%
     \begin{center}%
  		\noindent\begin{tabular}{|m{\textwidth}|}%
  		\hline%
  		\cellcolor{Mycolor1}%
  			\Large\bf#1\rule{0pt}{15pt}%
  			\\\hline%
    }%
    {% 
    \\\hline%
    \end{tabular}%
    \end{center}%
    \vspace*{-0.5cm}%
    }%

%\NewDocumentCommand{\seccion}{ s m m }{%
%    \IfBooleanTF{#1}{%
%    	\rowsectionNoNum{#2}%
%    }{%
%    	\rowsection{#2}%
%    }%
%    \ifstrempty{#3}{%
%   		%
%   	}{%
%   		\preambNDoc{#3}%
%   	}%
%}
\newcommand{\seccion}[2]{%
	\rowsection{#1}%
	\ifstrempty{#2}{%
		%
	}{%
		\preambNDoc{#2}%
	}%
}

\newcommand{\seccionNoNum}[2]{%
%\WithSuffix\newcommand\seccion*[2]{%
	\rowsectionNoNum{#1}%
	\ifstrempty{#2}{%
		%
	}{%
		\preambNDoc{#2}%
	}%
}%

%\makeatletter
%\newcommand{\seccion}{\@ifstar{\@seccionNoNum}{\@seccionNum}}%
%\newcommand{\@seccionNoNum}[2]{%
%	\rowsectionNoNum{#1}%
%	\ifstrempty{#2}{%
%		%
%	}{%
%		\preambNDoc{#2}%
%	}%
%}%
%\newcommand{\@seccionNum}[2]{%
%	{\ignorespaces}\rowsectionNum{#1}%
%	\ifstrempty{#2}{%
%		%
%	}{%
%		\preambNDoc{#2}%
%	}%
%}%
%\makeatother


\newcommand{\subseccion}[2]{%
	\rowsubsection{#1}%
	\ifstrempty{#2}{%
		%
	}{%
		\preambNDoc{#2}%
	}%
}

\newcommand{\subseccionNoNum}[2]{%
%\WithSuffix\newcommand\seccion*[2]{%
	\rowsubsectionNoNum{#1}%
	\ifstrempty{#2}{%
		%
	}{%
		\preambNDoc{#2}%
	}%
}%




%%%%%%%%%%%
%
% Main entradas
%
\newcommand{\entrada}[1]{%
	\rowentry{%
		#1%
	}%
}%

%\newcommand{\entradaEnum}[1]{%
\NewExpandableDocumentCommand{\entradaEnum}{O{\thendocu}O{} m}{%
	\rowentryEnum[#1][#2]{%
		#3%
	}%
}%


\def\checkbox{%
	\makebox[0pt][l]{$\square$}\raisebox{.15ex}{\hspace{0.1em}$\checkmark$}
}%

\newcommand{\cajaSI}[1]{%
	\rowentry{%
		\rule{0pt}{15pt}#1~~SI~\checkbox~~NO~$\square$%
	}%
}%

\newcommand{\cajaNO}[1]{%
	\rowentry[]{%
		\rule{0pt}{15pt}#1~~SI~$\square$~~NO~\checkbox%
	}%
}%

\newcommand{\cajaSINO}[1]{%
	\rowentry[]{%
		\rule{0pt}{15pt}#1~~SI~$\square$~~NO~$\square$%
	}%
}%

%\newcommand{\cventrada}[4]{%
\NewExpandableDocumentCommand{\cventrada}{O{\thendocu}O{} m m m m}{%
  \rowentry[#1][#2]{%
    {\bf #3}%
    \ifempty{#4}{}{, {\slshape#4}}%
    \ifempty{#5}{}{, #5}%
    \ifempty{#6}{}{ (#6)}%
    .%
    }%
}%

%\newcommand{\cvcharla}[4]{%
\NewExpandableDocumentCommand{\cvcharla}{O{\thendocu}O{} m m m m}{%
		\cventrada[#1][#2]{Charla ``#3''}{#4}{#5}{#6}%
	}%

%\newcommand{\cvshortcomm}[4]{%
\NewExpandableDocumentCommand{\cvshortcomm}{O{\thendocu}O{} m m m m}{%
		\cventrada[#1][#2]{Short Communication ``#3''}{#4}{#5}{#6}%
	}%
	
%\newcommand{\cvposter}[4]{%
\NewExpandableDocumentCommand{\cvposter}{O{\thendocu}O{} m m m m}{%
		\cventrada[#1][#2]{Poster ``#3''}{#4}{#5}{#6}%
	}%	
%\newcommand{\cvminicurso}[4]{%
\NewExpandableDocumentCommand{\cvminicurso}{O{\thendocu}O{} m m m m}{%
		\cventrada[#1][#2]{Minicurso ``#3''}{#4}{#5}{#6}%
	}%

%\newcommand{\cvestancia}[5]{%
\NewExpandableDocumentCommand{\cvestancia}{O{\thendocu}O{} m m m m m}{%
  \rowentry[#1][#2]{%
    {\bf #3}%
    \ifempty{#4}{}{, #4}%
    \ifempty{#5}{}{ (#5)}%
    \ifempty{#6}{}{. { #6}}%
    \ifempty{#7}{}{. Tema \slshape `` #7''}%
    .%
    }%
}%


\NewExpandableDocumentCommand{\entradadoble}{O{\thendocu}O{}mO{\thendocu}O{}m}{%
%\newcommand{\entradadoble}[2]{%
  \rowentry[#1][#2]{%
    #3
    }%
   \rowentryLine[#4][#5]{%
   #6
   }%
}%


%\newcommand{\cvdocencia}[6]{%
\NewExpandableDocumentCommand{\cvdocencia}{O{\thendocu}O{} m m m m m m}{%
  \rowentry[#1][#2]{%
    {\bfseries#3}%
    \ifempty{#4}{}{ {\bfseries(#4)}}%%
    \ifempty{#5}{}{, {\slshape#5}}%
    \ifempty{#6}{}{, #6}%
    \ifempty{#7}{}{ (#7 -- }%
    \ifempty{#8}{}{#8}%
    \ifempty{#7}{}{)}%
    .%
    }%
}%

%\newcommand{\cvdescription}[1]{%
\NewExpandableDocumentCommand{\cvdescription}{O{\thendocu}O{} m}{%
  \rowentryLine[#1][#2]{%
    \slshape#3%
	}%
}%

%\newcommand{\cvdocencia}[7]{%
%  \rowentry{%
%    {\bfseries#1}%
%    \ifempty{#2}{}{ {\bfseries(#2)}}%%
%    \ifempty{#3}{}{, {\slshape#3}}%
%    \ifempty{#4}{}{, #4}%
%    \ifempty{#5}{}{ (#5 -- }%
%    \ifempty{#6}{}{#6}%
%    \ifempty{#5}{}{)}%
%    .%
%    }%
%    \rowentryLine{%
%	\ifempty{#7}{}{{\slshape#7}.}%
%	}%
%}%



\def\pubmarker{\bfseries}%\scshape
\def\pubitem{\sffamily }%\scshape


% CUIDADO: Los comandos \cvlibro, \cvcapitulo y \cvarticulo solo admiten un parámetro opcional para elegir NDoc

%\newcommand{\cvlibro}[4]{%
\NewExpandableDocumentCommand{\cvlibro}{O{\thendocu} m m m m}{%
  \rowentry[#1]{%
    {\bf Mérito:~~L}\newline%
    {\pubmarker Autor/es:}~~{\pubitem#2}\newline
    {\pubmarker Título:}~~{\pubitem#3}\newline
    {\pubmarker Editorial:}~~{\pubitem#4}\newline
    {\pubmarker Año de publicación:}~~{\pubitem#5}
	}%
}%

%\newcommand{\cvcapitulo}[5]{%
\NewExpandableDocumentCommand{\cvcapitulo}{O{\thendocu} m m m m m}{%
  \rowentry[#1]{%
    {\bf Mérito:~~CL}\newline%#1
    {\pubmarker Autor/es:}~~{\pubitem#2}\newline
    {\pubmarker Título del capítulo:}~~{\pubitem#3}\newline
    {\pubmarker Autores del libro:}~~{\pubitem#4}\newline
    {\pubmarker Editorial:}~~{\pubitem#5}\newline
    {\pubmarker Año de publicación:}~~{\pubitem#6}
	}%
}%

%\newcommand{\cvarticulo}[9]{%
\NewExpandableDocumentCommand{\cvarticulo}{O{\thendocu} m m m m m m m m}{%
  \rowentry[#1]{%
    {\bf Mérito:~~A}\newline%#1
    {\pubmarker Autor/es:}~~{\pubitem#2}\newline
    {\pubmarker Título:}~~{\pubitem#3}\newline
    {\pubmarker Revista, Volumen, Número, Páginas:}~~{\pubitem#4}\newline
    {\pubmarker Año de publicación:}~~{\pubitem#5}
    \ifempty{#6}{}{%
		\newline
		{\pubmarker Categoria(s) JCR:}~~{\pubitem#6}\hfill
		{\pubmarker Índ. impacto JCR:}~~{\pubitem#7}
	}%
	\ifempty{#8}{}{%
		\newline
		{\pubmarker Categoria(s) SJR (SCOPUS):}~~{\pubitem#8}\hfill
		{\pubmarker Índ. impacto SJR:}~~{\pubitem#9}
	}%
%	\ifempty{#9}{}{%
%		\newline
%		{\pubmarker Otros indicadores de calidad:}~~{\pubitem#9}
%	}%
  }%
}%


%\newcommand{\cvproyecto}[6]{%
\NewExpandableDocumentCommand{\cvproyecto}{O{\thendocu}O{} m m m m m m}{%
  \rowentry[#1][#2]{%
    {\bfseries#3}%
    \ifempty{#4}{}{, {\slshape#4}}%
    \ifempty{#5}{}{, (#5 -- }%
    \ifempty{#6}{}{#6}%
    \ifempty{#5}{}{)}%
    \ifempty{#7}{}{, P.I:~#7}%
    \ifempty{#8}{}{, (#8)}%
    .%
    }%
}%







%%%%%%%%%%%
%
% Counters:
%
\newcounter{ndocu}%num documento
\refstepcounter{ndocu}

\newcounter{bloque}
\newcounter{seccion}[bloque]
\newcounter{subseccion}[seccion]

\newcounter{seccionNoNum}[bloque]
\newcounter{subseccionNoNum}[seccion]

\newcounter{entryEnum}[subseccion]






%%%%%%%%%%%
%
% Auxiliar bloques, secciones, commandos
%
\newcommand{\rowblock}[1]{%
	{\refstepcounter{bloque}\rule{0pt}{16pt}\huge\bf\thebloque}&
	\multicolumn{4}{|m{\tituloWidht}|}{\cellcolor{Mycolor1}%
	 \LARGE\bf#1%
	}%
	\\\hline%
}%

\newcommand{\rowband}[2]{%
	\multicolumn{5}{|#1|}{%
	#2%
	}%
	\\\hline%
}%

\newcommand{\rowbandTabular}[3]{%
	\rowband{#1}{%
		\hspace*{-\tabcolsep}\begin{tabular}{#2}
		 #3
		\end{tabular}
	}%
}%


\newcommand{\rowsection}[1]{%
	\ifnumcomp{\value{seccion}}{>}{0}{\hline}{}%
	\refstepcounter{seccion}\rule{0pt}{13pt}\Large\bf\thebloque.\theseccion & 
	\multicolumn{4}{|m{\tituloWidht}|}{\cellcolor{Mycolor2}%
	\large\bf#1%
	}%
	\\\hline
}%

\newcommand{\rowsectionNoNum}[1]{%
%	\ifnumcomp{\value{seccionNoNum}}{>}{0}{\hline}{}%
	\hline
	\refstepcounter{seccionNoNum}\rule{0pt}{13pt} &  
	\multicolumn{4}{|m{\tituloWidht}|}{\cellcolor{Mycolor2}%
	\large\bf#1%
	}%
	\\\hline%
}

\newcommand{\rowsubsection}[1]{%
	\ifnumcomp{\value{subseccion}}{>}{0}{\hline}{}%
	\refstepcounter{subseccion}\bf\thebloque.\theseccion.\thesubseccion
	&
	\multicolumn{4}{|m{\tituloWidht}|}{%\cellcolor{blue!50}
	 \normalsize#1%
	}\\\hline
}%

\newcommand{\rowsubsectionNoNum}[1]{%
	\ifnumcomp{\value{subseccionNoNum}}{>}{0}{\hline}{}%
	\refstepcounter{subseccionNoNum} 
	&
	\multicolumn{4}{|m{\tituloWidht}|}{%\cellcolor{blue!50}
	 \normalsize#1%
	}\\\hline
}%

\newcommand{\preambNDoc}[1]{%
	\multicolumn{2}{|m{\entryWidht}}{\footnotesize#1 \vspace*{0.25em} } & \multicolumn{3}{c|}{\underline{\small Nº Doc.}}
	\\
}%


%\newcommand{\ndocumento}[1]{%
%	\setcounter{ndocu}{#1}%
%}%

% Linea que aparece entre distintas entradas
\newcommand{\rowentrysubline}{%
	\arrayrulecolor{black!20}\cline{1-2}\arrayrulecolor{black}
}%

%\newcommand{\vlinesoft}{%
%	{\color{black!20}{|}}
%}%


% Controla la aparicion de numeros en NDoc
\NewExpandableDocumentCommand{\entryNDoc}{O{\thendocu}O{}m}{%
%\newcommand{\entryNDoc}[3]{%
	\ifempty{#3}{}{%First check if the text is empty
		\ifempty{#1}{%
			%\thendocu\refstepcounter{ndocu}%
		}{%
		\ifempty{#2}{%
				\setcounter{ndocu}{#1}\thendocu\refstepcounter{ndocu}%
			}{%
				{#1-#2}\setcounter{ndocu}{#2}\refstepcounter{ndocu}%
			}%
	}%
	}
}%

%\newcommand\recoverNDocus[1]{\@executetest{#1}}
%\def\@executetest#1{%
%	\IfInteger{#1}{%
%		\def\tpdocu{#1}%
%		\def\tudocu{}%
%	}{%
%		\StrBefore[1]{#1}{-}[\tpdocu]
%		\StrBehind[1]{#1}{-}[\tudocu]
%	}%
%	\def\pdocu{\tpdocu}%
%	\def\udocu{\tudocu}%	
%}%
%
%\NewExpandableDocumentCommand{\entryNDoctwo}{O{\thendocu}m}{%
%	\recoverNDocus{#1}%
%	\ifempty{#2}{}{%First check if the text is empty
%		\ifempty{\pdocu}{%
%			%\thendocu\refstepcounter{ndocu}%
%		}{%
%		\ifempty{\udocu}{%
%				\setcounter{ndocu}{\pdocu}\thendocu\refstepcounter{ndocu}%
%			}{%
%				{\footnotesize {\pdocu}-{\udocu}}\setcounter{ndocu}{\udocu}\refstepcounter{ndocu}%
%			}%
%	}%
%	}
%}%

%\newcommand{\rowentry}[1]{%
%	\cline{4-4} \multicolumn{2}{|m{\entryWidht}|}{ #1 } &  & \multicolumn{1}{|>{\centering\arraybackslash}m{\cajaNDocWidht}|}{ \noentrynoNDoc{#1} } &  \\ \rowentrysubline
%}%

\NewExpandableDocumentCommand{\rowentry}{O{\thendocu}O{}m}{%
    \cline{4-4} \multicolumn{2}{|m{\entryWidht}}{ #3 } &  & \multicolumn{1}{|>{\centering\arraybackslash}m{\cajaNDocWidht}|}{ \entryNDoc[#1][#2]{#3} } &  \\ \rowentrysubline
}%entryNDoc{#1}{#2}{#3}

\NewExpandableDocumentCommand{\rowentryEnum}{O{\thendocu}O{}m}{%
    \cline{4-4} \multicolumn{2}{|m{\entryWidht}}{ \refstepcounter{entryEnum}{\bf\theentryEnum:~~}#3 } &  & \multicolumn{1}{|>{\centering\arraybackslash}m{\cajaNDocWidht}|}{ \entryNDoc[#1][#2]{#3} } &  \\ \rowentrysubline
}%entryNDoc{#1}{#2}{#3}

%\NewExpandableDocumentCommand{\rowentrytwo}{O{\thendocu}m}{%
%    \cline{4-4} \multicolumn{2}{|m{\entryWidht}|}{ #2 } &  & \multicolumn{1}{|>{\centering\arraybackslash}m{\cajaNDocWidht}|}{ \entryNDoctwo[#1]{#2} } &  \\ \rowentrysubline
%}%entryNDoc{#1}{#2}{#3}



\NewExpandableDocumentCommand{\rowentryLine}{O{\thendocu}O{}m}{%
    \cline{4-4} \multicolumn{2}{|m{\entryWidht}}{ #3 } &  & \multicolumn{1}{|>{\centering\arraybackslash}m{\cajaNDocWidht}|}{ \entryNDoc[#1][#2]{#3} } &  \\ \Xcline{1-2}{0.1pt}
}




% ==================================================================
% DATOS PERSONALES
% ==================================================================
%%%%%%%%%%%
%
% Variables para rellenar el documento:
%
\def\Nombre#1{\gdef\Nombre{#1}}
\def\Apellidos#1{\gdef\Apellidos{#1}}
\def\DocIdentificacion#1{\gdef\DocIdentificacion{#1}}
\def\NacFecha#1{\gdef\NacFecha{#1}}
\def\NacProvincia#1{\gdef\NacProvincia{#1}}
\def\NacLocalidad#1{\gdef\NacLocalidad{#1}}
\def\ResProvincia#1{\gdef\ResProvincia{#1}}
\def\ResLocalidad#1{\gdef\ResLocalidad{#1}}
\def\ResCodPostal#1{\gdef\ResCodPostal{#1}}
\def\ResDomicilio#1{\gdef\ResDomicilio{#1}}
\def\Tlfno#1{\gdef\Tlfno{#1}}
\def\Email#1{\gdef\Email{#1}
	\bloqueDatosPersonales
}%


%%%%%%%%%%%
%
% Constructor \bloqueDatosPersonales
%
\def\bloqueDatosPersonales{%
\begin{bloquesimple}{DATOS PERSONALES}
	{\bf Apellidos y Nombre:}~\Apellidos,~\Nombre\\
	{\bf DNI o Pasaporte:}~\DocIdentificacion\\
	{\bf Nacimiento: Provincia y Localidad}~\NacProvincia,~\NacLocalidad \hfill 
	{\bf Fecha}~\NacFecha \\
	{\bf Residencia: Provincia}~\ResProvincia \hfill{\bf Localidad}~\ResLocalidad \hfill
	{\bf C.P.}~\ResCodPostal \\
	{\bf Domicilio:}~\ResDomicilio \hfill\hfill~
	{\bf Tel\'{e}fono:}~\Tlfno \hfill~
	{\bf e-mail:}~\href{mailto:\Email}{\Email}
\end{bloquesimple}
}%



% ==================================================================
% SITUACION PROFESIONAL ACTUAL
% ==================================================================
%%%%%%%%%%%
%
% Variables para rellenar el documento:
%
\def\Centro#1{\gdef\Centro{#1}}
\def\Actividad#1{\gdef\Actividad{#1}}
\def\Categoria#1{\gdef\Categoria{#1}}

%%%%%%%%%%%
%
% Constructor \bloqueSituacionActual
%
\def\bloqueSituacionActual{%
\begin{bloquesimple}{SITUACI\'{O}N PROFESIONAL ACTUAL}
	{\bf Empresa/Centro/Entidad:}~\Centro\\
	{\bf Actividad principal:}~\Actividad\\
	{\bf Categor\'{i}a profesional}~\Categoria
\end{bloquesimple}
}%





% ==================================================================
% Last Page
% ==================================================================
\AtEndDocument{%
    \newpage
    
    \fcolorbox{black}{Mycolor1}{
	    \begin{minipage}[c][20pt]{\linewidth}
	    	\centering\Large\bf  INSTRUCCIONES DE CUMPLIMENTACI\'{O}N
	    \end{minipage}
    }
    \bigskip
    
    {\bf\large NOTAS GENERALES}
    \begin{enumerate}
    	    \item Todos los méritos alegados estar\'{a}n debidamente justificados.
    	    
    	    \item Los documentos justificativos de cada mérito se numerar\'{a}n correlativamente, en rojo y en el \'{a}ngulo superior derecho de la primera hoja de cada documento.
    	    
    	    \item Utilice fotocopias de las hojas del modelo de curr\'{i}culum, si es necesario.
    \end{enumerate}
    
    \bigskip
    
    {\bf\large CUMPLIMENTACI\'{O}N DEL CURR\'{I}CULUM}
    \begin{itemize}
    	    \item Nº Doc. \hspace*{5pt} \begin{minipage}[t]{0.9\linewidth} Consigne el n\'{u}mero correspondiente al documento justificativo del mérito. Si el documento justificativo aportado se refiere a varios méritos, repita  el n\'{u}mero  en  las casillas correspondientes a cada uno de ellos.\end{minipage}\\
    	    
    	    \item Firme, por favor, todas las hojas del curr\'{i}culum que entregue cumplimentadas, ya sean originales o fotocopias.
    \end{itemize}
}%
