(use-package yasnippet
  :ensure t

  :config
  (yas-reload-all)
  (add-hook 'prog-mode-hook #'yas-minor-mode))