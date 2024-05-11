;;;;
;;
;;;;

;; Add the lisp directory to our load path.
(add-to-list 'load-path "~/.emacs.d/lisp")

;; Start Emacspeak as soon as possible.
(require 'init-emacspeak)

;;;;
;; Packages.
;;

;; Define package repositories.
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/"))

(setq package-archive-priorities
      `(("melpa" . 20)
        ("gnu" . 10)
        ("melpa-stable" . 0)))

;; Install use-package if necessary.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

;;;;
;; Customizations.
;;;;
(require 'init-clojure)
(require 'init-company)
(require 'init-dired)
(require 'init-editing)
(require 'init-flycheck)
(require 'init-golang)
(require 'init-lsp)
(require 'init-magit)
(require 'init-smartparens)
(require 'init-general-preferences)
(require 'init-yasnippet)
(require 'init-web-developer-tools)
(require 'init-accessibility-improvements)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(dap-mode yasnippet-snippets yaml-mode web-mode smartparens restclient projectile magit lsp-mode json-mode gorepl-mode go-mode flycheck flx-ido company clj-refactor aggressive-indent))
 '(safe-local-variable-values '((emidje-inject-nrepl-middleware-at-jack-in))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
