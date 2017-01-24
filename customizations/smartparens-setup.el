;;;;
;; Smartparens set-up and configurations.
;;;;
(use-package smartparens
  :ensure t

  :bind (
  ("C-M-a" . sp-beginning-of-sexp)   
  ("C-M-E" . sp-end-of-sexp)
  ("C-M-f" . sp-forward-sexp)
  ("C-M-b" . sp-backward-sexp)
  ("C-M-n" . sp-next-sexp)
  ("C-M-p" . sp-previous-sexp))
  
  :config
  (progn
    (show-smartparens-global-mode t)))

(add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode)
(add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)
