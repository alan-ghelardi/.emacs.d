
(defun my-dired-keybindings ()
  "Custom keybindings for dired-mode."
  (interactive)
  (local-set-key (kbd "<DEL>") `dired-up-directory))

(add-hook 'dired-mode-hook 'my-dired-keybindings t)

(setq dired-listing-switches "-lXGh --group-directories-first")

(provide 'init-dired)
