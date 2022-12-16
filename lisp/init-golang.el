;;; init-golang.el --- Markdown support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'go-mode)
      (add-hook 'before-save-hook #'gofmt-before-save))

(provide 'init-golang)
