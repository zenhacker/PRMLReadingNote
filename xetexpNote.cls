\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{xetexNote}[2013/11/22 - Making notes which uses the xetex typesetting system.]


% Load the Base Class
\LoadClassWithOptions{scrartcl}

% Begin Requirements
\RequirePackage{ifthen}
\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}

\RequirePackage{graphicx}
\RequirePackage[colorlinks]{hyperref}

\RequirePackage{amsmath,amsfonts,amsthm}					% Math packages
\RequirePackage[svgnames]{xcolor}							% Colors by their 'svgnames'
\RequirePackage{color}
\RequirePackage{geometry}
\RequirePackage{url}										% Clickable URL's
\RequirePackage{paralist}										% compact lists
\RequirePackage{bbding}                         % 一些特殊符号
\RequirePackage{fancyhdr}                       % 页眉页脚
\RequirePackage{changepage}

\geometry{left=2.0cm, right=2.0cm, top=2.5cm, bottom=2.5cm} % 页面边距
\linespread{1.1}				                            % 行间距
\setlength{\parskip}{0.5\baselineskip}		                % 段落间距
\headheight      14pt                                       % 页眉高
\headsep         27pt                                       % 页眉距离
\footskip        27pt                                       % 页脚距离
\pagestyle{fancy}                                           % 页眉页脚风格
\fancyhf{}                                                  % 清空当前页眉页脚的默认设置


%%%%%%%%% 导入中文环境 %%%%%%%%%%
\RequirePackage{fontspec} %使可以設定字型
\RequirePackage{xeCJK} %讓中英文字型分開設置
\setmainfont{Georgia} % 设置英文衬线字体 % Comic Sans MS / Verdana
\setCJKmainfont{华文楷体} % 設定中文字型，英文仍為 TeX 字型
\XeTeXlinebreaklocale "zh" % 這行及下一行使中文能自動換行
\XeTeXlinebreakskip = 0pt plus 1pt

%%%%%% 设置中文字号 %%%%%%
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}     % 初号
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont} % 小初号
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}      % 一号
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}      % 二号
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}  % 小二号
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}  % 三号
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}      % 四号
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}  % 小四号
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}    % 五号
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}   % 小五号
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}  % 六号
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}    % 七号

\frenchspacing									% Better looking spacings after periods
\pagestyle{empty}								% No pagenumbers/headers/footers


%%% Custom sectioning (sectsty package)
%%% ------------------------------------------------------------
\RequirePackage{sectsty}							% Custom sectioning (see below)

\sectionfont{%									% Change font of \section command
	\usefont{OT1}{phv}{b}{n}%					% bch-b-n: CharterBT-Bold font
	\sectionrule{0pt}{0pt}{-5pt}{0pt}
	}

%%% Macros
%%% ------------------------------------------------------------
\newenvironment{changemargin}[2]{\begin{list}{}{
\setlength{\topsep}{0pt}\setlength{\leftmargin}{0pt}
 \setlength{\rightmargin}{0pt}
 \setlength{\listparindent}{\parindent}
 \setlength{\itemindent}{\parindent}
 \setlength{\parsep}{0pt plus 1pt}
 \addtolength{\leftmargin}{#1}\addtolength{\rightmargin}{#2}
 }\item }{\end{list}}

\newcommand{\sepspace}{\vspace*{1em}}			% Vertical space macro

\newcommand{\NoteTitleName}[1]{
		\Huge \usefont{OT1}{phv}{b}{n} \hfill #1
		\par \normalsize \normalfont}

\newcommand{\MyPartr}[1]{\section*{\color{red}\uppercase{#1}}}
\newcommand{\MyPartb}[1]{\section*{\uppercase{#1}}}
\newcommand{\MyBrief}[1]{\begin{changemargin}{-0.35cm}{-2.3cm}
{
    \setlength{\fboxsep}{18pt}
    \colorbox{red!10}
    {
        \begin{minipage}{0.91\textwidth}
        \begin{flushleft}
        \vspace{-0.35cm}
        #1
        \vspace{-0.35cm}
        \end{flushleft}
        \end{minipage}
    }}\end{changemargin}}

\thispagestyle{fancy}
