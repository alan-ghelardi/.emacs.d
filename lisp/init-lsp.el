(defun golang-disable-emacspeak-message-echo ()
  "Disable emacspeak message echo on go-mode."
  (setq-local emacspeak-speak-messages nil))

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :hook (go-mode . lsp-deferred)
  (go-mode . golang-disable-emacspeak-message-echo))

;; Set up before-save hooks to format buffer and add/delete imports.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

(provide 'init-lsp)
