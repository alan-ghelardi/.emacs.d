(use-package yasnippet
  :ensure t)

(yas-reload-all)

(add-hook 'prog-mode-hook #'yas-minor-mode)
