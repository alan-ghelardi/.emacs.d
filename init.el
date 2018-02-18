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
(require 'init-dired)
(require 'init-editing)
(require 'init-flycheck)
(require 'init-magit)
(require 'init-slack)
(require 'init-smartparens)
(require 'init-general-preferences)
(require 'init-yasnippet)
(require 'init-web-developer-tools)
