(use-package go-mode
  :ensure t)

(use-package gorepl-mode
  :ensure t
  :hook
  (go-mode . #'gorepl-mode))

(provide 'init-golang)
