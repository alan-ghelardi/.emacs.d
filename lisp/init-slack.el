
(when (file-exists-p "~/.slackrc.el")

  (load-file "~/.slackrc.el")

  (use-package slack
    :ensure t
    :init
    (setq slack-buffer-emojify  t)
    (setq slack-prefer-current-team t)
    :config
    (slack-register-team
     :name my-slack-team
     :default t
     :client-id my-slack-client-id
     :client-secret my-slack-client-secret
     :token my-slack-token))

  (use-package alert
    :ensure t
    :init
    (setq alert-default-style 'notifications)))

(provide 'init-slack)
