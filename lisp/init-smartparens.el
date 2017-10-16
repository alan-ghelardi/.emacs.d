;;;;
;; Smartparens set-up and configurations.
;;;;
(use-package smartparens
  :ensure t

  :init
  (setq sp-hybrid-kill-excessive-whitespace t)

  :bind (
         ("C-k" . sp-kill-sexp)
         ("C-M-k" . sp-kill-hybrid-sexp)
         ("C-M-a" . sp-beginning-of-sexp)
         ("C-M-E" . sp-end-of-sexp)
         ("C-M-f" . sp-forward-sexp)
         ("C-M-b" . sp-backward-sexp)
         ("C-M-n" . sp-next-sexp)
         ("C-M-p" . sp-previous-sexp)
         ("C-M-;" . sp-add-to-previous-sexp))

  :config
  (progn
    (show-smartparens-global-mode t)))

(require 'smartparens-config)

(add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode)
(add-hook 'cider-repl-mode-hook 'turn-on-smartparens-strict-mode)
(add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)

(provide 'init-smartparens)
