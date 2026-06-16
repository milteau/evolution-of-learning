;;; 学习的进化 - 优化版导出配置
;;; 更好的阅读体验

(require 'ox-html)

;; HTML5 导出设置
(setq org-html-doctype "html5")
(setq org-html-html5-fancy t)
(setq org-html-coding-system 'utf-8)
(setq org-html-checkbox-type 'unicode)
(setq org-html-htmlize-output-type 'css)

;; 优化后的中文字体和阅读体验
(setq org-html-head
"<meta charset=\"UTF-8\">
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
<style>
/* ===== 基础样式 ===== */
body {
  font-family: -apple-system, BlinkMacSystemFont, \"PingFang SC\", \"Microsoft YaHei\", \"Helvetica Neue\", sans-serif;
  font-size: 17px;
  line-height: 1.85;
  color: #333;
  max-width: 960px;
  margin: 0 auto;
  padding: 40px 40px 80px 360px;
  background: #fafafa;
}

/* ===== 固定侧边目录 ===== */
#table-of-contents {
  position: fixed;
  left: 24px;
  top: 40px;
  width: 280px;
  height: fit-content;
  max-height: calc(100vh - 80px);
  overflow-y: auto;
  background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
  padding: 24px 28px;
  border-radius: 12px;
  border: 1px solid #e0e0e0;
  font-size: 0.9em;
}

#table-of-contents h2 {
  font-size: 1.2em;
  margin: 0 0 1em;
  padding: 0;
  border: none;
}

#table-of-contents ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

#table-of-contents li {
  margin: 0.3em 0;
}

/* ===== 主内容区 ===== */
#content {
  max-width: 720px;
}

/* ===== 标题样式 ===== */
h1 {
  font-size: 2.4em;
  font-weight: 700;
  text-align: center;
  margin: 0 0 0.5em;
  color: #1a1a1a;
  letter-spacing: -0.02em;
}

h2 {
  font-size: 1.6em;
  font-weight: 600;
  margin: 2.5em 0 0.8em;
  padding-bottom: 0.3em;
  border-bottom: 1px solid #eee;
  color: #222;
}

h3 {
  font-size: 1.25em;
  font-weight: 600;
  margin: 1.8em 0 0.6em;
  color: #333;
}

h4 {
  font-size: 1.1em;
  font-weight: 600;
  margin: 1.5em 0 0.5em;
  color: #444;
}

/* ===== 段落和文本 ===== */
p {
  margin: 1.2em 0;
}

.title {
  text-align: center;
  font-size: 2.2em;
  font-weight: 300;
  color: #666;
  margin-bottom: 2em;
}

.subtitle {
  text-align: center;
  font-size: 1.1em;
  color: #888;
  margin-bottom: 3em;
}

/* ===== 强调和引用 ===== */
strong {
  font-weight: 600;
  color: #222;
}

em {
  font-style: italic;
}

blockquote {
  margin: 1.5em 0;
  padding: 1em 1.5em;
  border-left: 4px solid #4a90d9;
  background: #f0f7ff;
  color: #555;
  font-size: 0.95em;
  line-height: 1.7;
}

blockquote p {
  margin: 0;
}

/* ===== 代码样式 ===== */
code {
  background: #f5f5f5;
  padding: 0.15em 0.4em;
  border-radius: 4px;
  font-family: \"SF Mono\", \"Fira Code\", \"Consolas\", monospace;
  font-size: 0.9em;
  color: #e05555;
}

pre {
  background: #282c34;
  color: #abb2bf;
  padding: 1.2em 1.5em;
  border-radius: 8px;
  overflow-x: auto;
  font-size: 0.9em;
  line-height: 1.6;
  margin: 1.5em 0;
}

pre code {
  background: none;
  padding: 0;
  color: inherit;
  font-size: 1em;
}

/* ===== 列表样式 ===== */
ul, ol {
  margin: 1em 0;
  padding-left: 1.5em;
}

li {
  margin: 0.4em 0;
  line-height: 1.7;
}

/* ===== 表格样式 ===== */
table {
  border-collapse: collapse;
  width: 100%;
  margin: 1.5em 0;
  font-size: 0.95em;
}

table th, table td {
  padding: 0.6em 1em;
  border: 1px solid #e0e0e0;
  text-align: left;
}

table th {
  background: #f5f5f5;
  font-weight: 600;
  color: #333;
}

table tr:nth-child(even) {
  background: #fafafa;
}

/* ===== 水平线和分割 ===== */
hr {
  border: none;
  border-top: 1px solid #eee;
  margin: 2.5em 0;
}

/* ===== 链接样式 ===== */
a {
  color: #4a90d9;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

/* ===== 图片样式：可点击放大 ===== */
.image-with-lightbox {
  cursor: zoom-in;
  max-width: 100%;
  height: auto;
  border-radius: 8px;
  transition: box-shadow 0.3s ease;
}

.image-with-lightbox:hover {
  box-shadow: 0 4px 20px rgba(0,0,0,0.15);
}

figure {
  margin: 2em 0;
  text-align: center;
}

figcaption {
  font-size: 0.9em;
  color: #666;
  margin-top: 0.5em;
}

/* ===== Lightbox 弹出层 ===== */
.lightbox-overlay {
  display: none;
  position: fixed;
  top: 0; left: 0;
  width: 100%; height: 100%;
  background: rgba(0,0,0,0.9);
  z-index: 10000;
  justify-content: center;
  align-items: center;
  cursor: zoom-out;
}

.lightbox-overlay.active {
  display: flex;
}

.lightbox-overlay img {
  max-width: 95vw;
  max-height: 95vh;
  object-fit: contain;
  box-shadow: 0 0 40px rgba(0,0,0,0.5);
  border-radius: 4px;
}

/* ===== 响应式适配 ===== */
@media (max-width: 900px) {
  body {
    padding: 20px 16px 60px 16px;
  }

  #table-of-contents {
    position: static;
    width: auto;
    max-height: none;
    margin: 0 0 2em;
  }

  #content {
    max-width: 100%;
  }

  h1 { font-size: 1.8em; }
  h2 { font-size: 1.4em; }
  h3 { font-size: 1.15em; }

  pre {
    padding: 1em;
    margin: 1em -16px;
    border-radius: 0;
  }
}
</style>
<script>
function openLightbox(el) {
  const overlay = document.createElement('div');
  overlay.className = 'lightbox-overlay active';
  overlay.innerHTML = '<img src=\"' + el.src + '\" alt=\"' + el.alt + '\">';
  overlay.onclick = function() {
    overlay.remove();
  };
  document.body.appendChild(overlay);
}
</script>")

;; 导出 HTML
(defun export-html ()
  (interactive)
  (find-file "学习的进化.org")
  (org-html-export-to-html))

(message "优化版导出配置已加载，执行 M-x export-html")