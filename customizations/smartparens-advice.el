;;;;
;; Add advice forms to Smart Parens since Emacspeak doesn't offer out-of-box support for this package.
;; The advices below were simply copied from emacspeak-advice.el and adapted to work properly with Smart parens.  
;;;;

(defadvice sp-backward-delete-char (around emacspeak pre act comp)
     "Speak character you're deleting."
     (cond
      ((ems-interactive-p)
       (dtk-tone 500 30 'force)
       (emacspeak-speak-this-char (preceding-char))
       ad-do-it)
      (t ad-do-it))
     ad-return-value)

(defadvice sp-forward-delete-char (around emacspeak pre act comp)
     "Speak character you're deleting."
     (cond
      ((ems-interactive-p)
       (dtk-tone 500 30 'force)
       (emacspeak-speak-char t)
       ad-do-it)
      (t ad-do-it))
     ad-return-value)

(defadvice sp-kill-word (before emacspeak pre act comp)
  "Speak word before killing it."
  (when (ems-interactive-p)
    (save-excursion
      (skip-syntax-forward " ")
      (when dtk-stop-immediately (dtk-stop))
      (let ((dtk-stop-immediately nil))
        (dtk-tone 500 30)
        (emacspeak-speak-word 1)))))

(defadvice sp-kill-hybrid-sexp (before emacspeak pre act comp)
  "Speak sexp before killing it. "
  (when (ems-interactive-p)
    (emacspeak-auditory-icon 'delete-object)
    (when dtk-stop-immediately (dtk-stop))
    (let ((dtk-stop-immediately nil))
      (dtk-tone 500 30)
      (emacspeak-speak-sexp))))

(loop
 for f in
 '(sp-beginning-of-sexp sp-end-of-sexp)
 do
 (eval
  `(defadvice ,f (around emacspeak pre act comp)
     "Speak sexp after moving."
     (if (ems-interactive-p)
         (let ((start (point))
               (end (line-end-position)))
           ad-do-it
           (emacspeak-auditory-icon 'paragraph)
           (cond
            ((>= end (point))
             (emacspeak-speak-region start (point)))
            (t (emacspeak-speak-line))))
       ad-do-it)
     ad-return-value)))
