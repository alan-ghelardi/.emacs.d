;;;;
;; This module defines general preferences to the Emacs appearance and behavior.
;;;;

;; Set Firefox as the default browser.
(setq browse-url-browser-function 'browse-url-firefox)

;; Always start in full screen mode and with the window maximized.
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Default width for buffers.
(setq-default fill-column 120)

;; Turn off the menu bar at the top of each frame.
(menu-bar-mode -1)

;; Show line numbers
(global-linum-mode)

;; Remove the graphical toolbar.
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; Don't show native OS scroll bars for buffers.
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

  ;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; These settings relate to how emacs interacts with your operating system
(setq ;; makes killing/yanking interact with the clipboard
      x-select-enable-clipboard t

      ;; I'm actually not sure what this does but it's recommended?
      x-select-enable-primary t

      ;; Save clipboard strings into kill ring before replacing them.
      ;; When one selects something in another program to paste it into Emacs,
      ;; but kills something in Emacs before actually pasting it,
      ;; this selection is gone unless this variable is non-nil
      save-interprogram-paste-before-kill t

      ;; Shows all options when running apropos. For more info,
      ;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Apropos.html
      apropos-do-all t)

;; full path in title bar
(setq-default frame-title-format "%b (%f)")

(provide 'init-general-preferences)
