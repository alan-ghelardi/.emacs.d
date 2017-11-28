(defun my-web-mode-hook ()
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-markup-indent-offset 2))

(use-package web-mode
  :ensure t

  :config
  (add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.xml\\'" . web-mode))
  (add-hook 'web-mode-hook 'my-web-mode-hook))

(defun my-json-mode-hook ()
  (make-local-variable 'js-indent-level)
  (setq js-indent-level 2))

(use-package json-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))
  (add-to-list 'auto-mode-alist '("\\.json\\.base\\'" . json-mode))
  (add-hook 'json-mode-hook 'my-json-mode-hook))

(use-package restclient
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.request\\'" . restclient-mode)))

(provide 'init-web-developer-tools)
