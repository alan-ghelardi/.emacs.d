(require 'package)

(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
'("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(defvar emacspeak-setup-path "~/code/emacspeak/lisp/emacspeak-setup.el")
(defvar speech-language "pt")
(defvar speech-rate 310)

(defvar my-packages '(
  better-defaults
  projectile
clojure-mode
  cider))

(load-file emacspeak-setup-path)
(dtk-set-language speech-language)
(dtk-set-rate speech-rate)

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))
