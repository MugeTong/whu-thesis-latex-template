# WHU-THESIS-LATEX-TEMPLATE
武汉大学学士学位毕业论文 LaTeX 模板(2025).

本代码库已于2025年5月20日完成所有的核心任务开发, 并符合武汉大学电气与自动化学院给定的论文格式要求. 该模板曾被使用, 其论文获得过本科优秀毕业论文. 后续改进将着重针对模板的使用进行教程开发.

## 快速开始
### 在VS Code上编辑
1. 下载该库并解压, 使用VS Code打开根目录
2. 下载插件 `LaTeX Workshop`, 并确保你的电脑上安装了LaTeX
3. 进入 `main.tex` 文件进行编译.
### 在Overleaf上编辑
1. 下载模板文件并上传至overleaf
2. 指定入口文件为 `main.tex`
3. 使用 `XeLaTeX` 编译即可.


## 目录结构
```sh
WHU-THESIS-LATEX-TEMPLATE   # 根目录
│  main.tex                 # 主文件
│  README.md                # 说明文件
│  thesis.cls               # 文档类文件, 基于 ctexbook
├─includes                  # 前置及后置部分页面文件
│      cover.tex            # 封面
│      originality.tex      # 原创性声明及版权使用授权书
│      abstract.tex         # 中英文摘要
│      reference.bib        # 参考文献
│      acknowledgements.tex # 致谢
├─styles                    # 样式文件夹
│      ....sty              # 样式文件(略)
├─figures                   # 图片文件夹, 存放图像
│      whu-logo.png         # 武汉大学中文文字
│      ...
```

## 文档类选项

在主文件中, 设定文档类时 `\documentclass[<options>]{thesis}` 可添加以下选项:

| 选项 | 类型 | 默认值 | 说明 |
| :--- | :--- | :--- | :--- |
| `forprint` | Store True | - | 是否隐藏连接颜色, 用于打印 |
| `anonymous` | Store True | - | 是否匿名, 用于盲审 |
| `addnocite` | Store True | - | 是否显示未引用的参考文献 |

## 具体使用

| 场景       | 命令                             | 说明                               |
| :--------- | :------------------------------- | :--------------------------------- |
| 章标题     | `\chapter{<章标题>}`             | 新起一个章节                       |
| 节标题     | `\section{<节标题>}`             | 新起一节                           |
| 条标题     | `\subsection{<条标题>}`          | 新起一条                           |
| 更小的标题 | `\noindent\textbf{<更小的标题>}` | 不建议再添加更小标题, 直接加粗显示 |


## 致谢

- [黄正华老师的模板](http://aff.whu.edu.cn/huangzh/)
