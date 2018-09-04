\LoadClass{article}
\RequirePackage{xeCJK}
\RequirePackage{ctex}

%插图
\RequirePackage{graphicx}


%子图和图注
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{bicaption}


%页面设置
\RequirePackage{geometry}
\linespread{1.3} %行距
\geometry{top=1in,bottom=1in,left=1in,right=1in}


\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{listings}
\RequirePackage{xcolor}


%数学公式
\RequirePackage{amsmath,amssymb}
\RequirePackage{bm} %公式\bm{}加粗
\RequirePackage{cases} 

%\RequirePackage{tabularx}

%制表，从zjuthesis复制过来的
\RequirePackage{booktabs}
% 长表格宏包，tabu宏包longtabu环境需要。
\RequirePackage{longtable}
% 制表宏包，推荐使用，不使用其他制表宏包。
\RequirePackage{tabu}
% 下划线
\RequirePackage{ulem}


%hyperref包和autoref的设置
\RequirePackage[colorinlistoftodos]{todonotes}
\RequirePackage[colorlinks=true, allcolors=blue]{hyperref}
\renewcommand{\figureautorefname}{图}%修改autoref显示
\renewcommand{\tableautorefname}{表}%
\renewcommand{\equationautorefname}{公式}


%--------------------------默认的封面信息
\newcommand{\major}{电机}
\newcommand{\institute}{电气工程学院}
\newcommand{\name}{GQY}
\newcommand{\stuid}{12345678}
\newcommand{\newdate}{2018-08-31}
\newcommand{\courseworktitle}{GQY的一个课程作业标题要长长长长长长长长长来测试换行}
\newcommand{\coursetitle}{\LaTeX 学习}
\newcommand{\tutor}{某老师}
\newcommand{\email}{1234567@email.com}
%默认的封面信息--------------------------

%----------------------------标题和封面
\newcommand{\makemycover}{
\begin{titlepage}
\center   %center everything
\includegraphics[width=.8\linewidth]{ZJDX} \\ %logo
\vspace{1cm}
\includegraphics[width=.4\linewidth]{QSY} %求是鹰
\vspace{2cm}

\begin{Large}
	\begin{tabular}[t]{rl}
	报告题目： &  {\begin{minipage}[t]{.6\columnwidth}
			\uline{\courseworktitle \hfill}
			\end{minipage}}\\ 
	\end{tabular} \\
	\vspace{1cm}
	
	\begin{tabular}{rc}
	课程名称： &  \coursetitle \\ 
	\cline{2-2} 
	指导教师：& \tutor \\ 
	\cline{2-2} 
	姓名： & \name \\ 
	\cline{2-2} 
	学号： & \stuid \\ 
	\cline{2-2} 
	专业：& \major \\ 
	\cline{2-2} 
	学院： & \institute \\ 
	\cline{2-2} 
	邮箱： & \email \\ 
	\cline{2-2} 
	\end{tabular}
\end{Large}
\end{titlepage}
}
%标题和封面----------------------------

%-----------------------------设置各级标题
\setcounter{secnumdepth}{3}  %第三级标题也设置编号
\renewcommand\thesection{\chinese{section}、} %section: 一、
\renewcommand\thesubsection{\arabic{section}.\arabic{subsection} } %subsection 1.1
\renewcommand\thesubsubsection{(\arabic{subsubsection})} %subsubsection (1)

\titlespacing{\subsubsection}{2em}{*4}{*1.5}
%设置各级标题-----------------------------


%-------------------------设置字体，我还没学会
\newCJKfontfamily[song]\song{SimSun}[AutoFakeBold]
% \setmainfont{CMU Serif}
\setmonofont{Lucida Console}
\setsansfont{SimHei}
\titleformat*{\section}{\large\bfseries}
\titleformat*{\subsection}{\normalsize\bfseries}
\titleformat*{\subsubsection}{\normalsize}
%设置字体，我还没学会-------------------------





%%%%%%%%%%%%%%%% for code listings  %%%%%%%%%%%%%%%%
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{comment}{rgb}{0.56,0.64,0.68}
\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  xleftmargin=2em,
  xrightmargin=2em,
  showstringspaces=false,
  columns=flexible,
  framerule=1pt,
  rulecolor=\color{gray!35},
  backgroundcolor=\color{gray!5},
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{comment},
  stringstyle=\color{dkgreen},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=2,
}
%%%%%%%%%%%%%%%% for code listings  %%%%%%%%%%%%%%%%


\pagestyle{fancy}
