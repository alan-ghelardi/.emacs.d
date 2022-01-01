;;;;
;; Install and configure Clojure packages.
;;;;
(use-package cider
  :ensure t
  :init
  (setq cider-repl-display-help-banner nil))

(use-package clojure-mode
  :ensure t)

(use-package clj-refactor
  :ensure t
  :init(setq cljr-warn-on-eval nil))

(defun my-clojure-hook ()
  (clj-refactor-mode 1))

(add-hook 'clojure-mode-hook #'my-clojure-hook)

(provide 'init-clojure)
