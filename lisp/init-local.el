; Eliminate DLL errors during load
(when (eq system-type 'darwin) (customize-set-variable 'native-comp-driver-options '("-Wl,-w")))

; Install virtualenvwrapper so workon works.
(require-package 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(venv-initialize-eshell)
(setq venv-location (getenv "VIRTUALENVWRAPPER_HOOK_DIR"))

(provide 'init-local)
