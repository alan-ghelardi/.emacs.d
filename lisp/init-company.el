;; Company mode is a standard completion package that works well with lsp-mode.

(use-package company
  :ensure t
  :init
  ;; Optionally enable completion-as-you-type behavior.
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 3)
  :config
  (define-key company-mode-map (kbd "C-,") 'company-complete)
  :hook (prog-mode . company-mode)
  (shell-mode . company-mode))

(provide 'init-company)
