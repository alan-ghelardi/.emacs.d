(use-package projectile
  :ensure t
  :config
  (setq projectile-switch-project-action 'projectile-dired)
  (projectile-mode 1)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(use-package flx-ido
  :ensure t)

(use-package aggressive-indent
  :ensure t
  :config
  (global-aggressive-indent-mode))

(use-package markdown-mode
  :ensure t)

(use-package yaml-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("dockerfile$" . yaml-mode)))

;; Clean whitespaces before saving buffers.

(add-hook 'before-save-hook 'whitespace-cleanup)

;; Don't activate eldoc when typping which is annoying for blind developers, since Emacspeak stops of reading the
;; code for announcing the eldoc's tips (maybe a amatter of taste).
(global-eldoc-mode -1)

;; Swap the search keybindings to include regex search
;; through the keystrokes C-s and C-r.
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; Use spaces instead of tabs for indentation.
(setq-default indent-tabs-mode nil)

;; When visiting a file, point goes to the same place
;; where it was left in the last visit.
(require 'saveplace)
(setq-default save-place t)
;; Keep track of saved places in ~/.emacs.d/places.
(setq save-place-file (concat user-emacs-directory "places"))

;; Keep backup files in the directory "backups".
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
                                               "backups"))))

(defun my-changelog-mode-hook ()
  (setq indent-tabs-mode nil))

(add-hook 'change-log-mode-hook 'my-changelog-mode-hook)

(provide 'init-editing)
