;;;;
;; Emacspeak set-up and configurations.
;;;;

(defconst emacspeak-src-dir "~/src/emacspeak")

;; Set Espeak as the default speech engine.
(defconst emacspeak-speech-server "espeak")

;; I prefer to start the synthesizer in my mother language and switch to english when necessary. 
(defconst emacspeak-speech-language "pt-br")

(defconst emacspeak-speech-rate 380)

(add-to-list 'load-path emacspeak-src-dir)

(setq dtk-program emacspeak-speech-server)

(add-hook 'emacspeak-startup-hook
          (lambda ()
            (dtk-set-language emacspeak-speech-language)
            (dtk-set-rate emacspeak-speech-rate 1)))

;; Start Emacspeak.
(load-file (concat emacspeak-src-dir "/lisp/emacspeak-setup.el"))

(provide 'init-emacspeak)
