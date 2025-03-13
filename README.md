# WHU-THESIS-LATEX-TEMPLATE
武汉大学学士学位毕业论文 LaTeX 模板(2025).

## 快速开始
下载模板文件, 使用 `XeLaTeX` 编译 `main.tex` 即可.
> [!NOTE]
> 由于字体库的原因, 建议最后再在windows上编译检查.

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

## 具体使用

| 场景       | 命令                             | 说明                               |
| :--------- | :------------------------------- | :--------------------------------- |
| 章标题     | `\chapter{<章标题>}`             | 新起一个章节                       |
| 节标题     | `\section{<节标题>}`             | 新起一节                           |
| 条标题     | `\subsection{<条标题>}`          | 新起一条                           |
| 更小的标题 | `\noindent\textbf{<更小的标题>}` | 不建议再添加更小标题, 直接加粗显示 |


## 致谢

- [黄正华老师的模板](http://aff.whu.edu.cn/huangzh/)
