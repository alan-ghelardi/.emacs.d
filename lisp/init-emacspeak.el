;;;;
;; Emacspeak set-up and configurations.
;;;;

(defconst my-emacspeak-src-dir "~/src/emacspeak")

;; Set Espeak as the default speech engine.
(defconst my-emacspeak-speech-server "espeak")

;; I prefer to start the synthesizer in my mother language and switch to english when necessary.
(defconst my-emacspeak-speech-language "pt-br")

(defconst my-emacspeak-speech-rate 400)

(defconst my-emacspeak-sound-theme "3d/")

(add-to-list 'load-path my-emacspeak-src-dir)

(setq dtk-program my-emacspeak-speech-server)

(add-hook 'emacspeak-startup-hook
          (lambda ()
            (dtk-set-language my-emacspeak-speech-language)
            (dtk-set-rate my-emacspeak-speech-rate 1)
            (emacspeak-sounds-select-theme my-emacspeak-sound-theme)))

(add-hook 'prog-mode-hook (lambda ()
                            (setq emacspeak-audio-indentation nil)))

;; Start Emacspeak.
(load-file (concat my-emacspeak-src-dir "/lisp/emacspeak-setup.el"))

;(require 'emacspeak-muggles)

;; Inline speech support for some packages.

;; yaml-mode
(defadvice yaml-electric-backspace (around emacspeak pre act comp)
  "Speak character you're deleting."
  (cond
   ((ems-interactive-p)
    (dtk-tone 500 30 'force)
    (emacspeak-speak-this-char (preceding-char))
    ad-do-it)
   (t ad-do-it))
  ad-return-value)

(provide 'init-emacspeak)
