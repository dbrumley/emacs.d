;;; init-markdown.el --- Markdown support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'markdown-mode)
  (add-auto-mode 'markdown-mode "\\.md\\.html\\'")
  (with-eval-after-load 'whitespace-cleanup-mode
    (add-to-list 'whitespace-cleanup-mode-ignore-modes 'markdown-mode)))

(when (maybe-require-package 'grip-mode)
  (add-hook 'markdown-mode-hook #'grip-mode)
  (add-hook 'org-mode-hook #'grip-mode))


(provide 'init-markdown)
;;; init-markdown.el ends here
