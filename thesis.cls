% 提供一个武汉大学学士学位毕业论文模板，本模板基于 ctexbook 文档类
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[
    2025/03/10
    v0.0.2
    Wuhan University Thesis Template for Bachelor Degree.
]
\LoadClass[
    a4paper,  % A4 纸张
    oneside,  % 单面打印
    zihao=-4,  % 正文字号为小四
]{ctexbook}  % 使用 ctexbook 文档类
% 将用户定义的选项传递给 ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax


% 设置页边距
\RequirePackage[
    top=2.5truecm,
    bottom=2truecm,
    left=2.5truecm,
    right=2truecm,
    includefoot,  % 页脚计入页边距
    xetex,  % 指定 XeTeX 引擎
]{geometry}
% 设定页眉页脚
\RequirePackage{fancyhdr}  % 页眉页脚宏包
\pagestyle{fancyplain}  % 自定义正文页面
\fancyhf{}  % 清除以前对页眉页脚的设置
\fancyhead[C]{武汉大学本科毕业论文（设计）}  % 页眉添加“武汉大学本科毕业论文（设计）”
\fancyfoot[C]{\songti \zihao{5} \thepage}  % 页脚居中显示页码，如 1
% 设定特殊页面如章节的页眉页脚
\fancypagestyle{plain}{
\fancyhead{}  % 清除页眉
\fancyfoot{}  % 清除页脚
\renewcommand{\headrulewidth}{0pt}  % 取消页眉线
\fancyfoot[C]{\zihao{5} \thepage}
}
% 设置1.5倍行距，字体间距为标准间距，无需设置
\linespread{1.5}


% 定义论文有关信息的令牌列表
% 使用 \tokename={<内容>} 设置令牌内容
% 使用 \the\tokenname 获取令牌内容
% 为了剥离封面，舍弃了\title, \author, \date命令
\newtoks\AuthorChinese      % 姓名
\newtoks\AuthorEnglish      % 姓名英文
\newtoks\StudentNumber      % 学号
\newtoks\SecurityLevel      % 密级
\newtoks\TitleChinese       % 中文题目
\newtoks\TitleEnglish       % 英文题目
\newtoks\SupervisorChinese  % 指导教师中文名
\newtoks\SupervisorEnglish  % 指导教师英文名
\newtoks\DateChinese        % 中文日期
\newtoks\DateEnglish        % 英文日期
\newtoks\SchoolChinese      % 学校中文名
\newtoks\SchoolEnglish      % 学校英文名
\newtoks\DepartmentChinese  % 学院中文名
\newtoks\DepartmentEnglish  % 学院英文名
\newtoks\MajorChinese       % 学科专业中文名
\newtoks\MajorEnglish       % 学科专业英文名


% 其他包
\RequirePackage{graphicx}                   % 图形宏包
\RequirePackage{amsmath,amssymb}            % 数学公式字体宏包
\RequirePackage[amsmath,thmmarks]{ntheorem} % 定理类环境宏包
\RequirePackage{color,xcolor}               % 颜色宏包
\RequirePackage{enumerate}                  % 拓展列表编号样式
\RequirePackage{hyperref}                   % 超链接宏包
\RequirePackage{makecell}                   % 表格特定列居中


% 定义打印选项，隐藏超链接颜色
\newif\ifprint\printfalse
\DeclareOption{forprint}{\printtrue}
\ProcessOptions\relax
\ifprint
    % 启用打印时，隐藏超链接颜色
    \hypersetup{hidelinks}
\else
    % 未启用时，引用颜色为洋红色，链接颜色为蓝色
    \hypersetup{citecolor=magenta,linkcolor=blue}
\fi

% 设定图片文件夹目录
\graphicspath{{figures/}}

% 初始化封面创建命令，引入 cover.tex
\def\makecover{\input{includes/cover}}
% 初始化原创性声明创建命令，引入 original.tex
\def\makeoriginal{\input{includes/original}}
% 初始化摘要创建命令，引入 abstract.tex
\def\makeabstract{\input{includes/abstract}}
% 设定目录
\ctexset{contentsname={\heiti \zihao{-2} \textmd{目\qquad 录}}}
