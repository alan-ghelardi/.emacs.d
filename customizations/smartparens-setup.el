;;;;
;; Smartparens set-up and configurations.
;;;;
(use-package smartparens
  :ensure t

  :bind (
  ("C-M-a" . sp-beginning-of-sexp)   
  ("C-M-E" . sp-end-of-sexp))
  
  :config
  (progn
    (show-smartparens-global-mode t)))

(add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode)
(add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)
