;;;; 
;; Emacspeak settings.
;;;;

;; The location of emacspeak-setup.el file, located at the local emacspeak repository
;; cloned from https://github.com/tvraman/emacspeak. 
(defvar emacspeak-setup-path "~/code/emacspeak/lisp/emacspeak-setup.el")

;; Initial speech settings.
(defvar speech-language "pt")
(defvar speech-rate 310)
 
 ;; set up Emacspeak.
(load-file emacspeak-setup-path)

;; Set speech settings defined previously. 
(dtk-set-language speech-language)
(dtk-set-rate speech-rate)


;;;;
;; Packages.
;;

;; Define package repositories.
(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
'("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

  ;; The packages you want installed.
;; These packages can be installed with M-x package-install.
;; Add new packages to the list below:  
(defvar my-packages '(
  projectile
clojure-mode
  cider))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (cider clojure-mode projectile))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
