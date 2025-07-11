(defun golang-disable-emacspeak-message-echo ()
  "Disable emacspeak message echo on go-mode."
;  (setq-local emacspeak-speak-messages nil)
  (setq-local lsp-eldoc-enable-hover nil))

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :hook (go-mode . lsp-deferred)
  (js-mode . lsp-deferred)
  (yaml-mode . lsp-deferred)
  (go-mode . golang-disable-emacspeak-message-echo)
  )

(use-package dap-mode
  :ensure t)

(require 'dap-dlv-go)

;; Set up before-save hooks to format buffer and add/delete imports.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

(provide 'init-lsp)
