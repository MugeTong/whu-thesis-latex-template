% 提供一个武汉大学学士学位毕业论文模板, 本模板基于 ctexbook 文档类
\ProvidesClass{thesis}[
    2025/03/10
    v0.1.2
    Wuhan University Thesis Template for Bachelor Degree.
]
\LoadClass[
    a4paper,  % A4 纸张
    oneside,  % 单面打印
    zihao=-4,  % 正文字号为小四
]{ctexbook}  % 使用 ctexbook 文档类
\setmainfont{Times New Roman}
% 将用户定义的其他选项传递给 ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

% 定义论文有关信息的令牌列表
% 使用 \tokename={<内容>} 设置令牌内容
% 使用 \the\tokenname 获取令牌内容
% 为了剥离封面, 舍弃了\title, \author, \date命令
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


\RequirePackage{styles/class-packages}      % 加载宏包

\RequirePackage{styles/page-margin}         % 页边距设置
\RequirePackage{styles/header-footer}       % 页眉页脚设置
\RequirePackage{styles/line-spacing}        % 行距设置
\RequirePackage{styles/figure-table}        % 图表设置
\RequirePackage{styles/theorem}             % 定理类环境设置
\RequirePackage{styles/list}                % 常用列表环境设置
\RequirePackage{styles/references}          % 参考文献设置


\RequirePackage{styles/class-options}       % 加载选项


\RequirePackage{styles/cover}               % 封面设置
\RequirePackage{styles/copyright}           % 原创性声明及版权使用授权书样式
\RequirePackage{styles/abstract}            % 摘要设置
\RequirePackage{styles/contents}            % 目录设置
\RequirePackage{styles/chapter-section}     % 章节标题设置

% 结束
\endinput
