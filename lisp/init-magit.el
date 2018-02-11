(defun my-magit-keybindings ()
  "Custom keybindings for Magit."
  (interactive "P")
  (global-set-key (kbd "C-x g") 'magit-status))

(use-package magit
  :ensure t
  :init
  (setq vc-handled-backends nil)
  :config
  (setq magit-repository-directories '("~/dev/nu" "~/dev/projects"))
  (add-hook 'after-init-hook 'my-magit-keybindings))

(provide 'init-magit)
