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
  '("gnu" . "http://elpa.gnu.org/packages/"))

(package-initialize)

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
(require 'init-editing)
(require 'init-smartparens)
(require 'init-smartparens-advice)
(require 'init-ui)
(require 'init-yasnippet)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (projectile paredit company cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
