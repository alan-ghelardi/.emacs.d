
(defun my-magit-keybindings ()
  "Custom keybindings for Magit."
  (interactive "P")
  (global-set-key (kbd "C-x g") 'magit-status))

(use-package magit
  :ensure t
  :init
  (setq vc-handled-backends nil)
  :config
  (add-hook 'after-init-hook 'my-magit-keybindings))

(provide 'init-magit)
