;;; init-auctex.el --- Work with Auctex -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(maybe-require-package 'auctex)
(maybe-require-package 'auctex-latexmk)
(maybe-require-package 'latex-preview-pane)

(setq TeX-PDF-mode t)


;; make latexmk available via C-c C-c
;; Note: SyncTeX is setup via ~/.latexmkrc (see below)
(add-hook 'LaTeX-mode-hook (lambda ()
  (push
    '("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t
      :help "Run latexmk on file")
    TeX-command-list)))
(add-hook 'TeX-mode-hook '(lambda () (setq TeX-command-default "latexmk")))




(provide 'init-auctex)
;;; init-auctex.el ends here
