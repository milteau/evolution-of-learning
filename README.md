# 学习的进化

> 从单细胞到人工智能，一本关于「学习如何学习」的开源小册子

[![GitHub stars](https://img.shields.io/github/stars/frank-peng/evolution-of-learning?style=social)](https://github.com/frank-peng/evolution-of-learning/stargazers)
[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-blue.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

## 📖 内容简介

这是一本关于学习的科普小册子，探讨两个核心问题：

1. **学习是什么** —— 从生物进化和神经科学的角度，理解学习在大脑层面是如何发生的
2. **如何更好地学习** —— 基于科学理解，设计更符合大脑运作规律的学习方式

### 章节导航

| 章节 | 主题 |
|------|------|
| 前言 | 为什么学习需要「进化」 |
| 第一章 | 学习的生物学进化 |
| 第二章 | 神经元的连接：学习的物理基础 |
| 第三章 | 记忆的进化 |
| 第四章 | 专注力的进化 |
| 第五章 | 抽象思维与概念学习 |
| 第六章 | 社会学习 |
| 第七章 | 学习与情感 |
| 尾声 | 学习的下一步进化 |

### 你会学到什么

- 🧠 **生物基础**：学习能力如何在数亿年的进化中一步步涌现
- 🔬 **神经科学**：记忆、注意力、情感如何影响学习
- 📚 **学习策略**：基于科学的、高效的学习方法
- 🚀 **面向未来**：在AI时代，人类学习的独特价值在哪里

## 📥 获取本书

### 在线阅读

- [HTML 在线版](./docs/evolution-of-learning.html)

### 下载阅读

- [PDF 版本](./docs/evolution-of-learning.pdf)
- [EPUB 版本](./docs/evolution-of-learning.epub)

### 源码获取

本书使用 Emacs Org Mode 编写，源文件位于项目根目录：

```
学习的进化.org
```

## 🛠️ 构建本书

本书使用 [Emacs](https://www.gnu.org/software/emacs/) + [Org Mode](https://orgmode.org/) 编写，支持多种格式导出。

### 导出要求

- Emacs 27+
- Org Mode 9+

### 导出命令

```elisp
;; 导出为 HTML
(org-html-export-to-html)

;; 导出为 PDF
(org-latex-export-to-pdf)

;; 导出为 EPUB
(require 'ox-epub)
(org-epub-export-to-epub)
```

### 或使用 Pandoc 转换

```bash
# Org -> HTML
pandoc 学习的进化.org -o 学习的进化.html --standalone

# Org -> PDF (需要 LaTeX)
pandoc 学习的进化.org -o 学习的进化.pdf

# Org -> EPUB
pandoc 学习的进化.org -o 学习的进化.epub
```

## 🤝 参与贡献

本书是开源项目，欢迎提出建议和改进意见。

- 通过 GitHub Issues 提出问题或建议
- 提交 Pull Request 帮助完善内容
- 发现错误请帮忙指正

## 📄 许可证

本书采用 [知识共享署名-非商业性-相同方式共享 4.0 国际许可协议](https://creativecommons.org/licenses/by-nc-sa/4.0/)（CC BY-NC-SA 4.0）进行许可。

您可以：

- **分享** —— 在任何媒介或格式下复制和分发本作品
- ** remix ** —— 混合、转换和基于本作品进行创作

只要您：

- 给出适当的署名
- 不进行商业使用
- 以相同方式分享

---

*用学习来理解学习，用进化来理解进化。*