# WHU-THESIS-LATEX-TEMPLATE
武汉大学学士学位毕业论文 LaTeX 模板(2025).

## 使用方法
下载模板文件, 使用 `XeLaTeX` 编译 `main.tex` 即可.

## 目录结构
```sh
WHU-THESIS-LATEX-TEMPLATE   # 根目录
│  main.tex                 # 主文件
│  README.md                # 说明文件
│  thesis.cls               # 文档类文件, 基于 ctexbook
├─includes                  # 前置及后置部分页面文件
|      cover.tex            # 封面
|      originality.tex      # 原创性声明及版权使用授权书
│      abstract.tex         # 中英文摘要
├─figures					# 图片文件夹，存放图像
|      whu-logo.png			# 武汉大学中文文字
```

## 文档类选项

在主文件中, 设定文档类时 `\documentclass[<options>]{thesis}` 可添加以下选项:

| 选项 | 类型 | 默认值 | 说明 |
| :--- | :--- | :--- | :--- |
| `forprint` | Store True | `False` | 是否隐藏连接颜色，用于打印 |

## 特别鸣谢
