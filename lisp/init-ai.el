(use-package aider
  :ensure t

  :config
  (setq aider-args '("--model" "sonnet" "--no-auto-accept-architect"))
  ;; ;;
  ;; Optional: Set a key binding for the transient menu
  (global-set-key (kbd "C-c a") 'aider-transient-menu) ;; for wider screen
  ;; or use aider-transient-menu-2cols / aider-transient-menu-1col, for narrow screen
  (aider-magit-setup-transients)) ;; add aider magit function to magit menu

(provide 'init-ai)
