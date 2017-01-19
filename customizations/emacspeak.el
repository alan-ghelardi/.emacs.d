;;;;
;; Emacspeak set-up and configurations.
;;;;

;; Set up Emacspeak.
(load-file "~/code/emacspeak/lisp/emacspeak-setup.el")

;; Set Espeak as the default speech engine.
(setq dtk-program "espeak")

;; I prefer to start the synthesizer in my mother language and switch to english when necessary. 
(dtk-set-language "pt-br")

(dtk-set-rate 380)
