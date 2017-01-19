;;;;
;;
;;;;

;; Add the customizations directory to our load path.
(add-to-list 'load-path "~/.emacs.d/customizations")

;; Load Emacspeak immediately. 
(load "emacspeak.el")

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
(load "clojure-support.el")
(load "shell-integration.el")
(load "smartparens-setup.el")
(load "ui.el")

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
