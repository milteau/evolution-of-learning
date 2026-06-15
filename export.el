;;; 学习的进化 - 导出配置
;;; 将此文件与 org 文件放在同一目录，在 Emacs 中加载此文件后执行导出命令

(require 'ox-html)
(require 'ox-latex)
(require 'ox-epub)

;; 设置中文字体和导出选项
(setq org-latex-packages-alist
      '(("" "ctex" nil)))

;; HTML 导出设置
(setq org-html-doctype "html5")
(setq org-html-html5-fancy t)
(setq org-html-head-include-default-style nil)
(setq org-html-head
      "<style>
body { font-family: -apple-system, 'PingFang SC', 'Microsoft YaHei', sans-serif; max-width: 800px; margin: 0 auto; padding: 20px; }
blockquote { border-left: 3px solid #ccc; margin-left: 0; padding-left: 20px; color: #666; }
h1, h2, h3 { font-family: -apple-system, 'PingFang SC', 'Microsoft YaHei', sans-serif; }
.title { text-align: center; font-size: 2.5em; margin-bottom: 1em; }
.subtitle { text-align: center; color: #666; font-size: 1.2em; margin-bottom: 2em; }
code { background: #f5f5f5; padding: 2px 6px; border-radius: 3px; }
pre { background: #f5f5f5; padding: 15px; border-radius: 5px; overflow-x: auto; }
#table-of-contents { background: #f9f9f9; padding: 20px; border-radius: 10px; margin-bottom: 30px; }
#content { line-height: 1.8; }
</style>")

;; 导出 HTML
(defun export-html ()
  (interactive)
  (find-file "学习的进化.org")
  (org-html-export-to-html))

;; 导出 PDF
(defun export-pdf ()
  (interactive)
  (find-file "学习的进化.org")
  (org-latex-export-to-pdf))

;; 导出 EPUB
(defun export-epub ()
  (interactive)
  (find-file "学习的进化.org")
  (org-epub-export-to-epub))

;; 一次性导出全部格式
(defun export-all ()
  (interactive)
  (export-html)
  (export-pdf)
  (export-epub)
  (message "全部导出完成！"))

(message "导出配置已加载，执行 M-x export-html / export-pdf / export-epub / export-all")